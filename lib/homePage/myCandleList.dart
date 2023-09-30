import 'package:flutter/material.dart';
import 'package:shop_application/buildColumnWithRow.dart';

class MyCandleList extends StatelessWidget {
  const MyCandleList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          BuildColumnWithRow(img: "1", title: "Elemental Tin Candel",price: "29"),
          BuildColumnWithRow(img: "2", title: "Summer Candel",price: "23"),
          BuildColumnWithRow(img: "3", title: "Winter candel",price: "40",),
          BuildColumnWithRow(img: "4", title: "dummy candel",price: "60"),
        ],
      ),
    );
  }
}
