import 'package:flutter/material.dart';

import '../widgets/custom_textfield.dart';

class InvestorDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var selectedInvestmentRange;
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
                "Stages you would like to invest on?",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 8.0),
              DropdownButtonFormField<String>(
                items: const [
                  DropdownMenuItem(
                    value: "Early Stage",
                    child: Text("Early Stage"),
                  ),
                  DropdownMenuItem(
                    value: "Seed Funding",
                    child: Text("Seed Funding"),
                  ),
                  DropdownMenuItem(
                    value: "Series A",
                    child: Text("Series A"),
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
              const Text(
                "What's your investment range?",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 8.0),
              // DropdownButtonFormField<String>(
              //   items: const [
              //     DropdownMenuItem(
              //       value: "Technology",
              //       child: Text("Technology"),
              //     ),
              //     DropdownMenuItem(
              //       value: "Finance",
              //       child: Text("Finance"),
              //     ),
              //     DropdownMenuItem(
              //       value: "Healthcare",
              //       child: Text("Healthcare"),
              //     ),
              //   ],
              //   onChanged: (value) {
              //     // Add your logic here
              //   },
              //   decoration: const InputDecoration(
              //     border: OutlineInputBorder(),
              //   ),
              // ),


            // Investment Range Dropdown
              DropdownButtonFormField<String>(
                value: selectedInvestmentRange,
                onChanged: (newValue) {
                  // Update the selected value
                  setState(() {
                    selectedInvestmentRange = newValue;
                  });
                },
                items: const [
                  DropdownMenuItem<String>(
                    value: "upto 100k",
                    child: Text("upto 100k"),
                  ),
                  DropdownMenuItem<String>(
                    value: "100k - 1000k",
                    child: Text("100k - 1000k"),
                  ),
                  DropdownMenuItem<String>(
                    value: "1000k - 10000k",
                    child: Text("1000k - 10000k"),
                  ),
                ],
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
