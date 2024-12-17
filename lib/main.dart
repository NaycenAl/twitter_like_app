import 'package:flutter/material.dart';
import 'package:twitter_like/components/CustomTweet.dart';
import 'package:twitter_like/components/MyButton.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Twitter-Like",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 73, 47, 145),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: MyButton(
                          label: 'New',
                        ),
                      ),
                      Expanded(child: MyButton(label: 'Home')),
                      Expanded(child: MyButton(label: 'Search')),
                    ]),
                CustomTweet()
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_sharp),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_sharp),
              label: 'My Account',
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(HomePage());
}
