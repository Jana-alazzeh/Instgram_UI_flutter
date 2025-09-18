
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color primaryColor = Colors.blue;
    Color textColor = Colors.white;
    Color secondaryTextColor = Colors.grey[400]!;
     Color backgroundColor = Colors.black;
     Color inputFieldColor = Colors.grey[850]!;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                'Instagram',
                style: TextStyle(
                  fontFamily: 'Billabong',
                  fontSize: 60,
                  color: textColor,
                ),
              ),
              const SizedBox(height: 40),


              TextField(
                style: TextStyle(color: textColor),
                decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle: TextStyle(color: secondaryTextColor),
                  filled: true,
                  fillColor: inputFieldColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),


              TextField(
                style: TextStyle(color: textColor),
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: secondaryTextColor),
                  filled: true,
                  fillColor: inputFieldColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),


              TextField(
                style: TextStyle(color: textColor),
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: secondaryTextColor),
                  filled: true,
                  fillColor: inputFieldColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 24),


              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),


              Row(
                children: [
                  Expanded(child: Divider(color: secondaryTextColor)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text('OR', style: TextStyle(color: secondaryTextColor)),
                  ),
                  Expanded(child: Divider(color: secondaryTextColor)),
                ],
              ),
              const SizedBox(height: 20),

              TextButton(
                onPressed: () {

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Log in with Facebook',
                      style: TextStyle(color: primaryColor, fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Spacer(),

              // Divider and 'Have an account?' section at the bottom
              Divider(color: secondaryTextColor.withOpacity(0.5), height: 1),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Have an account?",
                      style: TextStyle(color: secondaryTextColor, fontSize: 14),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Log in.',
                        style: TextStyle(color: primaryColor, fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}