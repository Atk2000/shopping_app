import 'package:flutter/material.dart';
import '../mainImage.dart';
import '../widget/detailsPage/bottomStackContainer.dart';

class DetailsPage extends StatelessWidget {
  final String img;
  final String title;
  final String price;
  final BuildContext context;

  DetailsPage({
    required this.img,
    required this.title,
    required this.price,
    required this.context
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            MainImage(img: img),
            IconButton(
              padding: EdgeInsets.only(left: 20, top: 40),
              icon: Icon(
                Icons.close,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            BottomStackContainer(title: title, price: price),
          ],
        ));
  }
}