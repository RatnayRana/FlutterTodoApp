import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.network(
          "https://cdn.pixabay.com/photo/2024/05/05/05/55/goose-8740266_1280.jpg",
          height: 500,
          width: 500,
          fit: BoxFit.cover,
        )
      ],
    );
  }
}
