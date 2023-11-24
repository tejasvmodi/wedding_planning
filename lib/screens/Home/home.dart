import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:wedding_application/Splash_Screen.dart';
import 'package:wedding_application/screens/components/cardWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> items = [
    "assets/images/indianwedding1.png",
    "assets/images/weddingplanning3.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 300.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 300),
              viewportFraction: 0.8,
            ),
            items: items.map((assetPath) {
              return Builder(
                builder: (BuildContext context) {
                  return SizedBox(
                    width: 700,
                    child: Image.asset(
                      assetPath,
                      fit: BoxFit.fitWidth,
                    ),
                  );
                },
              );
            }).toList(),
          ),
          Container(
            color: Colors.pinkAccent,
            padding: const EdgeInsets.all(5.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              textDirection: TextDirection.rtl,
              children: [
                Text(
                  "120 Days Until the Big Day",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        
       
        ],
      ),
    );
  }
}
