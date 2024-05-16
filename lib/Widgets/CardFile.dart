import 'package:flutter/material.dart';

class CardFile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      margin: EdgeInsets.symmetric(horizontal: 23, vertical: 23),
      decoration: BoxDecoration(
          color: Colors.amberAccent, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            "https://media.istockphoto.com/id/487725207/photo/medicinal-neem-leaves-and-flower.jpg?s=1024x1024&w=is&k=20&c=me2YyqsZ77Lqcd7PKTK6_0M0kFYTylx5MsOjzSdzK7k=",
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            width: double
                .infinity, // Expand the container to match the width of the parent
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Indoor",
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    SizedBox(width: 5), // Add some space between the texts
                    Text("Plant",
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
