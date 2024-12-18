import 'package:flutter/material.dart';
import 'package:twitter_like/MyColors.dart';

class MyButton extends StatelessWidget {
  Icon icon;
  String? label;
  MyButton({super.key, required this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.secondaryColor,
      child: IconButton(
        onPressed: () {},
        icon: icon,
        color: Colors.white,
      ),
    );
  }
}
