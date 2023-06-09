import 'package:flutter/material.dart';

class IdeaCardData {
  final String title;
  final String description;
  final String imagePath;

  IdeaCardData({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

class IdeaCard extends StatelessWidget {
  final IdeaCardData data;

  IdeaCard({required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            data.imagePath,
            fit: BoxFit.cover,
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(data.description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
