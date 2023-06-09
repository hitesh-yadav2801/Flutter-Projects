import 'package:flutter/material.dart';
import 'package:flutter_startup_starter/view/screens/login_screen.dart';
import 'package:flutter_startup_starter/view/screens/register.dart';


class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 10),
                // Logo widget
                Image.asset(
                  'lib/assets/logo.png',
                  height: 80.0,
                ),
                const SizedBox(height: 30.0),

                // Container for image
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

                // Text widgets
                const Text(
                  'Welcome to Our App',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  style: TextStyle(fontSize: 16.0),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40.0),

                // Register button
                ElevatedButton(
                  onPressed: () {
                    // Add your logic here
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen(),));
                  },
                  child: const Text('Register'),
                ),
                const SizedBox(height: 12.0),

                // Login button
                OutlinedButton(
                  onPressed: () {
                    // Add your logic here
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                  },
                  child: const Text('Login'),
                ),
                const SizedBox(height: 30.0),

                Row(
                  children: const [
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

                const SizedBox(height: 30.0),

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

                // Sign in with Google button
                OutlinedButton(
                  onPressed: () {
                    // Add your logic here
                  },
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
