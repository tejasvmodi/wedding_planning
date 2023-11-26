import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CheckList extends StatefulWidget {
  const CheckList({super.key});

  @override
  State<CheckList> createState() => _CheckListState();
}

class _CheckListState extends State<CheckList> {
  List<String> choice = [
    "item 1",
    "item 2",
    "item 3",
    "item 4",
  ];

  late List<bool> items;

  @override
  void initState() {
    super.initState();
    items = List.generate(choice.length, (index) => false);
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
          TextButton(
            onPressed: () {
              ClearOne();
            },
            child: const Text(
              "Clear",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(choice[index]),
                  ),
                  tileColor: items[index] ? Colors.grey : null,
                  trailing: items[index] ? const Icon(Bootstrap.check) : null,
                  onTap: () {
                    if (!items[index]) {
                      _toggleremover(index);
                    }
                  },
                ),
                 SizedBox(
                  // width: ,
                  child: Divider(endIndent: 20,indent: 23,color: Colors.grey.shade600,),
                )
              ],
              
            );
          },
          itemCount: choice.length),
    );
  }

  void _toggleremover(int index) {
    setState(() {
      items[index] = true;
    });
  }


  // ignore: non_constant_identifier_names
  void ClearOne() {
    setState(() {
      final List<int> removeitems = [];
      for (int i = 0; i < choice.length; i++) {
        if (items[i]) {
          removeitems.add(i);
        }
      }

      for (int i = removeitems.length - 1; i >= 0; i--) {
        int index = removeitems[i];
        choice.removeAt(index);
        items.removeAt(index);
      }
    });
  }
}
