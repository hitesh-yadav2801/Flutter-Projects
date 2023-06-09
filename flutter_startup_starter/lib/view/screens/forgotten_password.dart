import 'package:flutter/material.dart';

import '../widgets/custom_textfield.dart';

class ForgottenPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Image Container
                Container(
                  width: 320.0,
                  height: 209.0,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('lib/assets/onboarding_image.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),

                const SizedBox(height: 40.0),

                // Forgot Password Text
                const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 12.0),

                // Subtitle Text
                const Text(
                  'Enter your registered email to reset your password',
                  style: TextStyle(fontSize: 16.0),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 40.0),

                // Email TextField
                const CustomTextField(
                  //labelText: 'Email',
                  hintText: 'Enter Email',
                ),

                const SizedBox(height: 24.0),

                // Send OTP Button
                ElevatedButton(
                  onPressed: () {
                    // Add your logic here
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 40),
                  ),
                  child: const Text('Send OTP'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
