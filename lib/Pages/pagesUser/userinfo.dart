// Remove the unused import statements
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:the_proj_on_github/Pages/pagesUser/reqCategory.dart';
import '../../Domain/customAppBar.dart';

class Cutomerinfo extends StatefulWidget {
  const Cutomerinfo({Key? key}) : super(key: key);

  @override
  _CutomerinfoState createState() => _CutomerinfoState();
}

class _CutomerinfoState extends State<Cutomerinfo> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: CustomAppBar(
          scaffoldKey: _scaffoldKey,
          showSearchBox: false,
        ),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height * 0.10,
                left: 0,
                right: 0,
                child: Container(
                  margin: const EdgeInsets.only(top: 0),
                  child: Column(
                    children: [
                      // Profile Image
                      const CircleAvatar(
                        radius: 55,
                        backgroundImage:
                            AssetImage("assets/images/profile.png"),
                      ),
                      const SizedBox(height: 5),

                      // Worker Name
                      const Text(
                        "John Doe",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // phoneNum
                          Container(
                            margin: const EdgeInsets.only(
                                left: 16), // Increased the left margin
                            child: const ListTile(
                              leading: Icon(Icons.phone),
                              title: Text(
                                "Phone Number:",
                                style: TextStyle(
                                  fontWeight: FontWeight
                                      .bold, // Make the phone number title bold
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),

// Worker num Text
                          Container(
                            margin: const EdgeInsets.only(
                                left: 16), // Increased the left margin
                            child: const Text(
                              "01224047524",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),

                          // Email
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 16), // Increased the left margin
                                child: const ListTile(
                                  leading: Icon(Icons.mail),
                                  title: Text(
                                    "Email:",
                                    style: TextStyle(
                                      fontWeight: FontWeight
                                          .bold, // Make the email title bold
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),

                              // Worker email Text
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 16), // Increased the left margin
                                child: const Text(
                                  "johndoe@example.com",
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                            ],
                          ),
                        ],
                      ),

// Rating and Stars
                      Container(
                        margin: const EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: Icon(Icons.star,
                                  color: Color.fromRGBO(74, 74, 74, 1),
                                  size: 25), // Filled with black
                              title: Text(
                                "Rating:",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                // Add your rating logic here, e.g., display stars based on a rating value
                                Icon(Icons.star, color: Colors.yellow),
                                Icon(Icons.star, color: Colors.yellow),
                                Icon(Icons.star, color: Colors.yellow),
                                Icon(Icons.star_border, color: Colors.yellow),
                                Icon(Icons.star_border, color: Colors.yellow),
                              ],
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 16),

                      const SizedBox(
                        height: 20,
                        child: Row(
                          children: [],
                        ),
                      ),

                      // Social Media Icons in Row
                      const SizedBox(height: 16),
                      SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // WhatsApp
                            IconButton(
                              onPressed: () {
                                // Add your WhatsApp logic here
                              },
                              icon: _buildSocialMediaIcon(0),
                            ),

                            // Messenger
                            IconButton(
                              onPressed: () {
                                // Add your Messenger logic here
                              },
                              icon: _buildSocialMediaIcon(1),
                            ),

                            // Telegram
                            IconButton(
                              onPressed: () {
                                // Add your Telegram logic here
                              },
                              icon: _buildSocialMediaIcon(2),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        // FloatingActionButton
      ),
    );
  }

  Widget _buildSocialMediaIcon(int index) {
    List<IconData> icons = [
      FontAwesomeIcons.whatsapp,
      FontAwesomeIcons.facebookMessenger,
      FontAwesomeIcons.telegram,
    ];

    List<Color> colors = [
      Colors.green,
      Colors.blue,
      Colors.lightBlue,
    ];

    return FaIcon(
      icons[index],
      size: 30,
      color: colors[index],
    );
  }
}
