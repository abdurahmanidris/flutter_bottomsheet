import 'package:flutter/material.dart';
import 'package:flutter_bottomsheet/modal_bottom_sheet.dart';
import 'package:flutter_bottomsheet/navbar.dart';
import 'package:flutter_bottomsheet/home_page.dart';
import 'package:flutter_bottomsheet/bottom_navigation_page.dart';
import 'package:flutter_bottomsheet/sidebar/sidebar_layout.dart';
// import 'package:flutter_bottomsheet/navigation_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const flutter_bottomsheet(),
      // home: const SideBarLayout(),
    );
  }
}

class flutter_bottomsheet extends StatelessWidget {
  const flutter_bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[400],
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: Icon(
              Icons.menu,
            ),
          );
        }),
        // leading: InkWell(
        //   onTap: _onMenuTap,
        //   child: const Icon(Icons.list, color: Colors.black),
        // ),
        title: const Text("Test App - 1"),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
      ),
      drawer: const NavBar(),
      body: const HomePage(),
      // body: Stack(children: [
      //   Container(color: Colors.white),
      // ]),
      bottomNavigationBar: const BottomBar(),
      bottomSheet: ModalBottomSheet(),
    );
  }

  // void _onMenuTap() {}
}
