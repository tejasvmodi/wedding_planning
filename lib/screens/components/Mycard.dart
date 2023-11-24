
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String imageUrl;
  final String text;

  MyCard({required this.imageUrl, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: Card(
        elevation: 4.0,
        margin: const EdgeInsets.all(3.0),
        child: Column(
          children: [
            Image.asset(
              imageUrl,
              height: 120.0, // Set the desired height of the image
               // Take up the full width of the card
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
