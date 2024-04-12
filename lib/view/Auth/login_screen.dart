import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ripplex/controller/auth_provider.dart';
import 'package:ripplex/helper/colors.dart';
import 'package:ripplex/view/Auth/register_screen.dart';
import 'package:ripplex/view/main_screen/bottom_nav.dart';
import 'package:ripplex/widgets/button.dart';
import 'package:ripplex/widgets/textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
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
              return Column(
                children: [
                  SizedBox(height: size.height / 6),
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
                    controller: provider.loginEmailController,
                    hintText: "email...",
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextFieldWidget(
                    controller: provider.loginPasswordController,
                    hintText: "password...",
                    obscureText: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Doesn't have an account?",
                          style: TextStyle(color: cWhiteColor70,fontSize: 13),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => const RegisterScreen(),
                            ));
                          },
                          child: Text(
                            "Register now",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: cGreyColor300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height / 15),
                  ButtonWidget(
                    onPress: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const BottomNavScreen(),
                      ));
                    },
                    text: "Login",
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
