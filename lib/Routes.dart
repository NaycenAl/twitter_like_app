import 'package:flutter/material.dart';
import 'package:twitter_like/components/HomePage.dart';
import 'package:twitter_like/components/loginForm.dart';
import 'package:twitter_like/components/tweets-list.dart';
import 'package:twitter_like/main.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/': (context) => const LoginForm(),
      '/homepage': (context) => HomePage(),
      '/tweets-list': (context) => const TweetsList(),
    };
  }
}
