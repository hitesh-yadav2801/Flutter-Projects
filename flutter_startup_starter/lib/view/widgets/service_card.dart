import 'package:flutter/material.dart';

class ServiceCardData {
  final String title;
  final String description;
  final String imagePath;

  ServiceCardData({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

class ServiceCard extends StatelessWidget {
  final ServiceCardData data;

  const ServiceCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(data.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10.0),
            Expanded(
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
                  const SizedBox(height: 4.0),
                  Text(data.description),
                  const SizedBox(height: 8.0),
                  Row(
                    children: [
                      const Icon(
                        Icons.schedule,
                        size: 14.0,
                      ),
                      const SizedBox(width: 4.0),
                      const Text('Date'),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          // Handle Details button press
                        },
                        child: const Text(
                          'Details',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
