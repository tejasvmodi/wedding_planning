import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      centerTitle: false,
      elevation: 0,
      title: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade200,
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search ',
            hintStyle: TextStyle(fontSize: 16.5,fontWeight: FontWeight.w500),
            prefixIcon: Icon(
              Icons.search,
              size: 24,
              color: Colors.grey.shade500,
            ),
          ),
          style: TextStyle(color: Colors.black,fontSize: 16.5),
        ),
      ),
    );
  }
}
