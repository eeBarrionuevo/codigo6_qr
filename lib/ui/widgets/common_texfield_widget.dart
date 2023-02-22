import 'package:flutter/material.dart';

class CommonTextFieldWidget extends StatelessWidget {
  String hintText;

  CommonTextFieldWidget({
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(0.12),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.white54,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14.0,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
