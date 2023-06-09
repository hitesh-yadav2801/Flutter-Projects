import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class RegisterInvestorScreen extends StatefulWidget {
  @override
  _RegisterInvestorScreenState createState() => _RegisterInvestorScreenState();
}

class _RegisterInvestorScreenState extends State<RegisterInvestorScreen> {
  int selectedSegment = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  // Add your logic here to navigate to the previous page
                },
              ),
              const SizedBox(height: 16.0),
              const Center(
                child: Text(
                  'What best describes you?',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
              Center(
                child: CupertinoSegmentedControl<int>(
                  children: const {
                    0: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text('Investor'),
                    ),
                    1: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text('Startup'),
                    ),
                  },
                  groupValue: selectedSegment,
                  onValueChanged: (value) {
                    setState(() {
                      selectedSegment = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 24.0),
              Card(
                elevation: 4.0,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            selectedSegment == 0
                                ? 'Register as an Investor'
                                : 'Register as a Startup',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          const Icon(Icons.info_outline),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        selectedSegment == 0
                            ? 'You can be an investor if you are interested to help new startups with funds and you want to help in startup success.'
                            : 'You can be a startup if you are an entrepreneur or have an idea, for which you want to develop your first prototype or MVP (Minimum Viable Product) with us.',
                        style: const TextStyle(fontSize: 16.0),
                      ),
                      const SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Checkbox(
                            value: true, // Replace with your own logic
                            onChanged: (value) {
                              // Add your logic here
                            },
                          ),
                          const Text('I understand'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
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
}
