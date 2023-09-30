import 'package:flutter/material.dart';
import 'package:shop_application/homePage/bottomBodyContainer.dart';

class BottomBodyItems extends StatelessWidget {
  const BottomBodyItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            children: [
              Text(
                "Holiday Special",
                style: TextStyle(fontSize: 24),
              ),
              Spacer(),
              Text(
                "View All",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              BottomBodyContainer(),
              BottomBodyContainer(),
              BottomBodyContainer(),
              BottomBodyContainer(),
            ],
          ),
        )
      ],
    );
  }
}
