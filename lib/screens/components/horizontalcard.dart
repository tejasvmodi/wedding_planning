import 'package:flutter/material.dart';
import 'package:wedding_application/screens/Home/home.dart';
import 'package:wedding_application/screens/components/OnboardingScreen.dart';

class Horizontalcard extends StatelessWidget {
  const Horizontalcard(
      {super.key,
      required this.imageUrl1,
      required this.imageUrl2,
      required this.text1,
      required this.text2,
      required this.className1,
      required this.className2});
  final String imageUrl1;
  final String imageUrl2;
  final String text1;
  final String text2;
  final String className1;
  final String className2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            const SizedBox(height: 15),
             Text(
               text1,
              style: const TextStyle(fontSize: 18),
            ),
            InkWell(
              child:  SizedBox(
                width: 150,
                child: DecoratedBox(decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),child: Image.asset(imageUrl1),)),
              onTap: () {
                Map<String, Function> classMap = {
                  'HomePage': () => HomePage(),
                  'OnboardingScreen': () => const OnboardingScreen(),
                  // Add more class names and their corresponding class creation functions
                };

                // Fetch the class creation function based on the provided className
                Function? classBuilder = classMap[className1];

                if (classBuilder != null) {
                  // Create an instance of the class and navigate to it
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => classBuilder()));
                } else {
                  print('Class $className1 not found.');
                }
              },
            )
          ],
        ),
        const SizedBox(height: 10),
        Column(
          children: [
             Text(
              text2,
              style: const TextStyle
              (fontSize: 18),

            ),
            InkWell(
               child:  SizedBox(
                width: 150,
                height: 150,
                child: DecoratedBox(decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),child: Image.asset(imageUrl2),)),
              onTap: () {
                Map<String, Function> classMap = {
                  'HomePage': () => HomePage(),
                  'OnboardingScreen': () => const OnboardingScreen(),
                  // Add more class names and their corresponding class creation functions
                };

                // Fetch the class creation function based on the provided className
                Function? classBuilder = classMap[className2];

                if (classBuilder != null) {
                  // Create an instance of the class and navigate to it
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => classBuilder()));
                } else {
                  print('Class $className2 not found.');
                }
              },
            ),
          ],
        ),
      ],
    );
  }
}
