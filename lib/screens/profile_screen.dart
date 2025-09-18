
import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color textColor = Colors.white;
    Color backgroundColor = Colors.black;
    Color secondaryTextColor = Colors.grey[400]!;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
          title: Row(
            children: [
              Text(
                '_jana_04_',
                style: TextStyle(
                  color: textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.keyboard_arrow_down, color: textColor),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.menu, color: textColor),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage('assets/images/Untitled design (17).png'),
                      ),
                      const Spacer(),
                      _buildStatColumn('3', 'Posts'),
                      const Spacer(),
                      _buildStatColumn('173', 'Followers'),
                      const Spacer(),
                      _buildStatColumn('866', 'Following'),
                      const Spacer(),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text('Jana', style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: 16)),
                    Text('Computer Science|ZU ', style: TextStyle(color: secondaryTextColor)),
                  Text('اللّهم انت اصلحت الصالحين قأصلحنا💗 ', style: TextStyle(color: secondaryTextColor)),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: secondaryTextColor),
                      ),
                      child: Text('Edit Profile', style: TextStyle(color: textColor)),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 90,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildHighlightItem('New', null, isNew: true),
                        _buildHighlightItem('جَ', 'assets/images/photo_5917939320541530838_y.jpg'),

                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            TabBar(
              indicatorColor: textColor,
              labelColor: textColor,
              unselectedLabelColor: secondaryTextColor,
              tabs: [
                Tab(icon: Icon(Icons.grid_on)),
                //tab(icon:Icon(Icons.repeat_rounded)),
                Tab(icon: Icon(Icons.person_pin_outlined)),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  _buildPhotoGrid(),
                  _buildPhotoGrid(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }

  Widget _buildStatColumn(String count, String label) {
    return Column(
      children: [
        Text(count, style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
        Text(label, style: TextStyle(color: Colors.white, fontSize: 14)),
      ],
    );
  }

  Widget _buildHighlightItem(String label, String? imagePath, {bool isNew = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey[800],
            child: isNew ? Icon(Icons.add, color: Colors.white) : null,
            backgroundImage: isNew ? null : AssetImage(imagePath!),
          ),
          const SizedBox(height: 4),
          Text(label, style: TextStyle(color: Colors.white, fontSize: 12)),
        ],
      ),
    );
  }


    Widget _buildPhotoGrid() {
      final List<String> images = [
        'assets/images/photo_5917939320541530838_y.jpg',
        'assets/images/photo_5917939320541530832_y.jpg',
        'assets/images/photo_5917939320541530834_y.jpg',
      ];

      return GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: images.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
        ),
        itemBuilder: (context, index) => Image.asset(
          images[index],
          fit: BoxFit.cover,
        ),
      );
    }

  }
