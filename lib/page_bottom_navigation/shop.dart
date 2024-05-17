import 'dart:collection';
import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:groceries_project/bottom_page/navigation_page.dart';

class shop extends StatefulWidget {
  const shop({super.key});

  @override
  State<shop> createState() => _shopState();
}
CarouselController controller = CarouselController();
class _shopState extends State<shop> {
  List<String> pic = [
    "assets/111f64111cb1b0e9d435abffa982a831.jpg",
    "assets/713a0cccc1a347aaa7075fbbcb8a0ba5.jpg",
    "assets/fca58cb1c18249784dc22b93cf8fd5d3.jpg"
  ];
   int currentIndex = 0;

   var Controller=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left:10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 197, top: 58),
            child: Image.asset("assets/Group (4).png"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on),
              Text(
                "Dhaka, Banassre",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 344,
            height: 51,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(Icons.search_rounded),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search Store",
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
          ),SizedBox(height: 20,), CarouselSlider.builder(
              carouselController: controller,
            itemCount: pic.length,

            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                Container(
                  child: Container(
                    width: 300,
                    height: 100,
                    child: Image.asset(
                      pic[itemIndex],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
            options: CarouselOptions(

                autoPlay: false, viewportFraction: 0.9, height: 120,

                enlargeCenterPage: true,

              onPageChanged: (index, reason) {
                setState(() {
                currentIndex = index ;
                });
              }),


          ),
          Center(
            child: DotsIndicator(
              dotsCount: pic.length,
              position: currentIndex,decorator: DotsDecorator(


              activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            ),

            ),
          )
        ]),
      ),
    );
  }
}
