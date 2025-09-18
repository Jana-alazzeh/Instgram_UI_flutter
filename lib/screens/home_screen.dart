import 'package:flutter/material.dart';
import 'package:insgram1/screens/DM_screen.dart';
import '../widgets/post_card.dart';
import '../widgets/bottom_nav_bar.dart';
import 'package:insgram1/models/post_model.dart';



class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  
  final List<String> storiesImages = [
    'assets/images/photo_5917939320541530834_y.jpg',
    'assets/images/photo_5917939320541530832_y.jpg',
    'assets/images/photo_5917939320541530838_y.jpg',
    'assets/images/photo_5917939320541530831_y.jpg',
    'assets/images/photo_5852640523263789477_w.jpg',
  ];

  final List<String> storiesNames = [
    'Lina',
    'Osama',
    'Hiba',
    'Malak',
    'Jana',
  ];


  final List<PostModel> posts = [
    PostModel(
      userName: 'Heba_01',
      location: 'Amman_Jordan',
      userImage: 'assets/images/photo_5917939320541530832_y.jpg',
      postImage: 'assets/images/photo_5917939320541530824_y.jpg',
      caption: 'souq Jara 🤎🤎 .',
      likes: 'Lojuin and 44,686 others',
    ),
    PostModel(
      userName: 'Jana_02',
      location: 'Zarqa_Jordan',
      userImage: 'assets/images/photo_5917939320541530831_y.jpg',
      postImage: 'assets/images/photo_5917939320541530829_y (1).jpg',
      caption: 'Coffie Time!',
      likes: 'Ali and 10,000 others',
    ),
    PostModel(
      userName: 'Malak_03',
      location: 'Irbid_Jordan',
      userImage: 'assets/images/photo_5917939320541530829_y (1).jpg',
      postImage: 'assets/images/photo_5917939320541530828_y (1).jpg',
      caption: 'Enjoying Learn ',
      likes: 'Hiba and 5,000 others',
    ),
    PostModel(
      userName: 'Osama_04',
      location: 'Amman_Jordan',
      userImage: 'assets/images/photo_5917939320541530828_y (1).jpg',
      postImage: 'assets/images/photo_5917939320541530827_y (1).jpg',
      caption: ' good night ',
      likes: 'Jana and 8,200 others',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor = Colors.black;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: const Text(
          'Instagram',
          style: TextStyle(
            fontFamily: 'Billabong',
            fontSize: 32,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.camera_alt_outlined, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.video_call_outlined, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.send_outlined, color: Colors.white),
            onPressed: () {
             
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DMScreen(), 
                ),
              );
            },
          ),
        ],
      ),

      body: Column(
        children: [

          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: storiesImages.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return _buildStoryItem(
                    isYourStory: true,
                    username: 'Your Story',
                  );
                }
                return _buildStoryItem(
                  isLive: index == 2,
                  username: storiesNames[index - 1],
                  imagePath: storiesImages[index - 1],
                );
              },
            ),
          ),
          Divider(color: Colors.grey[800], height: 1),


          Expanded(
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) => PostCard(post: posts[index]),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),

    );
  }

  Widget _buildStoryItem({
    required String username,
    String? imagePath,
    bool isLive = false,
    bool isYourStory = false,
  }) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 32,
                backgroundColor: isYourStory ? Colors.transparent : Colors.purple,
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey[800],
                backgroundImage: isYourStory ? null : AssetImage(imagePath!),
                child: isYourStory ?  Icon(Icons.add, color: Colors.white, size: 30) : null,
              ),
              if (isLive)
                Positioned(
                  bottom: 0,
                  child: Container(
                    padding:  EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child:  Text(
                      'LIVE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 4),
          Text(username, style:  TextStyle(color: Colors.white, fontSize: 12)),
        ],
      ),
    );
  }
}