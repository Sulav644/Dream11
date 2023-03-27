import 'package:dream11_clone/login/components/login_button.dart';
import 'package:dream11_clone/login/components/mobile_number_field.dart';
import 'package:dream11_clone/select_language/components/centered_message.dart';
import 'package:dream11_clone/select_language/components/lined_message.dart';
import 'package:flutter/material.dart';
import '../../utils.dart';

class LoginPlate extends StatelessWidget {
  final FocusNode node;
  final TextEditingController controller;
  const LoginPlate({super.key, required this.node, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: screenWidth(context),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      MobileNumberField(node: node, controller: controller),
                      Spacing().verticalSpace(10),
                      const LinedMessage(
                          message: 'Enter 10 digit number to proceed',
                          color: Color.fromARGB(255, 87, 86, 86),
                          size: 11,
                          align: TextAlign.start),
                      Spacing().verticalSpace(20),
                      const LoginButton(),
                      Spacing().verticalSpace(20),
                      const CenteredMessage(
                        message: "By registering, I agree to Dream11's / T&Cs",
                        color: Colors.black,
                        secondColor: Colors.black,
                        weight: FontWeight.normal,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ]),
              ),
            )),
      ],
    );
  }
}
