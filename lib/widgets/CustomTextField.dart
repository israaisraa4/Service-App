import 'package:flutter/material.dart';
import 'package:task3_ui/helpers/constants.dart';

class CustomTextFeild extends StatelessWidget {
  final String hint;
  final IconData icon;
  final bool isPassword;
  final String? Function(String?)? custom_validator;
  final TextInputType input_type;
  const CustomTextFeild({
    super.key,
    required this.hint,
    required this.icon,
    this.input_type = TextInputType.text,

    this.isPassword = false,
    this.custom_validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: input_type,
      validator: custom_validator,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(fontSize: 12),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.lightBlue),
          // AppConstants.primaryColorvzx
        ),
        filled: true,

        fillColor: Color.fromARGB(175, 238, 235, 235),
        suffixIconColor: Colors.grey,
        suffixIcon: Icon(icon),
      ),
    );
  }
}