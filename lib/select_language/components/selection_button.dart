import 'package:dream11_clone/utils.dart';
import 'package:flutter/material.dart';
import '../../login/login_page.dart';

class SelectionButton extends StatelessWidget {
  const SelectionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: buttonStyle(),
        onPressed: () => navigateTo(context, const LoginPage()),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'CONTINUE',
            style: textStyle(Colors.black, 18, FontWeight.bold),
          ),
        ));
  }

  ButtonStyle buttonStyle() => ButtonStyle(
      backgroundColor:
          MaterialStateColor.resolveWith((states) => Colors.white));
}
