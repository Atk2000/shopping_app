import 'package:flutter/material.dart';
import 'package:shop_application/widget/detailsPage/bottomcart.dart';
import 'package:shop_application/widget/detailsPage/containerStackItem.dart';

class BottomStackContainer extends StatelessWidget {
  BottomStackContainer({
    required this.title,
    required this.price,
  });

  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height *0.4,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          children: [
            ContainerStackItem(title: title, price: price),
            BottomCrat(),
          ],
        ),
      ),
    );
  }
}