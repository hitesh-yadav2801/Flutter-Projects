import 'package:flutter/material.dart';
import 'package:flutter_startup_starter/view/screens/login_screen.dart';
import '../widgets/custom_textfield.dart';
import 'package:intl/intl.dart';


class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isDateOfBirthRequired = true;
  DateTime? selectedDate;

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
                const SizedBox(height: 40.0),

                // Create an Account Text
                const Text(
                  'Create an Account',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 32.0),

                const Text(
                  'Name',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                // Name Text Field
                const CustomTextField(
                  //labelText: 'Email',
                  hintText: 'Enter Name',
                ),

                const SizedBox(height: 16.0),

                const Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),
                // Email Text Field
                const CustomTextField(
                  //labelText: 'Email',
                  hintText: 'Enter Email',
                ),

                const SizedBox(height: 16.0),

                const Text(
                  'Phone Number',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),
                // Phone Number Text Field
                const CustomTextField(
                  //labelText: 'Email',
                  hintText: 'Enter Mobile Number',
                ),

                const SizedBox(height: 16.0),

                const Text(
                  'Date of Birth',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),
                // Date of Birth Text Field


                CustomTextField(
                  //labelText: 'Email',
                  hintText: 'yy/mm/dd',
                  onDatePickerPressed: isDateOfBirthRequired ? (){
                    _showDatePicker(context);
                  } : null,

                ),

                const SizedBox(height: 24.0),

                // Continue Button
                ElevatedButton(
                  onPressed: () {
                    // Add your logic here
                  },
                  child: const Text('Continue'),
                ),

                const SizedBox(height: 16.0),

                // Or Text with Horizontal Line
                const Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text('Or'),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),

                const SizedBox(height: 16.0),

                // Continue with Gmail Button (Outlined Button)
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

                const SizedBox(height: 16.0),

                // Already have an account? Login Text
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                      ),
                      TextButton(
                        onPressed: () {
                          // Add your logic here
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                        },
                        child: const Text(
                          "Login",
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

  // Function to show the date picker
  Future<void> _showDatePicker(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate; // Update the selected date
      });
    }
  }
}
