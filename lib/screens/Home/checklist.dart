import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CheckList extends StatefulWidget {
  const CheckList({super.key});

  @override
  State<CheckList> createState() => _CheckListState();
}

class _CheckListState extends State<CheckList> {
  final List<String> choice = [
    "item 1",
    "item 2",
    "item 3",
    "item 4",
  ];

 late List<bool> items;
   
    @override
   void initState() {
     super.initState(
     );
     items= List.generate(choice.length, (index) => false);
     
   }
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
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.playlist_add_check_circle_rounded))
        ],
      ),
      body: ListView.builder(itemBuilder: 
      (context, index) {
        return ListTile(
          title: Text(choice[index]),
          tileColor: items[index]?Colors.grey:null,
          trailing: items[index]?const Icon(Bootstrap.check):null,
          onTap: () {
            _toggleremover(index);
          },
        );
      },
      itemCount: choice.length),
    );
  }

  void _toggleremover(int index) {
    setState(() {
     items[index]=!items[index];
    });
  }
}
