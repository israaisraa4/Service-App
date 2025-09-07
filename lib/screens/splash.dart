import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task3_ui/screens/profile_dash.dart';
import 'package:task3_ui/screens/login_screen.dart';
import 'package:task3_ui/widgets/service_widget.dart';
import 'package:task3_ui/helpers/constants.dart';
import 'package:task3_ui/helpers/roues.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppConstants.light_primary_color,
              AppConstants.primaryColor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset("icons/${AppConstants.defaultImage}", height: 150),
            const SizedBox(height: 30),
            const Text(
              "Welcome to Smart Houses",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppConstants.height),
            const Text(
              "Find your dream home easily and quickly",
              style: TextStyle(fontSize: 14, color: Colors.white70),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 60),

            ElevatedButton(
              onPressed: () {
              //  Navigator.pushReplacementNamed(context, AppRoutes.login);
                Navigator.of(context).pushReplacement(
                  CupertinoPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: AppConstants.primaryColor,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                "Get Started",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),

              ),
            ),
          ],
        ),
      ),
    );
  }
}