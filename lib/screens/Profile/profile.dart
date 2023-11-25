import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:wedding_application/screens/components/OnboardingScreen.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              height: 200,
              width: 250,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 5),
                image: const DecorationImage(
                    image: AssetImage("assets/images/budget.png")),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 05, bottom: 10, left: 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Bootstrap.bag_check),
                SizedBox(
                  width: 20,
                ),
                Text("Budget"),
              ],
            ),
          ),
          const SizedBox(
              width: 300,
              child: Divider(
                color: Colors.black,
              )
              ),


          const Padding(
            padding: EdgeInsets.only(top: 12, bottom: 20, left: 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Bootstrap.bag_check),
                SizedBox(
                  width: 20,
                ),
                Text("Budget"),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 12, bottom: 20, left: 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Bootstrap.bag_check),
                SizedBox(
                  width: 20,
                ),
                Text("Budget"),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 12, bottom: 20, left: 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Bootstrap.bag_check),
                SizedBox(
                  width: 20,
                ),
                Text("Budget"),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 12, bottom: 20, left: 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Bootstrap.bag_check),
                SizedBox(
                  width: 20,
                ),
                Text("Budget"),
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
