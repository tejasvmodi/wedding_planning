import 'package:flutter/material.dart';
import 'package:wedding_application/screens/Authentication/forms/forgotpassword.dart';
import 'package:wedding_application/screens/Home/home.dart';
import 'package:wedding_application/screens/components/OnboardingScreen.dart';

class LoginF extends StatefulWidget {
  const LoginF({Key? key}) : super(key: key);

  @override
  State<LoginF> createState() => _LoginFState();
}

class _LoginFState extends State<LoginF> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
                  builder: (context) => OnboardingScreen(),
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
              height: 100,
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

            Padding(
              padding: const EdgeInsets.all(18.0),
              child: AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Container(
                    width: 400.0, // Adjust the width as needed
                    height: 50.0, // Adjust the height as needed
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.purple,
                        width: 2.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Opacity(
                        opacity: _animation.value,
                        child: const TextField(
                          decoration: InputDecoration.collapsed(
                            hintText: 'Enter The UserName',
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(5.0),
              child: AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Container(
                    width: 350.0, // Adjust the width as needed
                    height: 50.0, // Adjust the height as needed
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.purple,
                        width: 2.0,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Opacity(
                        opacity: _animation.value,
                        child: const TextField(
                          decoration: InputDecoration.collapsed(
                            hintText: 'Enter The Password',
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
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
                      builder: (context) => const HomePage(),
                    ));
              },
              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(200, 50)),
                  backgroundColor:
                      const MaterialStatePropertyAll(Colors.lightBlueAccent)),
              child: const Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}
