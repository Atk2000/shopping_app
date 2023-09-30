import 'package:flutter/material.dart';
import 'package:shop_application/homePage/bottomBodyContainer.dart';
import 'package:shop_application/homePage/flatButton.dart';
import 'package:shop_application/homePage/headingTopBar.dart';


class MyHomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [HeadingTopBar(), BottomBodyContainer()],
    );
  }
}