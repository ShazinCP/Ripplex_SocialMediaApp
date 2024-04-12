import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ripplex/controller/auth_provider.dart';
import 'package:ripplex/helper/colors.dart';
import 'package:ripplex/view/Auth/login_screen.dart';
import 'package:ripplex/widgets/button.dart';
import 'package:ripplex/widgets/textfield.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                cPurpleARGBcolor,
                cBlueColor,
                cPurpleARGBcolor,
              ],
            ),
          ),
          child: Consumer<AuthProvider>(
            builder: (context, provider, child) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: size.height / 9),
                    Center(
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          "assets/app_logo_image2.png",
                        ),
                      ),
                    ),
                    SizedBox(height: size.height / 28),
                    const Text(
                      "RIPPLEX",
                      style: TextStyle(
                        color: cWhiteColor,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 7,
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextFieldWidget(
                      controller: provider.registerUsernameController,
                      hintText: "username...",
                      obscureText: false,
                      keyboardType: TextInputType.name,
                    ),
                    TextFieldWidget(
                      controller: provider.registerEmailController,
                      hintText: "email...",
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    TextFieldWidget(
                      controller: provider.registerPasswordController,
                      hintText: "password...",
                      obscureText: true,
                    ),
                    // TextFieldWidget(
                    //   controller: provider.confirmPasswordController,
                    //   hintText: "Confirm password...",
                    //   obscureText: true,
                    // ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextStyle(
                                  color: cWhiteColor70,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => const LoginScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    color: cGreyColor300,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height / 30),
                    ButtonWidget(
                      onPress: () {
                        provider.registerUser();
                        // Navigator.of(context).pushReplacement(MaterialPageRoute(
                        //   builder: (context) => LoginScreen(),
                        // ));
                      },
                      text: "Register",
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
