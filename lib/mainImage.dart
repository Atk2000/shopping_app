import 'package:flutter/material.dart';

class MainImage extends StatelessWidget {
  final String img;

  MainImage({
    required this.img
});
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/candel$img.jpg",
      height: MediaQuery.of(context).size.height / 1.5,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
    );
  }
}
