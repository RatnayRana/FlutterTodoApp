import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 34),
      width: 600,
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10), // Same radius as above
        child: Image.network(
          'https://cdn.pixabay.com/photo/2018/07/01/11/42/royal-enfield-3509231_1280.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
