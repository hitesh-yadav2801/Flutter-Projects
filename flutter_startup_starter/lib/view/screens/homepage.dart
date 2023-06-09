import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/custom_card_view.dart';
import '../widgets/custom_cardview2.dart';
import '../widgets/rounded_segmented_control.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  int _currentCardIndex = 0;
  int selectedSegment = 0;
  int _currentSecondSliderIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage('lib/assets/avatar.png'),
                    ),
                    const SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _getGreeting(),
                          style: const TextStyle(fontSize: 14,),
                          ),
                        const Text(
                          'John Doe', // Replace with the user's name
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),

                    IconButton(
                      onPressed: () {
                        // Add your logic for the notification button
                      },
                      icon: const Icon(Icons.notifications_none_rounded),
                    ),
                  ],
                ),

                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: RoundedSegmentedControl(
                        items: const ['Ideas', 'Start Up', 'Projects'],
                        selectedIndex: _selectedIndex,
                        onIndexChanged: (index) {
                          setState(() {
                            _selectedIndex = index;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  shadowColor: Colors.black.withOpacity(0.3),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 114, // Adjust the width as needed
                        height: 146, // Occupy full height of the card
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('lib/assets/frame.png'),
                            fit: BoxFit.cover, // Adjust the fit as needed
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                _selectedIndex == 0 ? 'Ideas' : (_selectedIndex == 1 ? 'Start Up' : 'Projects'),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              IconButton(
                                icon: const Icon(Icons.info_outline_rounded),
                                onPressed: (){},
                              )
                            ],
                          ),
                          const SizedBox(height: 8),

                          const Text(
                            //'Description of ${selectedIndex == 0 ? 'Ideas' : (selectedIndex == 1 ? 'Start Up' : 'Projects')}',
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dohui fskfcdsifeiodfgodsf eorcoerujtoerjotxjer tcoerioptdrjcotertuedopt9',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextButton(
                            onPressed: () {
                              // Handle hyperlink button press
                            },
                            child: const Text(
                              'View Requirements',
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                  ]
                ),
                ),

                Row(
                  children: [
                    const Text(
                      'Useful Resources',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      iconSize: 20,
                      icon: const Icon(Icons.info_outline),
                      onPressed: () {
                        // Handle info button press
                      },
                    ),
                  ],
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 235,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason){
                      setState(() {
                        _currentCardIndex = index;
                      });
                    },
                    viewportFraction: 1,
                  ),
                  items: [
                    // List of Card View Widgets
                    buildCardView(),
                    buildCardView(),
                    buildCardView(),
                  ],
                ),
                const SizedBox(height: 8),
                // Dot Indicators
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) {
                    return Container(
                      width: 8,
                      height: 8,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentCardIndex == index
                            ? Colors.blue
                            : Colors.grey,
                      ),
                    );
                  }),
                ),

                Row(
                  children: [
                    const Text(
                      'Our Services',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      iconSize: 20,
                      icon: const Icon(Icons.info_outline),
                      onPressed: () {
                        // Handle info button press
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                // Second carousel slider
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentSecondSliderIndex = index;
                      });
                    },
                    viewportFraction: 1,
                  ),
                  items: const [
                    CustomCardView(
                      image: 'lib/assets/frame.png',
                      title: 'App Development',

                    ),
                    CustomCardView(
                      image: 'lib/assets/frame.png',
                      title: 'Web Development',

                    ),
                    CustomCardView(
                      image: 'lib/assets/frame.png',
                      title: 'Content Writing',

                    ),
                  ],
                ),

                const SizedBox(height: 8),
                // Horizontal bar dot indicators for the second carousel slider
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) {
                    return Container(
                      width: _currentSecondSliderIndex == index ? 40 : 8,
                      height: 4,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        color: _currentSecondSliderIndex == index
                            ? Colors.blue
                            : Colors.grey,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    );
                  }),
                ),
                const SizedBox(height: 8,),
                Row(
                  children: [
                    const Text(
                      'Benefits You Get With Us',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      iconSize: 20,
                      icon: const Icon(Icons.info_outline),
                      onPressed: () {
                        // Handle info button press
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 8),

                const CustomCardViewII(
                  imagePath: 'lib/assets/smallbox.png',
                  title: 'Company and Brands',
                  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do',
                ),
                const SizedBox(height: 12),

                const CustomCardViewII(
                  imagePath: 'lib/assets/smallbox.png',
                  title: 'App design',
                  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do',
                ),
                const SizedBox(height: 12),

                const CustomCardViewII(
                  imagePath: 'lib/assets/smallbox.png',
                  title: 'Future Enhancement provided',
                  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do',
                ),
                const SizedBox(height: 12),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(200, 40),
                    ),
                    child: const Text('View More Benefits'),
                  ),
                ),
                const SizedBox(height: 12),

                Row(
                  children: [
                    const Text(
                      'Invite Your Friends',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      iconSize: 20,
                      icon: const Icon(Icons.info_outline),
                      onPressed: () {
                        // Handle info button press
                      },
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Image.asset('lib/assets/whatsapp.png'),
                      iconSize: 20,
                      onPressed: () {
                        // Handle WhatsApp icon press
                      },
                    ),
                    IconButton(
                      icon: Image.asset('lib/assets/instagram.png'),
                      iconSize: 20,
                      onPressed: () {
                        // Handle Instagram icon press
                      },
                    ),
                    IconButton(
                      icon: Image.asset('lib/assets/facebook.png'),
                      iconSize: 20,
                      onPressed: () {
                        // Handle Facebook icon press
                      },
                    ),
                    IconButton(
                      icon: Image.asset('lib/assets/messenger.png'),
                      iconSize: 20,
                      onPressed: () {
                        // Handle Messenger icon press
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _getGreeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    } else if (hour < 17) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }

  Widget buildCardView() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 4,
      shadowColor: Colors.black.withOpacity(0.3),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/frame.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing ',
                    style: TextStyle(fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle hyperlink button press
                    },
                    child: const Text(
                      'Read More',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }



  String getSelectedSegmentText() {
    switch (selectedSegment) {
      case 0:
        return 'Ideas';
      case 1:
        return 'Start Up';
      case 2:
        return 'Projects';
      default:
        return '';
    }
  }
}

