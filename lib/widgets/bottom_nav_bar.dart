import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    if (index == 0) {
      Navigator.pushNamed(context, '/home');
    } else if (index == 4) {
      Navigator.pushNamed(context, '/profile');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey[600],
      currentIndex: _currentIndex,
      items: [

        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
          ),
          activeIcon: Icon(
            Icons.home,
          ),
          label: '',
        ),


        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: '',
        ),


        BottomNavigationBarItem(
          icon: Icon(
            Icons.ondemand_video_outlined,
          ),
          activeIcon: Icon(
            Icons.ondemand_video,
          ),
          label: '',
        ),


        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          activeIcon: Icon(Icons.favorite),
          label: '',
        ),


        BottomNavigationBarItem(
          icon: Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: _currentIndex == 4 ? Colors.white : Colors.transparent,
                width: 2,
              ),
            ),
            child: CircleAvatar(
              radius: 12,
              backgroundImage:
              AssetImage('assets/images/Untitled design (17).png'),
              backgroundColor: Colors.grey[800],
            ),
          ),
          label: '',
        ),
      ],
      onTap: _onItemTapped,
    );
  }
}
