import 'package:flutter/material.dart';
import 'package:task3_ui/helpers/roues.dart';
import 'package:task3_ui/screens/login_screen.dart';
import 'package:task3_ui/screens/signUp.dart';
import 'package:task3_ui/screens/profile_dash.dart';
import 'package:task3_ui/screens/services_scrren.dart';
import 'package:task3_ui/screens/houses_screen.dart';
import 'package:task3_ui/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: AppRoutes.splash,
      routes: {
        AppRoutes.splash: (context) => const SplashScreen(),
        AppRoutes.login: (context) => LoginScreen(),
        AppRoutes.signup: (context) => SignUp(),
        AppRoutes.dash: (context) => ProfileDashBoard(),
        AppRoutes.services: (context) => ServicesScreen(),
        AppRoutes.houses: (context) => HousesScreen(),
      },
    );
  }
}
