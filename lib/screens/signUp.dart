import 'package:flutter/material.dart';
import 'package:task3_ui/helpers/constants.dart';
import 'package:task3_ui/helpers/roues.dart';
import 'package:task3_ui/screens/login_screen.dart';
import 'package:task3_ui/screens/profile_dash.dart';
import 'package:task3_ui/widgets/CustomTextField.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  String? current_pass = "";
  String? emailUser = "";


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: _formKey,
            child: Column(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Welcom in Our App (Sign UP)',
                  style: AppConstants.primary_numbers_text_style,
                ),
                Text(
                  'sign Up to access your account',
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 30),

                CustomTextFeild(
                  hint: 'userName',
                  icon: Icons.person,
                  input_type: TextInputType.name,
                  custom_validator: (username) {
                    if (username == null || username.isEmpty)
                      return "Enter valid username";
                    if (username.length < 3) return "username must be > 3";
                    return null;
                  },
                ),
                CustomTextFeild(
                  hint: 'age',
                  icon: Icons.elderly,
                  input_type: TextInputType.number,
                  custom_validator: (age) {
                    if (age == null || age.isEmpty) return "not valid age";
                    return null;
                  },
                ),
                CustomTextFeild(
                  hint: 'Enter your phone',
                  icon: Icons.numbers,
                  input_type: TextInputType.phone,
                  custom_validator: (phone) {
                    if (phone == null || phone.isEmpty)
                      return "not valid phone number";
                    if (!phone.startsWith('+')) return "Remebmer +";
                    return null;
                  },
                ),
                CustomTextFeild(
                  hint: 'Enter your Email',
                  icon: Icons.email,
                  input_type: TextInputType.emailAddress,
                  custom_validator: (email) {
                    emailUser = email;
                    if (email == null || email.isEmpty)
                      return "Enter valid email";
                    if (!email.contains('@')) return "Remebmer @";
                    if (!email.contains('.com')) return "Remebmer .com";
                    return null;
                  },
                ),
                CustomTextFeild(
                  hint: 'password',
                  icon: Icons.lock_outline_rounded,
                  isPassword: true,
                  custom_validator: (password) {
                    current_pass = password;

                    print('current password in password feild : $current_pass');
                    if (password == null || password.isEmpty)
                      return "Enter valid password";
                    if (password.length < 5)
                      return "password more than 5 digits";
                    if (!password.contains(RegExp(r'[!@#$%^&*]')))
                      return 'should has special char.';
                    return null;
                  },
                ),
                CustomTextFeild(
                  hint: 'confirm password',
                  icon: Icons.lock_outline_rounded,
                  isPassword: true,
                  custom_validator: (confirmPass) {
                    print(
                      'current password in confirm-password field : $current_pass',
                    );
                    if (confirmPass == null || confirmPass.isEmpty)
                      return "Enter valid password";
                    if (confirmPass != current_pass) {
                      return "must equal the passord";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => _signUp(context),
                  child: Text('Sign up', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(double.infinity, 15),
                    backgroundColor: AppConstants.primaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('has an Account'),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          AppRoutes.login,
                          // MaterialPageRoute(
                          //   builder: (context) {
                          //     return LoginScreen();
                          //   },
                          // ),
                        );
                      },
                      child: Text(' Login'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _signUp(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.reset();
      Navigator.pushNamed(context, AppRoutes.dash, arguments: emailUser);
    }
  }
}

//emailUser!
