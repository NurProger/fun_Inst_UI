import 'package:flutter/material.dart';
import 'package:insta_ui/Views/Home_Screen.dart';
import 'package:insta_ui/Views/profile_screen.dart';
import 'package:insta_ui/Views/search_screen.dart';

class Main_Screen extends StatefulWidget {
  const Main_Screen({super.key});

  @override
  State<Main_Screen> createState() => _Main_ScreenState();
}

class _Main_ScreenState extends State<Main_Screen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {

    void selectedTab(int value){
      if(value == _currentIndex)return;
      setState(() {
        _currentIndex = value;
      });
    }
    return Scaffold(
      body: Center(
        child: IndexedStack(
          index: _currentIndex,
          children: const [
            Home_Screen(),
            SearchScreen(),
            ProFileScreen()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: "Search",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.ondemand_video_outlined),
          //   label: "Reels",
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: "Profile",
          ),
        ],
        onTap: selectedTab
      ),
    );
  }
}
