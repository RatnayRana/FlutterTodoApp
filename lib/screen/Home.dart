import 'package:flutter/material.dart';
import '../Widgets/product.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: double.infinity,
        title: const Text("hlo"),
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 23),
          width: double.infinity,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34.0),
                child: Center(
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2024/05/05/05/55/goose-8740266_1280.jpg",
                    width: double.infinity,
                    // You can adjust the height as per your requirement
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                // Just to visualize the container's space
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 34),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome to the",
                        style: TextStyle(fontSize: 23, color: Colors.black),
                      ),
                      Text(
                        "World of insects",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(left: 200),
                width: 400,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          "Insects (from Latin insectum) are hexapod invertebrates of the class Insecta. They are the largest group within the arthropod phylum. Insects have a chitinous exoskeleton, a three-part body (head, thorax and abdomen), three pairs of jointed legs, compound eyes, and a pair of")
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [MyWidget()]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
