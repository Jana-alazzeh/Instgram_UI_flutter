import 'package:flutter/material.dart';
import 'package:insgram1/models/post_model.dart';
class PostCard extends StatelessWidget {
  final PostModel post;

  PostCard({required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage(post.userImage),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(post.userName, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  Text(post.location, style: TextStyle(color: Colors.grey[400], fontSize: 12)),
                ],
              ),
              const Spacer(),
              Icon(Icons.more_horiz, color: Colors.white),
            ],
          ),
        ),


        Stack(
          children: [
            Image.asset(
              post.postImage,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text('1/3', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),


        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Row(
            children: [
              Icon(Icons.favorite_border, color: Colors.white, size: 28),
              const SizedBox(width: 16),
              Icon(Icons.chat_bubble_outline, color: Colors.white, size: 28),
              const SizedBox(width: 16),
              Icon(Icons.send_outlined, color: Colors.white, size: 28),
              const Spacer(),
              Icon(Icons.bookmark_border, color: Colors.white, size: 28),
            ],
          ),
        ),


        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Liked by ${post.likes}', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              const SizedBox(height: 4),
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 14),
                  children: [
                    TextSpan(
                      text: post.userName,
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    TextSpan(
                      text: ' ${post.caption}',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ],
    );
  }
}
