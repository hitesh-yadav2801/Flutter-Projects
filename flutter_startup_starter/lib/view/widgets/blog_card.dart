import 'package:flutter/material.dart';

class BlogCardData {
  final String title;
  final String author;
  final String imageUrl;

  BlogCardData({
    required this.title,
    required this.author,
    required this.imageUrl,
  });
}

class BlogCard extends StatelessWidget {
  final BlogCardData data;

  BlogCard({required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            data.imageUrl,
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
                Text(data.author),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
