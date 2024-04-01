import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ripplex/controller/auth_provider.dart';
import 'package:ripplex/view/Auth/login_screen.dart';
import 'package:ripplex/widgets/button.dart';
import 'package:ripplex/widgets/textfield.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // Remove the backgroundColor property
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 74, 20, 140),
                Colors.blue,
                Color.fromARGB(255, 74, 20, 140),
              ],
            ),
          ),
          child: Consumer<AuthProvider>(
            builder: (context, provider, child) {
              return Column(
                children: [
                  SizedBox(height: size.height / 7),
                  Center(
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset(
                        "assets/app_logo_image2.png",
                      ),
                    ),
                  ),
                  SizedBox(height: size.height / 19),
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
                    controller: provider.registerEmailController,
                    hintText: "email...",
                    obscureText: false,
                  ),
                  TextFieldWidget(
                    controller: provider.registerPasswordController,
                    hintText: "password...",
                    obscureText: true,
                  ),
                  TextFieldWidget(
                    controller: provider.confirmPasswordController,
                    hintText: "confirm password...",
                    obscureText: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            'Login...?',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height / 15),
                  ButtonWidget(
                      onPress: () {
                        // Navigator.of(context).pushReplacement(MaterialPageRoute(
                        //   builder: (context) => LoginScreen(),
                        // ));
                      },
                      text: "Register"),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
