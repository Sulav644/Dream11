import 'package:dream11_clone/login/components/login_plate.dart';
import 'package:dream11_clone/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late FocusNode node;
  late TextEditingController controller;
  @override
  void initState() {
    super.initState();
    node = FocusNode();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (node.hasPrimaryFocus) {
          node.unfocus();
        } else {
          node.requestFocus();
        }
      },
      child: Scaffold(
        appBar: appBar(),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                LoginPlate(node: node, controller: controller),
                SizedBox(
                  height: screenHeightOfRatio(context, 0.48),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Have a referral code?',
                            style: TextStyle(
                                color: Color.fromARGB(255, 102, 102, 102)),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text('Enter code')
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text('Already a user?',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 102, 102, 102))),
                          SizedBox(
                            height: 6,
                          ),
                          Text('Log in')
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar appBar() => AppBar(
        elevation: 0,
        title: const Text('Register & Pay'),
      );
}

class MobileNumberEnteredCubit extends Cubit<bool> {
  MobileNumberEnteredCubit() : super(false);
  void toggleEnteredState(bool state) => emit(state);
}
