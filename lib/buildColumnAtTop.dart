import 'package:flutter/material.dart';

class BuildColumnAtTop extends StatelessWidget {
  final String text;
  final bool isSelected;

  BuildColumnAtTop({
   required this.text,
   this.isSelected = false,
});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Text(
            text,
            style: TextStyle(
              color: isSelected ? Colors.black : Colors.grey,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          if (isSelected)
            Container(
              height: 5,
              width: 5,
              decoration:
              BoxDecoration(color: Colors.black, shape: BoxShape.circle),
            )
        ],
      );
  }
}
