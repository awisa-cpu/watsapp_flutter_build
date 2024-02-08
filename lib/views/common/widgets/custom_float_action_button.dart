import 'package:flutter/material.dart';

class CustomFloatActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final Color? iconColor;
  final Color? backgroundColor;
  const CustomFloatActionButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.iconColor,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: backgroundColor ?? Colors.teal,
      onPressed: onPressed,
      child: Icon(icon, color: iconColor ?? Colors.white),
    );
  }
}
