import 'package:flutter/material.dart';
import 'package:twitter_like/MyColors.dart';

class MyButton extends StatelessWidget {
  String label;
  MyButton({super.key, required this.label});

  Widget build(BuildContext context) {
    return Container(
      color: MyColors.secondaryColor,
      child: TextButton(
        onPressed: () {},
        child: Text(
          label,
          style: TextStyle(color: MyColors.textcolor),
        ),
      ),
    );
  }
}
