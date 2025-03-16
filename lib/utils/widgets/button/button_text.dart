import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  final String title;
  final Function() onTap;
  const ButtonText({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onTap, child: Text(title));
  }
}

class ButtonTextDelete extends StatelessWidget {
  final String title;
  final Function() onTap;
  const ButtonTextDelete({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.red.withOpacity(0.9)),
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ));
  }
}