import 'package:flutter/material.dart';

class AppConstants {
  static const Color primaryColor = Color(0xffDF3222);
  //  Color(0xff0601B4);

  static const Color light_primary_color = Color(0xffFDEDEB);
  //  Color.fromARGB(94, 132, 128, 238);
  //
  static const TextStyle primary_numbers_text_style = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: primaryColor,
  );
  static const double height = 10;

  // static Image menuIcon = Image.asset('icons/menu.png', height: 20, width: 20);
  static Icon addIcon = Icon(Icons.add, color: Colors.white, size: 16);
  static const String defaultImage = 'profile.png';
}

void showMessgae(BuildContext current_context, String message) {
  ScaffoldMessenger.of(current_context).showSnackBar(
    SnackBar(
      content: Text(message),
      backgroundColor: AppConstants.primaryColor,
    ),
  );
}