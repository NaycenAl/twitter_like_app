import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String label;
  MyButton({super.key, required this.label});

  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: TextButton(
        onPressed: () {},
        child: Text(
          label,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
