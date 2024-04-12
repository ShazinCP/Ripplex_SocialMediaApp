import 'package:flutter/material.dart';
import 'package:ripplex/helper/colors.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback onPress;
  final String text;
  
  const ButtonWidget({
    super.key,
    required this.onPress,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: cWhiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 70,
        ),
        elevation: 5,
        shadowColor: cBlackColor,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: cPurpleColor900,
        ),
      ),
    );
  }
}
