import 'package:flutter/material.dart';

class BottomCrat extends StatelessWidget {
  const BottomCrat({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 50,
            width: 50,
            child: Icon(Icons.favorite_border),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey), shape: BoxShape.circle),
          ),
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag_outlined, color: Colors.white),
            label: Text(
              "Add to Basket",
              style: TextStyle(
                  color: Colors.white, fontSize: 20, letterSpacing: 1),
            ),
            style: TextButton.styleFrom(
              shape: StadiumBorder(
                side: BorderSide(
                  color: Colors.pink,
                )
              )
            ),

          )
        ],
      ),
    );
  }
}
