import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  // login controller
  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();

  // register controller
  TextEditingController registerEmailController = TextEditingController();
  TextEditingController registerPasswordController = TextEditingController();
  TextEditingController registerUsernameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  Future<void> registerUser() async {
  final dio = Dio();
  const String apiUrl = 'http://socialmedia-api-v1.onrender.com/auth/register';

  try {
    final response = await dio.post(apiUrl, data: {
      'email': registerEmailController.text,
      'password': registerPasswordController.text,
      'username': registerUsernameController.text,
    });
    if (response.statusCode == 200) {
      log("User registered successfully");
      log("${response.data}");

      // Extract the token from the server response
      final String token = response.data['token'];

      // Store the token in SharedPreferences
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('token', token);

      log('Token: $token');
    } else {
      log('Registration failed ${response.statusCode}');
      log('Response body ${response.data}');
    }
  } catch (e) {
    log('Error: $e');
  }
}
}