import 'package:flutter/material.dart';

import '../buildColumnAtTop.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BuildColumnAtTop(text: "Candels", isSelected: true),
            BuildColumnAtTop(text: "vases"),
            BuildColumnAtTop(text: "bins"),
            BuildColumnAtTop(text: "Floral"),
            BuildColumnAtTop(text: "Decor"),
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
