import 'package:flutter/material.dart';

import '../../widgets/custom_textfield.dart';

class UserProfile extends StatefulWidget {
  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  bool isDateOfBirthRequired = true;
  DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'User Profile',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20.0),

            // Avatar
            Center(
              child: GestureDetector(
                onTap: () {
                  // Add logic to edit avatar
                },
                child: const CircleAvatar(
                  radius: 45.0,
                  backgroundImage: AssetImage('lib/assets/avatar.png'),
                ),
              ),
            ),

            const SizedBox(height: 16.0),

            // Name
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

            const SizedBox(height: 16.0),

            // Gender Dropdown Field
            const Text(
              'Gender',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            // Gender Dropdown
            // Add your gender dropdown widget here

            const SizedBox(height: 16.0),

            // Country Dropdown Field
            const Text(
              'Country',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            // Country Dropdown
            // Add your country dropdown widget here

            const SizedBox(height: 16.0),

            // Address Text Field
            const Text(
              'Address',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            // Address Text Field
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter Address',
                suffixIcon: Icon(Icons.edit),
              ),
            ),

            const SizedBox(height: 16.0),

            // City Dropdown Field
            const Text(
              'City',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            // City Dropdown
            // Add your city dropdown widget here

            const SizedBox(height: 16.0),

            // State Dropdown Field
            const Text(
              'State',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            // State Dropdown
            // Add your state dropdown widget here

            const SizedBox(height: 24.0),

            // Personal Preferences
            const Text(
              'Personal Preferences',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8.0),

            // User Preference Text Field
            const Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'User Preference',
                      suffixIcon: Icon(Icons.edit),
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                Icon(Icons.edit),
              ],
            ),

            const SizedBox(height: 16.0),

            // Startup Page Text Field
            const Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Startup Page',
                      suffixIcon: Icon(Icons.edit),
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                Icon(Icons.edit),
              ],
            ),

            const SizedBox(height: 24.0),

            // Business
            const Text(
              'Business',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8.0),

            // Business Name Text Field
            const Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Business Name',
                      suffixIcon: Icon(Icons.edit),
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                Icon(Icons.edit),
              ],
            ),

            const SizedBox(height: 40.0),

            // Update Changes Button
            ElevatedButton(
              onPressed: () {
                // Add your logic here
              },
              child: const Text('Update Changes'),
            ),
          ],
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
