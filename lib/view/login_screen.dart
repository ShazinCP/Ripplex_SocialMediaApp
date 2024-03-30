import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ripplex/controller/auth_provider.dart';
import 'package:ripplex/widgets/textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: SingleChildScrollView(
        child: Consumer<AuthProvider>(
          builder: (context, provider, child) {
            return Column(
              children: [
                const SizedBox(height: 50),
                Center(
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      "assets/app_logo_image2.png",
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "RIPPLEX",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      // letterSpacing: 7,
                    ),
                  ),
                
                const SizedBox(height: 30),
                TextFieldWidget(
                  controller: provider.emailController,
                  hintText: "email...",
                  obscureText: false,
                ),
                TextFieldWidget(
                  controller: provider.passwordController,
                  hintText: "password...",
                  obscureText: true,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
