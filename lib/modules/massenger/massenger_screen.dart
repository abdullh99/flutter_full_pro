import 'package:flutter/material.dart';
import 'package:login_design/models/users/usesrs_model.dart';

// https://png.pngtree.com/png-clipart/20190411/ourmid/pngtree-hand-painted-elements-of-lion-roar-beast-png-image_920828.jpg

// insert or Add or Edit The [Message], AND [Time]..



class MassengerScreen extends StatelessWidget {
  List<StoryModel> storyList = [
    StoryModel(
      avatarSorcStory:
          'https://png.pngtree.com/png-clipart/20190411/ourmid/pngtree-hand-painted-elements-of-lion-roar-beast-png-image_920828.jpg',
      nameStory: ' Ahmed Ali',
    ),
    StoryModel(
      avatarSorcStory:
          'https://images.rawpixel.com/image_png_social_square/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTExL3Jhd3BpeGVsb2ZmaWNlM19saW9uc19iYXNpY19vdXRsaW5lX2ljb25fZ3JhZmZpdGlfc3ltYm9sX3N0cmVldF85MGE5MjVhZC0xM2I5LTRjNGMtOGIwOC03YWUxY2NiZTg4ODUucG5n.png',
      nameStory: 'Mohamed Ahmed',
    ),
    StoryModel(
      avatarSorcStory:
          'https://w7.pngwing.com/pngs/412/77/png-transparent-lion-lion-animal-lionhead-thumbnail.png',
      nameStory: 'Mosa Raid',
    ),
    StoryModel(
      avatarSorcStory:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNcFXWjlNCwn2mXxjhQEjf8OC6dkkZCSb3o3-GVGcW00MoOAnUlANpfUJJV1_fjwiSfsk&usqp=CAU',
      nameStory: 'Khaled Alaa',
    ),
    StoryModel(
      avatarSorcStory:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjC9N_QNLhGJs8C3qNQj_3HS7GRrE6WCoP0bp2LvzH_dA99Gh2u4rWMZfWFSQjhbJGlGA&usqp=CAU',
      nameStory: 'Tarek Omar',
    ),
    StoryModel(
      avatarSorcStory:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjC9N_QNLhGJs8C3qNQj_3HS7GRrE6WCoP0bp2LvzH_dA99Gh2u4rWMZfWFSQjhbJGlGA&usqp=CAU',
      nameStory: 'Tarek Omar',
    ),
    StoryModel(
      avatarSorcStory:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjC9N_QNLhGJs8C3qNQj_3HS7GRrE6WCoP0bp2LvzH_dA99Gh2u4rWMZfWFSQjhbJGlGA&usqp=CAU',
      nameStory: 'Tarek Omar',
    ),
  ];

  MassengerScreen({super.key});

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

            Container(
              height: 115,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    buildStoryItem(storyList[index]),

                itemCount: storyList.length,
                separatorBuilder: (context, index) => SizedBox(width: 20),
              ),
            ),

            SizedBox(height: 40),

            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) =>
                    buildChatItem(storyList[index]),
                separatorBuilder: (context, index) => SizedBox(height: 20),
                itemCount: storyList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildChatItem(StoryModel user) => Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('${user.avatarSorcStory}'),
            radius: 30,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 2, end: 2),
            child: CircleAvatar(radius: 9, backgroundColor: Colors.black),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 3, end: 3),
            child: CircleAvatar(radius: 7, backgroundColor: Colors.green),
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
              '${user.nameStory}',
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text('02:30 PM', style: TextStyle(color: Colors.white)),
              ],
            ),
          ],
        ),
      ),
    ],
  );

  Widget buildStoryItem(StoryModel userStory) => Container(
    width: 60,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage('${userStory.avatarSorcStory}'),
              radius: 30,
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(bottom: 2, end: 2),
              child: CircleAvatar(radius: 9, backgroundColor: Colors.black),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(bottom: 3, end: 3),
              child: CircleAvatar(radius: 7, backgroundColor: Colors.green),
            ),
          ],
        ),

        SizedBox(height: 6),

        Text(
          '${userStory.nameStory}',
          style: TextStyle(color: Colors.white),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}
