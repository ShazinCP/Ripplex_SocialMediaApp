import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatelessWidget {
  String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final FocusNode? focusNode;

  TextFieldWidget({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 1.5,
              blurRadius: 4,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: TextField(
          obscureText: obscureText,
          controller: controller,
          focusNode: focusNode,
          decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.white,
              )),
              fillColor: Colors.white,
              filled: true,
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.grey)),
        ),
      ),
    );
  }
}
