import 'package:flutter/material.dart';
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
                color: Colors.blue,
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
            padding: const EdgeInsets.only(top: 12, bottom: 30, left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.home),
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
                  child: const Text("item 1 "),
                )
              ],
            ),
          ),
                      Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 30, left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.home),
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
                  child: const Text("item 2 "),
                )
              ],
            ),
          ),
                      Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 30, left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.home),
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
                  child: const Text("item 3 "),
                )
              ],
            ),
          ),
                      Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 30, left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.home),
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
                  child: const Text("item 4 "),
                )
              ],
            ),
          ),
                      Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 30, left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.home),
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
                  child: const Text("item 5 "),
                )
              ],
            ),
          ),
                      Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 30, left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.home),
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
                  child: const Text("item 6 "),
                )
              ],
            ),
          ),
                      Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 30, left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.home),
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
                  child: const Text("item 7"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}