import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wedding_application/screens/components/CustomAppBar.dart';
import 'package:wedding_application/screens/components/Mycard.dart';
import 'package:wedding_application/screens/components/drawer.dart';
import 'package:wedding_application/screens/components/horizontalcard.dart';


class HomePage extends StatelessWidget {
  final List<String> items = [
    "assets/images/indianwedding1.png",
    "assets/images/weddingplanning3.png",
  ];

   HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const CustomAppBar(),
      drawer: const drawer(),
      body: Container(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
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
                      width: MediaQuery.of(context).size.width,
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
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MyCard(
                      imageUrl: "assets/images/indianwedding.png",
                      text: "venue",
                      className: "HomePage"),
                  MyCard(
                      imageUrl: "assets/images/indianwedding2.png",
                      text: "catering",
                      className: "HomePage"),
                  MyCard(
                      imageUrl: "assets/images/weddingwallpepar.png",
                      text: "photography",
                      className: "HomePage"),
                  MyCard(
                      imageUrl: "assets/images/weeding.png",
                      text: "decor",
                      className: "HomePage"),
                ],
              ),
            ),
            const SingleChildScrollView(
              child: Column(
                children: [
                  //there is horizontal card widget 
                  Horizontalcard(
                    imageUrl1: "assets/images/budget.png",
                    imageUrl2: 'assets/images/invitation.png',
                    text1: 'Budget',
                    text2: 'Invitation',
                    className1: 'HomePage',
                    className2: 'HomePage',
                  ),
                  Horizontalcard(
                    imageUrl1: "assets/images/Guest_list.png",
                    imageUrl2: 'assets/images/checklist.png',
                    text1: 'Guest-List',
                    text2: 'Check-List',
                    className1: 'HomePage',
                    className2: 'HomePage',
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
