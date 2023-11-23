import 'package:flutter/material.dart';
import 'package:wedding_application/screens/Authentication/forms/forgotpassword.dart';
import 'package:wedding_application/screens/Authentication/forms/loginform.dart';
import 'package:wedding_application/screens/Home/home.dart';
import 'package:wedding_application/screens/components/OnboardingScreen.dart';
import 'package:wedding_application/screens/components/drawer.dart';

// ignore: camel_case_types
class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  int _currentIndex = 0;
  final TextEditingController _searchController = TextEditingController();

  // ignore: non_constant_identifier_names
  final List<Widget> _Items = [
    const HomePage(),
    const ForgotPassword(),
    const OnboardingScreen(),
    const LoginF(),
    const OnboardingScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          IconButton(onPressed: () {}, icon: const Icon(Icons.chat)),
        ],
        backgroundColor: Colors.white38,
      ),
      //drawer of the application...
    
      drawer: const drawer(),

      //...body ....
      //.

      body: _Items[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.black,
        selectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home),
            ),
            backgroundColor: Colors.red,
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home_repair_service_rounded),
              ),
              backgroundColor: Colors.redAccent,
              label: "vendor"),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person),
              ),
              backgroundColor: Colors.redAccent,
              label: "Account"),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home),
              ),
              backgroundColor: Colors.redAccent,
              label: "CheckList"),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.check),
            ),
            backgroundColor: Colors.redAccent,
            label: "CheckList",
          ),
        ],
      ),
    );
  }
}
