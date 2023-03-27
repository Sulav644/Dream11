import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../login_page.dart';

class MobileNumberField extends StatelessWidget {
  final FocusNode node;
  final TextEditingController controller;
  const MobileNumberField(
      {super.key, required this.node, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: node,
      controller: controller,
      cursorColor: Colors.black,
      keyboardType: TextInputType.number,
      inputFormatters: [
        LengthLimitingTextInputFormatter(10),
        FilteringTextInputFormatter.digitsOnly
      ],
      decoration: const InputDecoration(
          fillColor: Color.fromARGB(255, 226, 225, 225),
          filled: true,
          labelText: 'Mobile no.',
          prefixText: '+91',
          prefixStyle: TextStyle(color: Colors.black, fontSize: 16),
          labelStyle: TextStyle(color: Color.fromARGB(255, 87, 86, 86)),
          border: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 46, 46, 46))),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 46, 46, 46))),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 15, 15, 15)))),
      onChanged: (value) {
        if (controller.text.length == 10) {
          context.read<MobileNumberEnteredCubit>().toggleEnteredState(true);
        } else {
          context.read<MobileNumberEnteredCubit>().toggleEnteredState(false);
        }
      },
    );
  }
}
