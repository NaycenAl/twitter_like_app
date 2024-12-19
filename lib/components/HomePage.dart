import 'package:flutter/material.dart';
import 'package:twitter_like/MyColors.dart';
import 'package:twitter_like/components/loginForm.dart';
import 'package:twitter_like/components/myProfile.dart';
import 'package:twitter_like/components/tweets-list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int _currentIndex = 1;

  final List<Widget> _pages = [
    const MyProfile(),
    const TweetsList(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Twitter-Like',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: MyColors.primaryColor,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: MyColors.primaryColor,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'My Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}
