import 'package:flutter/material.dart';

class BuildContainerBottomNav extends StatelessWidget {
  final IconData icon;
  final bool isSelected;

  BuildContainerBottomNav({
    required this.icon,
    this.isSelected = false
});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.pink[100] : Colors.white,
        shape: BoxShape.circle,
        boxShadow: isSelected
            ? [BoxShadow(color: Colors.grey, blurRadius: 10, spreadRadius: 1)]
            : [],
      ),
      height: 50,
      width: 50,
      child: Icon(icon, color: isSelected ? Colors.white : Colors.black),
    );
  }
}
