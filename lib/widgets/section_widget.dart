import 'package:flutter/material.dart';
import 'package:task3_ui/helpers/constants.dart';
import 'package:task3_ui/screens/services_scrren.dart';

class SectionWidget extends StatelessWidget {
  String title;
  void Function()? on_tap;
  SectionWidget({super.key, required this.title, this.on_tap});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: on_tap,

          child: Text(
            'ALL',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppConstants.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}