import 'package:flutter/material.dart';
import 'package:task3_ui/helpers/constants.dart';
import 'package:task3_ui/helpers/roues.dart';
import 'package:task3_ui/widgets/CustomTextField.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? emailUser = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formKey,
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome in Our App (Login IN)',
                style: AppConstants.primary_numbers_text_style,
              ),
              const Text(
                'Sign in to access your account',
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(height: 40),

              CustomTextFeild(
                hint: 'Enter your Email',
                icon: Icons.email,
                input_type: TextInputType.emailAddress,
                custom_validator: (email) {
                  if (email == null || email.isEmpty) {
                    return "Enter valid email";
                  }
                  if (!email.contains('@')) return "Remember @";
                  if (!email.contains('.com')) return "Remember .com";
                  emailUser = email; 
                  return null;
                },
              ),
              CustomTextFeild(
                hint: 'Password',
                icon: Icons.lock_outline_rounded,
                isPassword: true,
                custom_validator: (password) {
                  if (password == null || password.isEmpty) {
                    return "Enter valid password";
                  }
                  if (password.length < 5) {
                    return "Password must be more than 5 characters";
                  }
                  if (!password.contains(RegExp(r'[!@#$%^&*]'))) {
                    return 'Password must contain a special character';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => _login(context),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: const Size(double.infinity, 15),
                  backgroundColor: AppConstants.primaryColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: const Text('Login',
                    style: TextStyle(color: Colors.white)),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        AppRoutes.signup,
                      );
                    },
                    child: const Text(' Sign up'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
_login(BuildContext context) {
  if (_formKey.currentState!.validate()) {
    Navigator.pushNamed(
      context,
      AppRoutes.dash, 
      arguments: emailUser,
    );
  }
}


}
