import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      // color: Colors.purple,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 3),
      ),
      alignment: Alignment.center,
      child: const Text(
        "Hello I am inside a container!",
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
