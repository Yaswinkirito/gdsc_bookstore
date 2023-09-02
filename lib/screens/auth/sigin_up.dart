import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gdsc_book_store/screens/auth/sign_in.dart';

import '../../components.dart';
import '../home.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final username = TextEditingController();
    final password = TextEditingController();
    final confirmPassword = TextEditingController();
    return Scaffold(
        body: Center(
      child: SizedBox(
          width: 398,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(
                  child: Text('Sign Up',
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
                  height: 15.0,
                ),
                Field(text: "Confirm Password", controller: confirmPassword),
                const SizedBox(
                  height: 46.0,
                ),
                GestureDetector(
                  onTap: () {
                    if (password.text.toString() ==
                            confirmPassword.text.toString() &&
                        password.text.toString().isNotEmpty &&
                        username.text.toString().isNotEmpty) {
                      FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                              email: username.text.toString(),
                              password: password.text.toString())
                          .then((value) => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => (const Home()))))
                          .onError((error, stackTrace) =>
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text("Sign up failed"),
                              )));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Sign up failed"),
                      ));
                    }
                  },
                  child: const Button(text: "SIGN UP"),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 42),
                    child: RichText(
                      text: TextSpan(
                        text: 'Have an account? ',
                        style: const TextStyle(color: Color(0xff0F0F10)),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Sign In',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              (const SignIn())));
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
