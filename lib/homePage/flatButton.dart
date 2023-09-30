import 'package:flutter/material.dart';

class FlatButton extends StatelessWidget {
  final String text;
  final bool isSelected;

  FlatButton({
    required this.text,
    this.isSelected = false,
});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        print("Button pressed");
      },
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontSize: 18,
        ),
      ),
      style: TextButton.styleFrom(
          shape: StadiumBorder(),
          side: BorderSide(
              color: isSelected ? Colors.pink : Colors.grey
          ),

      ),
    );
  }
}
