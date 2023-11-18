import 'package:flutter/material.dart';
import 'package:wedding_application/screens/Authentication/forms/forgotpassword.dart';
import 'package:wedding_application/screens/Authentication/forms/loginform.dart';
import 'package:wedding_application/screens/components/OnboardingScreen.dart';

class BottomNavigationBar123 extends StatefulWidget {
  const BottomNavigationBar123({super.key});

  @override
  State<BottomNavigationBar123> createState() => _BottomNavigationBar123State();
}

class _BottomNavigationBar123State extends State<BottomNavigationBar123> {
  int _currentIndex = 0;

  // ignore: non_constant_identifier_names
  final List<Widget> _Items = [
    const LoginF(),
    const ForgotPassword(),
    const OnboardingScreen(),
    const LoginF(),
    const OnboardingScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wedding Application"),
      ),
      body: _Items[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home),
              ),
              backgroundColor: Colors.black,
              label: "Home"),

          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home),
              ),
              backgroundColor: Colors.black,
              label: "Home"),

          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home),
              ),
              backgroundColor: Colors.black,
              label: "Home"),

          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home),
              ),
              backgroundColor: Colors.black,
              label: "Home"),

          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home),
              ),
              backgroundColor: Colors.black,
              label: "Home"),
        ],
      ),
    );
  }
}
