import 'package:flutter/material.dart';

class LinedMessage extends StatelessWidget {
  final String message;
  final TextAlign align;
  final Color? color;
  final double? height;
  final double? size;

  const LinedMessage(
      {super.key,
      required this.message,
      this.height = 0,
      required this.align,
      this.color,
      this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      textAlign: align,
      style: TextStyle(
          color: color ?? Colors.white, fontSize: size ?? 14, height: height),
    );
  }
}
