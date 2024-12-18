import 'package:flutter/material.dart';
import 'package:twitter_like/MyColors.dart';
import 'package:twitter_like/components/CustomTweet.dart';
import 'package:twitter_like/components/MyButton.dart';
import 'package:twitter_like/components/loginForm.dart';

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
          backgroundColor: MyColors.primaryColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Expanded(
                  child: MyButton(
                    icon: Icon(Icons.edit),
                  ),
                ),
                Expanded(child: MyButton(icon: Icon(Icons.home))),
                Expanded(child: MyButton(icon: Icon(Icons.search))),
              ]),
              CustomTweet(),
              LoginForm()
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 223, 212, 255),
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
