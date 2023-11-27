import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/colors.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool isObscure;
  final IconData icon;
  const TextInputField(
      {super.key,
      required this.controller,
      required this.labelText,
      required this.isObscure,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: Icon(icon),
          labelStyle: TextStyle(
            fontSize: 20,
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: borderColor,
          )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: borderColor))),
      obscureText: isObscure,
    );
  }
}
