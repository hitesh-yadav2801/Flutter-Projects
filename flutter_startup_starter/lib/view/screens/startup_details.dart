import 'package:flutter/material.dart';

import '../widgets/custom_dropdown.dart';
import '../widgets/custom_textfield.dart';

class StartupDetailsScreen extends StatelessWidget {
  final List<String> stages = ['Seed Stage', 'Early Stage', 'Growth Stage'];
  String? selectedStage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "What's your company name?",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 8.0),
              const CustomTextField(
                hintText: "Company Name",
              ),

              const SizedBox(height: 24.0),
              const Text(
                "What's your brand name?",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 8.0),
              const CustomTextField(
                hintText: "Brand Name",
              ),
              const SizedBox(height: 24.0),
              const Text(
                "Industry you are interested in?",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 8.0),
              DropdownButtonFormField<String>(
                items: const [
                  DropdownMenuItem(
                    value: "Technology",
                    child: Text("Technology"),
                  ),
                  DropdownMenuItem(
                    value: "Finance",
                    child: Text("Finance"),
                  ),
                  DropdownMenuItem(
                    value: "Healthcare",
                    child: Text("Healthcare"),
                  ),
                ],
                onChanged: (value) {
                  // Add your logic here
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
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
                      child: const Text('Continue'),
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

  void setState(Null Function() param0) {}
}
