import 'package:flutter/material.dart';

class CategoryHeading extends StatelessWidget {
  String title;
  bool isActive;

  CategoryHeading({required this.title, this.isActive = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 34),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 24,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal),
      ),
    );
  }
}
