import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/UserHome.dart';

class CardNewView extends StatelessWidget {
  String place;
  String Country;
  String Description;
  CardNewView({
    required this.place,
    required this.Country,
    required this.Description,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UserHome()),
          );
        },
        child: Container(
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 23, vertical: 23),
                    width: 400,
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(place), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsetsDirectional.only(bottom: 34),
                                padding: EdgeInsets.symmetric(horizontal: 34),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      Country,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Container(
                                        margin:
                                            EdgeInsets.only(left: 45, top: 12),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.place_rounded,
                                              color: Colors.white,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 23),
                                              child: Text(
                                                Description,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 8),
                                              ),
                                            )
                                          ],
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
