import 'package:flutter/material.dart';

class ProjectCardData {
  final String imageAsset;
  final String heading;
  final String description;

  ProjectCardData({
    required this.imageAsset,
    required this.heading,
    required this.description,
  });
}

class ProjectCard extends StatelessWidget {
  final ProjectCardData data;

  const ProjectCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(data.imageAsset),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.heading,
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
      ),
    );
  }
}
