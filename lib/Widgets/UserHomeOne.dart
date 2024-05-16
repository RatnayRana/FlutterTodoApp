import 'dart:html';

import 'package:flutter/material.dart';

class UserHomeOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 23, vertical: 23),
            width: 160,
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                      text: "Dare to Innovate with ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                      children: const <TextSpan>[
                        TextSpan(
                            text: 'Gofit',
                            style: TextStyle(
                                fontSize: 34,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold))
                      ]),
                )
              ],
            ),
          ),
          Container(
            width: 200,
            padding: EdgeInsets.only(right: 78),
            margin: EdgeInsets.only(top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back),
                Icon(Icons.arrow_forward),
              ],
            ),
          )
        ],
      ),
    );
  }
}
