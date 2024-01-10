import 'package:flutter/material.dart';
import 'package:flutter_bottomsheet/sidebar/sidebar.dart';
import '../pages/homepage.dart';

class SideBarLayout extends StatelessWidget {
  const SideBarLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HomePage(),
          SideBar(),
        ],
      ),
    );
  }
}
