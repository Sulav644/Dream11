import 'package:dream11_clone/contests/components/contest_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils.dart';

class CancellableMessage extends StatelessWidget {
  const CancellableMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 247, 110, 100),
        Color.fromARGB(255, 238, 224, 223)
      ])),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 8),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Expanded(
              child: Image.asset(
            'assets/coin.png',
            width: 50,
            height: 50,
            fit: BoxFit.contain,
          )),
          Spacing().horizontalSpace(8),
          Expanded(
              flex: 12,
              child: Row(
                children: [
                  ...'Earn /Fake DreamCoins/ when you join any contest!'
                      .split("/")
                      .map((e) => Text(
                            e,
                            style: textStyle(
                                Colors.black,
                                11,
                                e.contains('F')
                                    ? FontWeight.bold
                                    : FontWeight.normal),
                          )),
                ],
              )),
          Expanded(
              child: GestureDetector(
                  onTap: () =>
                      context.read<HideMessageCubit>().toggleHideMessage(),
                  child: const Icon(Icons.close)))
        ]),
      ),
    );
  }
}
