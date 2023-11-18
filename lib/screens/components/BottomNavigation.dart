import 'package:flutter/material.dart';

class BottomNavigationBar123 extends StatelessWidget {
  const BottomNavigationBar123({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Row(
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.home),
                ),
                const Text("Home")
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home_filled),
            ),
          ],
        ),
      ),
    );
  }
}
