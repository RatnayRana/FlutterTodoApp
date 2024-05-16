import 'package:flutter/material.dart';
import '../Widgets/product.dart';

class ProductCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: double.infinity,
        title: const Text("Foresst"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 7, vertical: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello User",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: Colors.black),
              ),
              Container(
                width: 220,
                // height: 200,
                child: Column(children: [
                  Text(
                    "What do you want to explore Today",
                    style: TextStyle(fontSize: 23, color: Colors.black),
                  ),
                ]),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [MyWidget()],
                ),
              ),
              Container(
                width: 220,
                margin: EdgeInsets.only(top: 12),
                // height: 200,
                child: Column(children: [
                  Text(
                    "What do you want to explore Today",
                    style: TextStyle(fontSize: 23, color: Colors.black),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
