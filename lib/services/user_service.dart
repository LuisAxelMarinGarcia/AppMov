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

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
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
    this.category,
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
  static const String baseUrl = 'http://13.90.148.172:8081/expense/';

  static Future<List<Expense>> getExpenses() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String userId = prefs.getString('userId') ?? '';
    if (userId.isEmpty) {
      throw Exception('User ID not found.');
    }

    var url = Uri.parse(baseUrl + userId);
    var response = await http.get(url);

    if (response.statusCode == 200 || response.statusCode == 201) {
      List<dynamic> expensesData = json.decode(response.body)['data'];
      return expensesData.map((expenseData) => Expense.fromJson(expenseData)).toList();
    } else {
      throw Exception('Failed to load expenses. Status code: ${response.statusCode}');
    }
  }

  static Future<void> deleteExpense(String expenseId) async {
    var url = Uri.parse(baseUrl + expenseId);
    var response = await http.delete(url);

    if (response.statusCode != 200) {
      throw Exception('Failed to delete expense. Status code: ${response.statusCode}');
    }
  }

  static Future<void> updateExpense(String expenseId, double mount, String category, String description, String date) async {
    var url = Uri.parse(baseUrl + expenseId);
    var response = await http.put(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'mount': mount,
        'category': category,
        'description': description,
        'date': date,
      }),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to update expense. Status code: ${response.statusCode}');
    }
  }
}
