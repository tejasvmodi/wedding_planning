import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:wedding_application/screens/Home/checklist.dart';
import 'package:wedding_application/screens/Profile/profile.dart';
import 'package:wedding_application/screens/components/OnboardingScreen.dart';

class drawer extends StatelessWidget {
  const drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const SizedBox(
            height: 120,
            //header of the Drawer
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
              ),
              child: Center(
                  child: Text(
                "Menu",
                style: TextStyle(fontSize: 30),
              )),
            ),
          ),

          //items of the drawer portions
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 20, left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Bootstrap.shop),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OnboardingScreen(),
                        ));
                  },
                  child: const Text("Vendors",),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 20, left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Bootstrap.bell),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OnboardingScreen(),
                        ));
                  },
                  child: const Text("Notification"),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 20, left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Bootstrap.bag_check),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OnboardingScreen(),
                        ));
                  },
                  child: const Text("Budget"),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 20, left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Bootstrap.messenger),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OnboardingScreen(),
                        ));
                  },
                  child: const Text("Collaboration"),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 20, left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Bootstrap.card_checklist),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CheckList(),
                        ));
                  },
                  child: const Text("CheckList "),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 20, left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Bootstrap.postage),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OnboardingScreen(),
                        ));
                  },
                  child: const Text("Invitation "),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 20, left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Bootstrap.star),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OnboardingScreen(),
                        ));
                  },
                  child: const Text("GuestList"),
                )
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 20, left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Bootstrap.person),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Profile(),
                        ));
                  },
                  child: const Text("Account"),
                )
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 20, left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Bootstrap.question),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OnboardingScreen(),
                        ));
                  },
                  child: const Text("Help"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
