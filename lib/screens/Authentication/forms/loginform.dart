import 'package:flutter/material.dart';
import 'package:wedding_application/screens/Authentication/forms/forgotpassword.dart';
import 'package:wedding_application/screens/components/AppBar.dart';
import 'package:wedding_application/BottomNavigation.dart';
import 'package:wedding_application/screens/components/OnboardingScreen.dart';

class LoginF extends StatefulWidget {
  const LoginF({Key? key}) : super(key: key);

  @override
  State<LoginF> createState() => _LoginFState();
}

class _LoginFState extends State<LoginF> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OnboardingScreen(),
                ));
          },
          child: const Text(
            "Back",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 75,
            ),
            Title(
                color: Colors.black,
                child: const Text(
                  "Login",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                      fontSize: 32),
                )),

            //image code from belove
            SizedBox(
              height: 250,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                  child: const ClipOval(
                    child: Image(
                      image:
                          AssetImage("assets/images/weddingPlanninglogo.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text(
                    "Enter your Email",
                    style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                  label: Text(
                    "Enter your Password ",
                    style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotPassword(),
                      ));
                },
                child: const Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: 15, color: Colors.purple,
                    // decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            //Login button code from belove
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  const BottomNavigationBar123(),
                    ));
              },
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(200, 50)),
                  backgroundColor:
                      const MaterialStatePropertyAll(Colors.lightBlueAccent)),
              child: const Text(
                "Sign In",
                style: TextStyle(
                    fontSize: 20, fontFamily: String.fromEnvironment("Struti")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
