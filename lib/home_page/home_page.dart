import 'package:dream11_clone/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'components/level_bar.dart';
import 'components/tabbar_content/tabbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 92, 91, 91),
      appBar: appBar(),
      body: Column(
        children: [
          LevelBar(),
          Expanded(
            child: Container(
              height: 20,
              color: Colors.white,
              child: Tabbar(),
            ),
          )
        ],
      ),
    );
  }

  AppBar appBar() => AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/rewards.png',
              width: 18,
              height: 18,
            ),
            Spacing().horizontalSpace(8),
            Text(
              'DREAM11 CLONE',
              style: textStyle(Colors.white, 19, FontWeight.bold),
            ),
          ],
        ),
        actions: [
          ...[Icons.refresh, Icons.airplane_ticket, Icons.card_giftcard]
              .map((e) => IconButton(onPressed: () {}, icon: Icon(e)))
        ],
      );
}
