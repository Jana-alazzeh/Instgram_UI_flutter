import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Color primaryColor = Colors.blue;
     Color textColor = Colors.white;
    Color secondaryTextColor = Colors.grey[400] ?? Colors.grey;
    Color backgroundColor = Colors.black;
     Color cardColor = Colors.grey[900]!;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  //  Image.asset('assets/images/photo_5917939320541530832_y.jpg', height: 70),
                    Text(
                      'Instagram',
                      style: TextStyle(
                        fontFamily: 'Billabong',
                        fontSize: 60,
                        color: textColor,
                      ),
                    ),
                    const SizedBox(height: 50),

                    // Profile Picture
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/Untitled design (17).png'),

                    ),
                    const SizedBox(height: 12),

                    // Username
                    Text(
                      '_jana_04_',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Login Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {

                       Navigator.pushReplacementNamed(context, '/home');
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
                          'Log in',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),


                    TextButton(
                      onPressed: () {

                      },
                      child: Text(
                        'Switch accounts'.tr(),
                        style: TextStyle(color: primaryColor, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),


            Divider(color: secondaryTextColor.withOpacity(0.5), height: 1),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: secondaryTextColor, fontSize: 14),
                  ),
                  TextButton(
                    onPressed: () {

                       Navigator.pushNamed(context, '/signup');
                    },
                    child: Text(
                      'Sign up.',
                      style: TextStyle(color: primaryColor, fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}