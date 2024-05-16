import 'package:flutter/material.dart';

class RecentlyView extends StatelessWidget {
  String url;
  String Description;
  String Name;
  RecentlyView({this.url = "", this.Description = "", this.Name = ""});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 23, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 300,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(
                  url,
                  height: 120,
                  width: 120,
                ),
                Expanded(
                  child: Container(
                    height: 120,
                    width: 120,
                    margin: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text(Description), Text(Name)],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
