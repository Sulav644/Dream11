import 'package:flutter/material.dart';
import '../../utils.dart';

class LevelBar extends StatelessWidget {
  const LevelBar({super.key});

  @override
  Widget build(BuildContext context) {
    double dimension = 16;
    return Container(
      width: screenWidth(context),
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 19, 19, 19),
        Color.fromARGB(255, 29, 29, 29)
      ], begin: Alignment.centerLeft, end: Alignment.center)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 20,
                  alignment: Alignment.center,
                  child: Container(
                    width: screenWidth(context),
                    height: 3,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ),
                SizedBox(
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (var i = 0; i < 3; i++)
                        Container(
                          width: dimension,
                          height: dimension,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white, width: 3),
                              borderRadius: BorderRadius.circular(100)),
                          alignment: Alignment.center,
                          child: i == 0 || i == 1
                              ? const Icon(
                                  Icons.check,
                                  size: 10,
                                  weight: 2,
                                  color: Colors.black,
                                )
                              : Container(),
                        ),
                    ],
                  ),
                )
              ],
            ),
            Spacing().verticalSpace(10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              ...['Level1', 'Level2', 'Level3'].map((e) => Text(
                    e,
                    style: textStyle(const Color.fromARGB(255, 212, 211, 211),
                        14, FontWeight.normal),
                  ))
            ])
          ],
        ),
      ),
    );
  }
}
