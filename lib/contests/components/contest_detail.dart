import 'package:dream11_clone/utils.dart';
import 'package:flutter/material.dart';

class ContentDetail extends StatelessWidget {
  const ContentDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Spacing().verticalSpace(25),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        ...'Ready To Create Your /Fake/ Team?'.split("/").map((e) => Text(
              e,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontStyle:
                      e.contains('F') ? FontStyle.italic : FontStyle.normal),
            )),
      ]),
      Spacing().verticalSpace(10),
      const Text(
        'You will score no points on your selected players in this match because it is fake',
        textAlign: TextAlign.center,
        style: TextStyle(height: 1.7),
      ),
      Spacing().verticalSpace(15),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...'SCO /vs/ THU /4th Jan/, 03:45pm'.split("/").map((e) => Text(
                e,
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: e.contains(RegExp(r'[vJ]'))
                        ? FontWeight.bold
                        : FontWeight.normal),
              ))
        ],
      ),
      Spacing().verticalSpace(30),
      Stack(
        children: [
          Row(
            children: [
              Container(
                width: screenWidth(context),
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/naruto.png',
                  width: 200,
                  height: 380,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0, top: 10),
                child: Container(
                  width: screenWidth(context) * 0.56,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(146, 175, 210, 238),
                            Color.fromARGB(147, 60, 136, 199),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(2),
                          bottomLeft: Radius.circular(2),
                          bottomRight: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('1 Run = 1 point'),
                          Spacing().verticalSpace(8),
                          const Text('1 Wicket = 25 points'),
                          Spacing().verticalSpace(8),
                          const Text('1 Catch = 8 points'),
                          Spacing().verticalSpace(8),
                          SizedBox(
                              width: screenWidth(context) * 0.45,
                              child: const Divider(
                                height: 2,
                                thickness: 2,
                              )),
                          Spacing().verticalSpace(8),
                          Row(children: [
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(100)),
                                child: const Icon(
                                  Icons.more_horiz,
                                  size: 20,
                                )),
                            Spacing().horizontalSpace(8),
                            const Text('View full point system')
                          ])
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      Container(
        decoration: const BoxDecoration(
            border: Border(
                top: BorderSide(color: Color.fromARGB(255, 192, 191, 191)))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'CREATE FAKE TEAM',
                  style: textStyle(Colors.white, 16, FontWeight.bold),
                ),
              )),
        ),
      )
    ]);
  }
}
