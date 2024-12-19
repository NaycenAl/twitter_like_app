import 'package:flutter/material.dart';
import 'package:twitter_like/components/CustomTweet.dart';
import 'package:twitter_like/components/MyButton.dart';
import 'package:twitter_like/components/loginForm.dart';

class TweetsList extends StatefulWidget {
  const TweetsList({super.key});

  @override
  State<TweetsList> createState() => _TweetsListState();
}

class _TweetsListState extends State<TweetsList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
        ],
      ),
    );
  }
}
