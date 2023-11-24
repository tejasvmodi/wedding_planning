import 'package:flutter/material.dart';

class CardRow extends StatelessWidget {
  final int cardCount;

  const CardRow({super.key, required this.cardCount});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: cardCount,
      itemBuilder: (context, index) {
        return CardWidget(label: 'Card $index');
      },
    );
  }
}

class CardWidget extends StatelessWidget {
  final String label;

  const CardWidget({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.all(8.0),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Placeholder(
              // Replace Placeholder with your actual widget or image
              color: Colors.grey,
              fallbackWidth: double.infinity,
              fallbackHeight: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                label,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}