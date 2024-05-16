import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/ImageWidget.dart';
import 'package:flutter_application_1/Widgets/UserHomeOne.dart';

class UserHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [UserHomeOne(), ImageWidget(),
            Container(
              margin: EdgeInsets.only(top:12),
              child: Column(children: [
              Text("Chrome notes topics of interest based on your recent browsing history. Also, sites that you visit can determine what you like. Later, sites can ask for this information to show you personalised ads. You can choose which topics and sites are used to show you ads")
            ],),)
            ]),
      ),
    );
  }
}
