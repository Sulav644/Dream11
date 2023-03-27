import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/rewards.png',
      width: 80,
      height: 80,
      fit: BoxFit.contain,
    );
  }
}
