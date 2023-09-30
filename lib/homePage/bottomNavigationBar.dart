import 'package:flutter/material.dart';

import '../buildContainerBottomNAv.dart';

class MyHomeBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                  blurRadius: 20, color: Colors.grey, spreadRadius: 1)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BuildContainerBottomNav(icon: Icons.person,),
            BuildContainerBottomNav(icon: Icons.shopping_bag),
            BuildContainerBottomNav(icon: Icons.home, isSelect: true),
            BuildContainerBottomNav(icon: Icons.favorite),
            BuildContainerBottomNav(icon: Icons.settings),
          ],
        ),
      ),
    );
  }
}