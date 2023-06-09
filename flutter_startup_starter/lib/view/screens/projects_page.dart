import 'package:flutter/material.dart';
import '../widgets/projects_card.dart';

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ProjectCardData> projects = [
      ProjectCardData(
        imageAsset: 'lib/assets/smallbox.png',
        heading: 'Cab Hiring App with 1 services',
        description: '1 projects and 1 services',
      ),
      ProjectCardData(
        imageAsset: 'lib/assets/smallbox.png',
        heading: 'Cab Hiring App with 0 services',
        description: '1 projects and 0 service',
      ),
      ProjectCardData(
        imageAsset: 'lib/assets/smallbox.png',
        heading: 'Cab Hiring App with 2 services',
        description: '1 projects and 2 service',
      ),
      ProjectCardData(
        imageAsset: 'lib/assets/smallbox.png',
        heading: 'Cab Hiring App with 1 services',
        description: '1 projects and 1 services',
      ),
      ProjectCardData(
        imageAsset: 'lib/assets/smallbox.png',
        heading: 'Cab Hiring App with 0 services',
        description: '1 projects and 0 service',
      ),
      ProjectCardData(
        imageAsset: 'lib/assets/smallbox.png',
        heading: 'Cab Hiring App with 2 services',
        description: '1 projects and 2 service',
      ),
      ProjectCardData(
        imageAsset: 'lib/assets/smallbox.png',
        heading: 'Cab Hiring App with 1 services',
        description: '1 projects and 1 services',
      ),
      ProjectCardData(
        imageAsset: 'lib/assets/smallbox.png',
        heading: 'Cab Hiring App with 0 services',
        description: '1 projects and 0 service',
      ),
      ProjectCardData(
        imageAsset: 'lib/assets/smallbox.png',
        heading: 'Cab Hiring App with 2 services',
        description: '1 projects and 2 service',
      ),
      ProjectCardData(
        imageAsset: 'lib/assets/smallbox.png',
        heading: 'Cab Hiring App with 1 services',
        description: '1 projects and 1 services',
      ),
      ProjectCardData(
        imageAsset: 'lib/assets/smallbox.png',
        heading: 'Cab Hiring App with 0 services',
        description: '1 projects and 0 service',
      ),
      ProjectCardData(
        imageAsset: 'lib/assets/smallbox.png',
        heading: 'Cab Hiring App with 2 services',
        description: '1 projects and 2 service',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Projects',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              if (projects.isEmpty)
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'lib/assets/no_data.png',
                        width: 200,
                        height: 200,
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        'No data available to show',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ],
                  ),
                )
              else
                Expanded(
                  child: ListView.builder(
                    itemCount: projects.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ProjectCard(data: projects[index]),
                      );
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
