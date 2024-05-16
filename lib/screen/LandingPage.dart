import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/CardFile.dart';
import 'package:flutter_application_1/Widgets/CategoryHeading.dart';
import 'package:flutter_application_1/Widgets/LatestProducts.dart';
import 'package:flutter_application_1/Widgets/RecentlyView.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: double.infinity,
        title: const Text(
          "Discovery",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 23),
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.search),
                  Icon(Icons.mic),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CategoryHeading(title: 'Recommended', isActive: true),
                    CategoryHeading(title: 'Indoor'),
                    CategoryHeading(title: 'Outdoor'),
                  ],
                ),
              ),
            ),
            Container(
                child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: [CardFile(), CardFile(), CardFile(), CardFile()]),
            )),
            Container(
                child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Recently Reviewed",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          RecentlyView(
                            url:
                                "https://cdn.pixabay.com/photo/2013/04/03/21/25/flower-100263_1280.jpg",
                            Description: "Delicate petals of various hues ado",
                            Name: "Rose Flower",
                          ),
                          RecentlyView(
                            url:
                                "https://cdn.pixabay.com/photo/2024/02/26/14/06/flower-8598044_1280.jpg",
                            Description: "I like taking ",
                            Name: "BlUE Poppy",
                          ),
                          RecentlyView(
                            url:
                                "https://cdn.pixabay.com/photo/2020/07/08/08/07/daisy-5383056_1280.jpg",
                            Description: "I like taking  ",
                            Name: "BlUE Poppy",
                          ),
                          RecentlyView(
                            url:
                                "https://cdn.pixabay.com/photo/2020/07/08/08/07/daisy-5383056_1280.jpg",
                            Description: "I like taking  ",
                            Name: "BlUE Poppy",
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 23),
                                child: Text(
                                  "Latest Product",
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            LatestProducts(
                              url:
                                  "https://cdn.pixabay.com/photo/2017/02/07/16/47/kingfisher-2046453_1280.jpg",
                              Name: "Raven",
                            ),
                            LatestProducts(
                              url:
                                  "https://cdn.pixabay.com/photo/2023/11/09/19/36/zoo-8378189_1280.jpg",
                              Name: "Peacock",
                            ),
                            LatestProducts(
                              url:
                                  "https://cdn.pixabay.com/photo/2017/05/08/13/15/bird-2295431_1280.jpg",
                              Name: "Pigeons",
                            )
                          ],
                        ),
                      ),
                    )
                  ]),
            ))
          ],
        ),
      ),
    );
  }
}
