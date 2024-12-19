import 'package:flutter/material.dart';

import 'package:twitter_like/Routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: Routes.getRoutes(),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
    );
  }
}

void main() {
  runApp(App());
}
