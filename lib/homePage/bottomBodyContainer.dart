import 'package:flutter/material.dart';
import 'package:shop_application/homePage/bottomBodyItems.dart';
import 'package:shop_application/homePage/myCandleList.dart';

import '../lineBar.dart';
import 'headingText.dart';

class BottomBodyContainer extends StatelessWidget {
  const BottomBodyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 1,
                blurRadius: 20,
              ),
            ]),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              HeadingText(),
              MyCandleList(),
              SizedBox(
                height: 20,
              ),
              LineBar(),
              BottomBodyItems(),
            ],
          ),
        ),
      ),
    );
  }
}
