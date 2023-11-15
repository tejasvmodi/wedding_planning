import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:wedding_application/screens/Authentication/forms/loginform.dart';
import 'package:wedding_application/screens/Home/home.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int activePage = 0;

  final List<Map<String, String>> imageData = [
    {
      'imagePath': 'assets/images/indianwedding.png',
      'text':
          'Love is the key to a beautiful journey. Welcome to the world of wedding dreams and blissful planning. Let the adventure begin!',
    },
    {
      'imagePath': 'assets/images/weddingplanning3.png',
      'text':
          'In every detail, there lies the magic of a perfect wedding. Explore the art of planning with passion and joy. Your dream day awaits!',
    },
    {
      'imagePath': 'assets/images/weeding.png',
      'text':
          'As you embark on the journey of a lifetime, let the planning begin! Start crafting your perfect day with love and excitement. Cheers to a magical wedding!',
    },
    // Add more image paths and text as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height,
                viewportFraction: 1.0,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(() {
                    activePage = index;
                  });
                },
              ),
              items: imageData.map((data) {
                return Builder(
                  builder: (BuildContext context) {
                    return Stack(
                      children: [
                        Image.asset(
                          data['imagePath']!,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        Positioned(
                          bottom: 20.0,
                          left: 20.0,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 300, // Adjust the width as needed
                                  child: Text(
                                    data['text']!,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16.0),
                                if (activePage == imageData.length - 1)
                                // third page start button ... code
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginF()));
                                      // Handle the button click
                                    },
                                  style: ElevatedButton.styleFrom(backgroundColor: Colors.white,fixedSize: const Size(200, 50)),  
                                    child: const Center(child: Text('Get Started',style: TextStyle(fontSize: 20,),)),
                                  ),
                                // if (activePage != imageData.length - 1)
                                  Padding(
                                    // dot indicator for .....started 
                                    padding: const EdgeInsets.only(top: 16.0),
                                    child: DotsIndicator(
                                      dotsCount: imageData.length,
                                      position: activePage.toInt(),
                                      decorator: const DotsDecorator(
                                        size: Size.square(9.0),
                                        activeSize: Size(18.0, 9.0),
                                        color:
                                            Colors.grey, // Inactive dot color
                                        activeColor:
                                            Colors.blue, // Active dot color
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
