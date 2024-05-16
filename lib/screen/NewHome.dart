import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/CardNewView.dart';

class NewHome extends StatelessWidget {
  List<CardNewView> placeList = [
    CardNewView(
        place:
            "https://cdn.pixabay.com/photo/2024/04/20/11/47/ai-generated-8708404_1280.jpg",
        Country: "Bhutan",
        Description: "Memorial Chorten"),
    CardNewView(
        place:
            "https://cdn.pixabay.com/photo/2022/12/02/21/20/blue-7631674_640.jpg",
        Country: "India",
        Description: "Gauwati"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 23, vertical: 23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Places",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Popular Places",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: placeList.map((CardNewView el) {
                  return CardNewView(
                      place: el.place,
                      Country: el.Country,
                      Description: el.Description);
                }).toList()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
