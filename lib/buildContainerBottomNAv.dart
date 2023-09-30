import 'package:flutter/material.dart';

class BuildContainerBottomNav extends StatelessWidget {
  final IconData icon;
  final bool isSelect;

  BuildContainerBottomNav({
   required this.icon,
   this.isSelect = false
});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelect ? Colors.pink[100] : Colors.white,
        shape: BoxShape.circle,
        boxShadow: isSelect
            ? [BoxShadow(color: Colors.grey, blurRadius: 10, spreadRadius: 1)]
            : [],
      ),
      height: 50,
      width: 50,
      child: Icon(icon, color: isSelect ? Colors.white : Colors.black),
    );
  }
}
