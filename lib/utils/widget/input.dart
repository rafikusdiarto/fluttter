import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final bool hint;
  final String hintText;
  final String label;
  final bool obsecureText;
  final controller;

  const InputField(
      {super.key,
      required this.hint,
      required this.hintText,
      required this.label,
      required this.obsecureText,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
      child: TextField(
        obscureText: obsecureText,
        controller: controller,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(7.0)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(7),
                borderSide: BorderSide(color: Colors.white70)),
            labelText: label,
            labelStyle: TextStyle(color: Colors.grey[400]),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[400])),
      ),
    );
  }
}
