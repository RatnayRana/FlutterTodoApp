import 'package:flutter/material.dart';

class LatestProducts extends StatelessWidget {
  String url;
  String Name;
  LatestProducts({this.url = "", this.Name = ""});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10), // Adjust vertical spacing
      padding: EdgeInsets.symmetric(horizontal: 2),
      child: Column(children: [
        Container(
            margin: EdgeInsets.symmetric(horizontal: 23),
            child: Row(
              children: [
                Image.network(
                  url,
                  fit: BoxFit.cover,
                  width: 120,
                  height: 120,
                ),
                Container(
                    child: Padding(
                  padding: EdgeInsets.only(left: 23),
                  child: Text(Name),
                ))
              ],
            ))
      ]),
    );
  }
}
