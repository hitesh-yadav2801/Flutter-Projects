import 'package:flutter/material.dart';

import '../widgets/custom_textfield.dart';

class PasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Password',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 8.0),

              const CustomTextField(
                hintText: "Enter Password",
              ),

              const SizedBox(height: 24.0),
              const Text(
                'Confirm Password',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 8.0),
              const CustomTextField(
                hintText: "Confirm Password",
              ),
              const SizedBox(height: 24.0),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your logic here
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 16.0,
                        ),
                      ),
                      child: const Text('Register'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
