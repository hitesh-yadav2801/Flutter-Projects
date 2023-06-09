import 'package:flutter/material.dart';

class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2, // give the ratio
            child: Container(
              height: 200,
              color: Colors.deepPurple,
            ),
          ),
          Expanded(
            child: Container(  
              color: Colors.pink,
            ),
          )
        ],
      ),
    );
  }
}
