import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CheckList extends StatefulWidget {
  const CheckList({super.key});

  @override
  State<CheckList> createState() => _CheckListState();
}

class _CheckListState extends State<CheckList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          widthFactor: 2.5,
          child: Text(
            "CheckList",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        actions:  [
          IconButton(onPressed: () {
            
          }, icon: const Icon(Icons.playlist_add_check_circle_rounded))
        ],
      ),
    );
  }
}
