import 'package:flutter/material.dart';
import 'package:shop_application/homePage/flatButton.dart';

class HeadingTopBar extends StatelessWidget {
  const HeadingTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Text(
              "Shop ",
              style: TextStyle(fontSize: 32, letterSpacing: 1),
            ),
            Text(
              "Anthropologie",
              style: TextStyle(
                  fontSize: 32, fontWeight: FontWeight.bold, letterSpacing: 1),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlatButton(text: "home Decore", isSelected: true),
            FlatButton(text: "Bath & Body"),
            FlatButton(text: "Beauty"),
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
