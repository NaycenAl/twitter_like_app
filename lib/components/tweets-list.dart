import 'package:flutter/material.dart';
import 'package:twitter_like/components/CustomTweet.dart';
import 'package:twitter_like/components/MyButton.dart';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:twitter_like/models/tweet.dart';

class TweetsList extends StatefulWidget {
  const TweetsList({super.key});

  @override
  State<TweetsList> createState() => _TweetsListState();
}

class _TweetsListState extends State<TweetsList> {
  List<Tweet> tweets = [];

  @override
  void setState(VoidCallback fn) {}

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Expanded(
          child: FutureBuilder(
              future: http.get(Uri.parse(
                  "https://raw.githubusercontent.com/Chocolaterie/EniWebService/main/api/tweets.json")),
              builder: (context, snapshot) {
                if (snapshot.hasData && snapshot.data?.body != null) {
                  var body = snapshot.data?.body!;
                  var json = convert.jsonDecode(body!);

                  tweets = List<Tweet>.from(
                      json.map((jsonTweet) => Tweet.fromJson(jsonTweet)));

                  return ListView.builder(
                      itemCount: tweets.length,
                      itemBuilder: (context, index) {
                        return CustomTweet(
                          tweet: tweets[index],
                        );
                      });
                }
                return CircularProgressIndicator();
              }),
        ),
      ],
    );
  }
}
