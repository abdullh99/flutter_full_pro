# login_design

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


//--------------------------------------------------------

import 'package:flutter/material.dart';

class MassengerScreen extends StatelessWidget {
  const MassengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0,
        titleSpacing: 20,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                'https://png.pngtree.com/png-clipart/20190411/ourmid/pngtree-hand-painted-elements-of-lion-roar-beast-png-image_920828.jpg',
              ),

              radius: 20,
            ),

            SizedBox(width: 15),
            Text('Chats', style: TextStyle(color: Colors.white)),
          ],
        ),

        actions: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.grey[800],
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt, size: 16, color: Colors.white),
            ),
          ),

          SizedBox(width: 25),

          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.grey[800],
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit, size: 16, color: Colors.white),
            ),
          ),
          SizedBox(width: 25),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(10),
              ),

              padding: EdgeInsets.all(5),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.white),

                  SizedBox(width: 15),

                  Text('Search', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 60,
                    child: Column(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://png.pngtree.com/png-clipart/20190411/ourmid/pngtree-hand-painted-elements-of-lion-roar-beast-png-image_920828.jpg',
                              ),
                              radius: 30,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2,
                                end: 2,
                              ),
                              child: CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 3,
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 6),

                        Text(
                          'Abdullah Ahmed',
                          style: TextStyle(color: Colors.white),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 30),
                
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://png.pngtree.com/png-clipart/20190411/ourmid/pngtree-hand-painted-elements-of-lion-roar-beast-png-image_920828.jpg',
                              ),
                              radius: 30,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2,
                                end: 2,
                              ),
                              child: CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 3,
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                
                        SizedBox(height: 20),
                
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Abdullah Ahmed',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hello, How Are Ya ',
                                      style: TextStyle(color: Colors.white),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: Container(
                                      width: 7,
                                      height: 7,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '02:30 PM',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20), //20
                
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://png.pngtree.com/png-clipart/20190411/ourmid/pngtree-hand-painted-elements-of-lion-roar-beast-png-image_920828.jpg',
                              ),
                              radius: 30,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 2,
                                end: 2,
                              ),
                              child: CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                bottom: 3,
                                end: 3,
                              ),
                              child: CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 20),
                
                        SizedBox(height: 20),
                
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Abdullah Ahmed',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Hello, How Are Ya ',
                                      style: TextStyle(color: Colors.white),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: Container(
                                      width: 7,
                                      height: 7,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '02:30 PM',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
