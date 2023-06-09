import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class OptionPage extends StatefulWidget {
  @override
  _OptionPageState createState() => _OptionPageState();
}

class _OptionPageState extends State<OptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Startup Options',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 0.3,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 24,
                          backgroundImage: AssetImage('lib/assets/avatar.png'),
                        ),
                        const SizedBox(width: 16.0),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello,',
                                style: TextStyle(
                                  fontSize: 14.0,
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                'John Doe',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            // Handle notification icon press
                          },
                          icon: const Icon(Icons.notifications_none_rounded),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                _buildButton(
                  icon: Icons.person,
                  text: 'Profile',
                  onTap: () {
                    // Handle Profile button press
                  },
                ),
                _buildButton(
                  icon: Icons.work_outline_rounded,
                  text: 'Projects and Ideas',
                  onTap: () {
                    // Handle Projects and Ideas button press
                  },
                ),
                _buildButton(
                  icon: Icons.query_builder_outlined,
                  text: 'Queries and Responses',
                  onTap: () {
                    // Handle Queries and Responses button press
                  },
                ),
                _buildButton(
                  icon: Icons.language_outlined,
                  text: 'Change Language',
                  onTap: () {
                    // Handle Change Language button press
                  },
                ),
                _buildButton(
                  icon: Icons.help_outline_rounded,
                  text: 'Help',
                  onTap: () {
                    // Handle Help button press
                  },
                ),
                _buildButton(
                  icon: Icons.privacy_tip_outlined,
                  text: 'Privacy Policy',
                  onTap: () {
                    // Handle Privacy Policy button press
                  },
                ),
                _buildButton(
                  icon: Icons.article_outlined,
                  text: 'Terms and Conditions',
                  onTap: () {
                    // Handle Terms and Conditions button press
                  },
                ),
                _buildButton(
                  icon: Icons.info_outlined,
                  text: 'About Us',
                  onTap: () {
                    // Handle About Us button press
                  },
                ),
                _buildButton(
                  icon: Icons.money_off_outlined,
                  text: 'Refund Policy',
                  onTap: () {
                    // Handle Refund Policy button press
                  },
                ),
                _buildButton(
                  icon: Icons.logout_outlined,
                  text: 'Logout',
                  onTap: () {
                    // Handle Logout button press
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: RawMaterialButton(
        onPressed: () {
          // Handle image button press
        },
        shape: const CircleBorder(),
        elevation: 0.0,
        fillColor: const Color(0x00266fff),
        child: Container(
          width: 64,
          height: 64,
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage('lib/assets/chatbtn.png'),
                  fit: BoxFit.cover
              )
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _buildButton({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.black,
        ),
        title: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.black,
        ),
        onTap: onTap,
      ),
    );
  }
}
