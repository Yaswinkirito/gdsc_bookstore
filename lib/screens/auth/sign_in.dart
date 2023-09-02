import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_book_store/screens/auth/sigin_up.dart';
import 'package:gdsc_book_store/screens/home.dart';
import 'package:flutter/gestures.dart';

import '../../components.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final username = TextEditingController();
    final password = TextEditingController();
    return Scaffold(
        // ignore: prefer_const_literals_to_create_immutables
        body: Center(
      child: SizedBox(
          width: 398,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(
                  child: Text('Sign In',
                      style: TextStyle(
                        color: Color(0xFF0F0F10),
                        fontSize: 32,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      )),
                ),
                const SizedBox(
                  height: 42.0,
                ),
                Field(text: "Username", controller: username),
                const SizedBox(
                  height: 21.0,
                ),
                Field(text: "Password", controller: password),
                const SizedBox(
                  height: 13.0,
                ),
                const Padding(
                    padding: EdgeInsets.only(left: 211),
                    child: Text("Forget Password?",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontFamily: "Poppins",
                          decoration: TextDecoration.underline,
                        ))),
                const SizedBox(
                  height: 77.0,
                ),
                GestureDetector(
                  onTap: () {
                    if (password.text.toString().isNotEmpty &&
                        username.text.toString().isNotEmpty) {
                      FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: username.text.toString(),
                              password: password.text.toString())
                          .then((value) => {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text("Signed in"),
                                )),
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => (const Home())))
                              })
                          .onError((error, stackTrace) => {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text("Sign In failed"),
                                ))
                              });
                    } else {
                      print("Hello");

                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Sign in failed"),
                      ));
                    }
                  },
                  child: const Button(text: "SIGN IN"),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 42),
                    child: RichText(
                      text: TextSpan(
                        text: 'Don’t Have an account? ',
                        style: const TextStyle(color: Color(0xff0F0F10)),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Sign Up',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              (const SignUp())));
                                },
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                                decoration: TextDecoration.none,
                              )),
                        ],
                      ),
                    )),
              ])),
    ));
  }
}
