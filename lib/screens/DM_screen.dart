
// lib/screens/dm_screen.dart
import 'package:easy_localization/easy_localization.dart';



import 'package:flutter/material.dart';
import 'package:insgram1/models/message_model.dart';

class DMScreen extends StatelessWidget {
  final List<User> users = [
    User(
      name: 'Heba',
      lastMessage: 'Have a nice day, JOJO!',
      imagePath: 'assets/images/photo_5917939320541530829_y (1).jpg',
      time: 'now',
    ),
    User(
      name: 'Jood',
      lastMessage: 'I heard this is a good movie, s...',
      imagePath: 'assets/images/photo_5852640523263789477_w.jpg',
      time: 'now',
    ),
    User(
      name: 'Jana',
      lastMessage: 'See you on the next meeting!',
      imagePath: 'assets/images/photo_5917939320541530824_y.jpg',
      time: '15m',
    ),
    User(
      name: 'Lojuin',
      lastMessage: 'Sounds good 😂😂😂',
      imagePath: 'assets/images/photo_5917939320541530826_y (2).jpg',
      time: '20m',
    ),
    User(
      name: 'Bisan',
      lastMessage: 'The new design looks cool, b...',
      imagePath: 'assets/images/photo_5917939320541530827_y (1).jpg',
      time: '1m',
    ),
    User(
      name: 'Hadeel',
      lastMessage: 'Thank you, bro!',
      imagePath: 'assets/images/photo_5917939320541530828_y (1).jpg',
      time: '2h',
    ),
    User(
      name: 'Malak',
      lastMessage: 'Yeap, I’m going to travel in To...',
      imagePath: 'assets/images/photo_5917939320541530829_y (1).jpg',
      time: '4h',
    ),
    User(
      name: 'Hala',
      lastMessage: 'Instagram UI is pretty good',
      imagePath: 'assets/images/photo_5917939320541530831_y.jpg',
      time: '5h',
    ),
    User(
      name: 'Aryam',
      lastMessage: 'Liked your message',
      imagePath: 'assets/images/photo_5917939320541530832_y.jpg',
      time: '15h',
    ),
    User(
      name: 'Abeer',
      lastMessage: 'seen',
      imagePath: 'assets/images/photo_5917939320541530834_y.jpg',
      time: '7h',
    ),
    User(
      name: 'Loui',
      lastMessage: 'Instagram UI is pretty good',
      imagePath: 'assets/images/photo_5917939320541530835_y (1).jpg',
      time: '1h',
    ),
    User(
      name: 'Osama',
      lastMessage: 'Do you read this message?',
      imagePath: 'assets/images/photo_5917939320541530838_y.jpg',
      time: '10h',
    ),
    User(
      name: 'Tabark',
      lastMessage: 'Thank you, Jana!',
      imagePath: 'assets/images/photo_5917939320541530839_y (1).jpg',
      time: '11h',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final Color textColor = Colors.white;
    final Color backgroundColor = Colors.black;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text(
          'Direct'.tr(),
          style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: textColor),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.video_call_outlined, color: textColor),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add_box_outlined, color: textColor),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search'.tr(),
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: const Color(0xFF262626),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
              ),
              style: TextStyle(color: textColor),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(user.imagePath),
                  ),
                  title: Text(user.name, style: TextStyle(color: textColor)),
                  subtitle: Text(
                    user.lastMessage,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  trailing: Text(
                    user.time,
                    style: const TextStyle(color: Colors.grey),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
