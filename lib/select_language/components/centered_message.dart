import 'package:flutter/material.dart';

class CenteredMessage extends StatelessWidget {
  final String message;
  final Color color;
  final FontWeight weight;
  final Color? secondColor;
  final double? size;

  const CenteredMessage({
    super.key,
    required this.message,
    this.size = 14,
    required this.color,
    this.secondColor,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...message.split("/").map((e) => Text(
              e,
              style: TextStyle(
                color: (() {
                  if (e == message.split("/")[0]) {
                    return color;
                  } else {
                    return secondColor ?? Colors.transparent;
                  }
                }()),
                fontSize: size,
                fontWeight: (() {
                  if (e == message.split("/")[0]) {
                    return weight;
                  } else {
                    return FontWeight.bold;
                  }
                }()),
              ),
            )),
      ],
    );
  }
}
