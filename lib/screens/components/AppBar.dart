import 'package:flutter/material.dart';

class Appbar extends StatefulWidget {
  const Appbar({super.key});

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(

          title: Text("drawer"),
          actions: [
            Drawer(
              child: Row(
                children: [
                  Text("data"),
                ],
              ),
            )
         , ],
        ),
    );
  }
}