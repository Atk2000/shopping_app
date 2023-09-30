import 'package:flutter/material.dart';

import '../screen/DetailsPage.dart';

class BuildColumnWithRow extends StatelessWidget {
  final String title;
  final String img;
  final String price;

  BuildColumnWithRow({
    required this.title,
    required this.img,
    required this.price
});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return DetailsPage(
            title: title,
            img: img,
            context: context,
            price: price,
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 220,
              width: 160,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/candel$img.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "\$ $price",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
