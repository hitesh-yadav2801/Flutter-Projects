import 'package:flutter/material.dart';
import 'package:flutter_startup_starter/view/screens/homepage.dart';
import 'package:flutter_startup_starter/view/screens/register.dart';

import '../widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 10),
                  // App Icon
                  Image.asset(
                    'lib/assets/logo.png',
                    height: 80.0,
                  ),

                  const SizedBox(height: 40.0),

                  // Welcome Text
                  const Text(
                    'Welcome to Startup Starter',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8.0),

                  // Subtitle Text
                  const Text(
                    'Please login to your account',
                    style: TextStyle(fontSize: 16.0),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 50.0),

                  const Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),
                  const CustomTextField(
                    //labelText: 'Email',
                    hintText: 'Enter Email',
                  ),
                  const SizedBox(height: 16.0),

                  const Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const CustomTextField(
                    hintText: 'Enter Password',
                    obscureText: true,
                  ),
                  const SizedBox(height: 8.0),

                  // Forgot Password
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        // Add your logic here
                      },
                      child: const Text('Forgot password?'),
                    ),
                  ),

                  const SizedBox(height: 16.0),

                  // Login Button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(200, 40),
                    ),
                    child: const Text('Login'),
                  ),

                  const SizedBox(height: 34.0),

                  // Or Text with Horizontal Line
                  const Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                          height: 1.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Or',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.black,
                          height: 1.0,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 34.0),

                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'You can register or login easily with your gmail account',
                      style: TextStyle(
                          fontSize: 12
                      ),
                    ),
                  ),

                  const SizedBox(height: 6.0),

                  // Continue with Google Button
                  OutlinedButton(
                    onPressed: () {
                      // Add your logic here
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(200, 40),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'lib/assets/google_logo.png',
                          height: 20.0,
                        ),
                        const SizedBox(width: 8.0),
                        const Text('Continue with Google'),
                      ],
                    ),
                  ),

                  const SizedBox(height: 12.0),

                  // Create Account
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                        ),
                        TextButton(
                          onPressed: () {
                            // Add your logic here
                            Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen(),));
                          },
                          child: const Text(
                            "Create Account",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
