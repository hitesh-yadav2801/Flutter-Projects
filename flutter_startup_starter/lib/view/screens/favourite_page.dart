import 'package:flutter/material.dart';
import '../widgets/rounded_segmented_control.dart';
import '../widgets/idea_card.dart';
import '../widgets/service_card.dart';
import '../widgets/blog_card.dart';

class FavouritePage extends StatefulWidget {
  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Favourites',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            RoundedSegmentedControl(
              items: const ['Ideas', 'Services', 'Blogs'],
              selectedIndex: _selectedIndex,
              onIndexChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
            const SizedBox(height: 16.0),
            _buildContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    if (_selectedIndex == 0) {
      // Segment 1 - Ideas
      return _buildIdeaCards([
        IdeaCardData(
          title: 'Idea 1',
          description: 'Description for Idea 1',
          imagePath: 'lib/assets/idea1.png',
        ),
        IdeaCardData(
          title: 'Idea 2',
          description: 'Description for Idea 2',
          imagePath: 'lib/assets/idea2.png',
        ),
        // Add more IdeaCardData as needed
      ]);
    } else if (_selectedIndex == 1) {
      // Segment 2 - Services
      return _buildServiceCards([
        ServiceCardData(
          title: 'Service 1',
          description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dodhc kldfgdgdgkedhgkl dhrrkgdskgcehgikldrhgidrh',
          imagePath: 'lib/assets/frame.png',
        ),
        ServiceCardData(
          title: 'Service 2',
          description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do',
          imagePath: 'lib/assets/frame.png',
        ),
        // Add more ServiceCardData as needed
      ]);
    } else {
      // Segment 3 - Blogs
      return _buildBlogCards([
        BlogCardData(
          title: 'Blog 1',
          author: 'Author 1',
          imageUrl: 'lib/assets/blog1.png',
        ),
        BlogCardData(
          title: 'Blog 2',
          author: 'Author 2',
          imageUrl: 'lib/assets/blog2.png',
        ),
        // Add more BlogCardData as needed
      ]);
    }
  }

  Widget _buildIdeaCards(List<IdeaCardData> ideaCards) {
    if (ideaCards.isEmpty) {
      return _buildNoDataWidget();
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: ideaCards.length,
      itemBuilder: (context, index) {
        return IdeaCard(data: ideaCards[index]);
      },
    );
  }

  Widget _buildServiceCards(List<ServiceCardData> serviceCards) {
    if (serviceCards.isEmpty) {
      return _buildNoDataWidget();
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: serviceCards.length,
      itemBuilder: (context, index) {
        return ServiceCard(data: serviceCards[index]);
      },
    );
  }

  Widget _buildBlogCards(List<BlogCardData> blogCards) {
    if (blogCards.isEmpty) {
      return _buildNoDataWidget();
    }

    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: blogCards.length,
      itemBuilder: (context, index) {
        return BlogCard(data: blogCards[index]);
      },
    );
  }

  Widget _buildNoDataWidget() {
    return Column(
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
    );
  }
}
