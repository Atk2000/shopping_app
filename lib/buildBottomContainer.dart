import 'package:flutter/material.dart';

class BuildBottomContainer extends StatelessWidget {
  const BuildBottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 230,
      margin: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: SizedBox(
                  height: 120,
                  width: 100,
                  child: Image.asset(
                    "assets/images/IMG-20230717-WA0014.jpg",
                    fit: BoxFit.cover,
                  ))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Coconut Milk Bath"),
                Text(
                  "16 oz",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                Spacer(),
                Text(
                  "\$ 28",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}