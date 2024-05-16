import 'package:flutter/material.dart';

class ImageR extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.all(10)),
      child: Row(
        children: [
          Image.network(
            "https://cdn.pixabay.com/photo/2015/01/06/16/14/woman-590490_1280.jpg",
            width: 200,
            height: 241,
          )
        ],
      ),
    );
  }
}
