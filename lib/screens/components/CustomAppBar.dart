import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: 280, // Adjust the width as needed
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                hintText: "Search Here... ",
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Bootstrap.chat)),
      ],
      backgroundColor: Colors.white38,
    );
  }
}
