import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/Image.dart';
import 'package:flutter_application_1/Widgets/UserHomeOne.dart';

class UserHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UserHomeOne(),
              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: ImageR(),
                ),
              )
            ]),
      ),
    );
  }
}
