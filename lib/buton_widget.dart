import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;

  const CustomButton.SbtColor({
    super.key,
    required this.text,
    required this.onPressed,
  }) : color = const Color.fromARGB(255, 60, 110, 219);

  const CustomButton.DnmkColor({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
  }) ;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
      onPressed: onPressed,
      child: Text(text, style: const TextStyle(color: Color.fromARGB(255, 16, 16, 16))),
    );
  }
}