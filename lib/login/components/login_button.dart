import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../login_page.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    final mobileNumberStatus = context.watch<MobileNumberEnteredCubit>().state;
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(mobileNumberStatus
                ? Colors.green
                : const Color.fromARGB(255, 192, 192, 192)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ))),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'REGISTER',
            style: TextStyle(
                color: mobileNumberStatus
                    ? Colors.white
                    : const Color.fromARGB(255, 82, 81, 81)),
          ),
        ));
  }
}
