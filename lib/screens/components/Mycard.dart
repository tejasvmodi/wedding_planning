
import 'package:flutter/material.dart';
import 'package:wedding_application/screens/Pages/home.dart';
import 'package:wedding_application/screens/components/OnboardingScreen.dart';

class MyCard extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String className;
  

  const MyCard({super.key, required this.imageUrl, required this.text,  required this.className});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: Card(
        elevation: 4.0,
        margin: const EdgeInsets.all(3.0),
        child: Column(
          children: [
            InkWell(
              child: Image.asset(
                imageUrl,
                height: 120.0, // Set the desired height of the image
                 // Take up the full width of the card
                fit: BoxFit.cover,
              ),
              onTap: () {
               // Map of class names to their corresponding class creation functions
                Map<String, Function> classMap = {
                  'HomePage':()=>HomePage(),
                  'OnboardingScreen': () => const OnboardingScreen(),
                  // Add more class names and their corresponding class creation functions
                };

                // Fetch the class creation function based on the provided className
                Function? classBuilder = classMap[className];

                if (classBuilder != null) {
                  // Create an instance of the class and navigate to it
                  Navigator.push(context, MaterialPageRoute(builder: (context) => classBuilder()));
                } else {
                  print('Class $className not found.');
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(child: Text(text),onTap: () {
              },)
            ),
          ],
        ),
      ),
    );
  }
}

