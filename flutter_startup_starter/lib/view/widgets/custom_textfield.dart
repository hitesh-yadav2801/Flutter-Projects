import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final bool obscureText;
  final String hintText;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onDatePickerPressed;

  const CustomTextField({
    Key? key,
    this.obscureText = false,
    required this.hintText,
    this.onChanged,
    this.onDatePickerPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey[500]),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 12.0,
        ),
        suffixIcon: onDatePickerPressed != null
          ? IconButton(
            onPressed: onDatePickerPressed,
            icon: Icon(Icons.calendar_month_outlined),
          )
          : null,
      ),
    );
  }
}
