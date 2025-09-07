import 'package:flutter/material.dart';

class FeedbackWidget extends StatelessWidget {
  AssetImage background_img;
  String profile_img;
  String feedback_text;
  FeedbackWidget({
    Key? key,
    required this.background_img,
    required this.profile_img,
    required this.feedback_text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.centerEnd,
      children: [
        Container(
          width: 200,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(fit: BoxFit.cover, image: background_img),
          ),
        ),
        Positioned(
          left: 100,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: 230,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(231, 158, 158, 158),
                  offset: Offset(0, 3),
                  blurRadius: 6,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 12,
              children: [
                Image.asset('icons/$profile_img', width: 35, height: 35),

                Expanded(
                  child: Text(
                    feedback_text,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}