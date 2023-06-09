import 'package:flutter/material.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // Fixed width for the container
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

                // Enter OTP Text
                const Text(
                  'Enter OTP',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 12.0),

                // Send a Verification Code Text
                const Text(
                  'We have sent a verification code to your email',
                  style: TextStyle(fontSize: 16.0),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 40.0),

                // OTP TextField
                // const TextField(
                //   keyboardType: TextInputType.number,
                //   maxLength: 4,
                //   decoration: InputDecoration(
                //     labelText: 'Enter OTP',
                //     hintText: 'Enter OTP',
                //     border: OutlineInputBorder(),
                //   ),
                // ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Individual Box
                    _buildOTPBox(),
                    const SizedBox(width: 10.0),
                    _buildOTPBox(),
                    const SizedBox(width: 10.0),
                    _buildOTPBox(),
                    const SizedBox(width: 10.0),
                    _buildOTPBox(),
                  ],
                ),

                const SizedBox(height: 24.0),

                // Verify Button
                ElevatedButton(
                  onPressed: () {
                    // Add your logic here
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 40),
                  ),
                  child: const Text('Verify'),
                ),

                const SizedBox(height: 16.0),

                // Didn't Receive the Code Text
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Didn't receive the code?"),
                      TextButton(
                        onPressed: () {
                          // Add your logic here
                        },
                        child: const Text(
                          "Request again",
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
    );
  }
  Widget _buildOTPBox() {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
}}
