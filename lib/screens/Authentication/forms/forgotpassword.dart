import 'package:flutter/material.dart';
import 'package:wedding_application/screens/Authentication/forms/loginform.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(height: 150),
          Title(
              color: Colors.black,
              child: const Text(
                "Forgot Password !",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, right: 30),
            child: Text(
              "Enter your email address and we'll send you an email with instructions to reset your password.",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
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
          const SizedBox(height: 20,),
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginF(),
                      ));
                },
                              style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(const Size(200, 50)),
                  backgroundColor:
                      const MaterialStatePropertyAll(Colors.green)),
            child: const Text("Send Code",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),)),
          )
        ],
      ),
    );
  }
}
