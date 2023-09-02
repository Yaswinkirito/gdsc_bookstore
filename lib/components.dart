import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 278,
        decoration: const BoxDecoration(
            color: Color(0xff0F0F10),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Center(
          child: Text(text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins")),
        ));
  }
}

class Field extends StatelessWidget {
  const Field({super.key, required this.text, required this.controller});
  final String text;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 278.0,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(35)),
      child: TextField(
        controller: controller,
        cursorColor: Colors.grey.shade700,
        decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 0.5),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 0.5),
            ),
            labelText: text,
            labelStyle: const TextStyle(color: Colors.grey)),
      ),
    );
  }
}
