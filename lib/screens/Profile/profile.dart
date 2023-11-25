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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 250,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 5),
                      image: const DecorationImage(
                          image: AssetImage("assets/images/budget.png")),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 2,bottom: 10 ),
                    child: Text("Tejasv",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only( top: 10,bottom: 10, left: 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Bootstrap.bag_check),
                  SizedBox(
                    width: 20,
                  ),
                  Text("My Booking",style: TextStyle(fontSize: 16),),
                ],
              ),
            ),
            const SizedBox(
                width: 300,
                child: Divider(
                  color: Colors.black26,
                )
                ),
      
      
            const Padding(
              padding: EdgeInsets.only( top: 10,bottom: 10, left: 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Bootstrap.diamond_half),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Recommendation",style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
             const SizedBox(
                width: 300,
                child: Divider(
                  color: Colors.black26,
                )
                ),
            const Padding(
              padding: EdgeInsets.only( bottom: 10,top: 10, left: 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Bootstrap.map_fill),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Location",style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
            const SizedBox(
                width: 300,
                child: Divider(
                  color: Colors.black26,
                )
                ),
            const Padding(
              padding: EdgeInsets.only( top: 10 ,bottom: 10, left: 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Bootstrap.people_fill),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Join A Wedding",style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
            const SizedBox(
                width: 300,
                child: Divider(
                  color: Colors.black26,
                )
                ),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Bootstrap.telegram),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Collaboration",style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
             const SizedBox(
                width: 300,
                child: Divider(
                  color: Colors.black26,
                )
                ),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Bootstrap.phone_fill),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Contact Support",style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
             const SizedBox(
                width: 300,
                child: Divider(
                  color: Colors.black26,
                )
                ),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Bootstrap.pencil_fill),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Write a Review",style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
             const SizedBox(
                width: 300,
                child: Divider(
                  color: Colors.black26,
                )
                ),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Bootstrap.outlet),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Log In/Out",style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
      
          ],
        ),
      ),
    );
  }
}
