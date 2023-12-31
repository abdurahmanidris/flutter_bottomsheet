import 'package:flutter/material.dart';
import 'package:helloflutter/navbar.dart';
import 'package:helloflutter/home_page.dart';
import 'package:helloflutter/bottom_navigation_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HelloFlutter(),
    );
  }
}

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[400],
        title: const Text("GeegsforGeegs"),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
      ),
      drawer: const NavBar(),
      body: const HomePage(),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
