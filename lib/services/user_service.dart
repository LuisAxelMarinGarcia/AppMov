    import 'package:flutter/material.dart';
    import 'package:http/http.dart' as http;
    import 'dart:convert';
    import 'package:shared_preferences/shared_preferences.dart';

    class User {
      final String id;
      final String email;

      User({required this.id, required this.email});

      factory User.fromJson(Map<String, dynamic> json) {
        var data = json['data'] as Map<String, dynamic>;
        return User(
          id: data['id'] as String,
          email: data['email'] as String? ?? 'Correo no disponible',
        );
      }
    }



    class UserService {
      static Future<User> createUser(String email, String password) async {
        var url = Uri.parse('http://13.90.148.172:8081/user');
        var response = await http.post(
          url,
          headers: {'Content-Type': 'application/json'},
          body: json.encode({'email': email, 'password': password}),
        );

        if (response.statusCode == 200) {
          var data = json.decode(response.body);
          User newUser = User.fromJson(data);

          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString('userId', newUser.id);

          return newUser;
        } else {
          throw Exception('Failed to create user. Status code: ${response.statusCode}');
        }
      }

      static Future<User> getUser(String userId) async {
        var url = Uri.parse('http://13.90.148.172:8081/user/$userId');
        var response = await http.get(url);

        print('Respuesta del servidor: ${response.body}');

        if (response.statusCode == 200) {
          var data = json.decode(response.body);
          print('Email del usuario recibido: ${data['email']}');
          return User.fromJson(data);
        } else {
          throw Exception('Failed to load user. Status code: ${response.statusCode}');
        }
      }


      static Future<void> loginUser(String email, String password) async {
        var url = Uri.parse('http://13.90.148.172:8081/user/login');
        var response = await http.post(
          url,
          headers: {'Content-Type': 'application/json'},
          body: json.encode({'email': email, 'password': password}),
        );

        if (response.statusCode == 200) {
          var data = json.decode(response.body);
          User user = User.fromJson(data);

          SharedPreferences prefs = await SharedPreferences.getInstance();
          await prefs.setString('userId', user.id);
        } else {
          throw Exception('Failed to login user. Status code: ${response.statusCode}');
        }
      }
    }

    class Expense {
      final String id;
      final String? description;
      final double? mount;
      final String? date;
      final String? category;
      final String userId;

      Expense({
        required this.id,
        this.description,
        this.mount,
        this.date,
        this.category,  // Agregado manejo como opcional
        required this.userId,
      });

      factory Expense.fromJson(Map<String, dynamic> json) {
        return Expense(
          id: json['id'] ?? 'Unknown ID',
          description: json['description'] as String?,
          mount: (json['mount'] as num?)?.toDouble(),
          date: json['date'] as String?,
          category: json['category'] as String?,
          userId: json['userId'] ?? 'Unknown User ID',
        );
      }
    }

    class ExpenseService {
      static Future<List<Expense>> getExpenses() async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String userId = prefs.getString('userId') ?? '';
        if (userId.isEmpty) {
          print('User ID is not found in shared preferences.');
          throw Exception('User ID not found.');
        }

        var url = Uri.parse('http://13.90.148.172:8081/expense/$userId');
        var response = await http.get(url);

        print('Making a GET request to: $url');
        print('Status Code: ${response.statusCode}');
        print('Response Body: ${response.body}');

        if (response.statusCode == 200 || response.statusCode == 201) {
          try {
            List<dynamic> expensesData = json.decode(response.body)['data'];
            List<Expense> expenses = expensesData.map((expenseData) => Expense.fromJson(expenseData)).toList();
            print('Loaded expenses: $expenses');
            return expenses;
          } catch (e) {
            print('Error parsing expenses: $e');
            throw Exception('Error parsing expenses.');
          }
        } else {
          print('Failed to load expenses. Error Response: ${response.body}');
          throw Exception('Failed to load expenses. Status code: ${response.statusCode}');
        }
      }
    }
