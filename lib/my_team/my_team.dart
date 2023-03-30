import 'package:dream11_clone/deep_chargers/deep_chargers.dart';
import 'package:dream11_clone/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyTeam extends StatelessWidget {
  const MyTeam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    Text(
                      'My Teams',
                      style: textStyle(Colors.red, 14, FontWeight.bold),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => navigateTo(context, DeepChargers()),
                child: Stack(children: [
                  Container(
                    height: screenHeightOfRatio(context, 0.216),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 1, 82, 22),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                  ),
                  Expanded(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (var i = 0; i < 6; i++)
                            Container(
                              width: screenWidthOfRatio(context, 0.09),
                              height: screenHeightOfRatio(context, 0.216),
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 1, 94, 29),
                                  borderRadius: BorderRadius.only(
                                      topLeft: i == 0
                                          ? Radius.circular(10)
                                          : Radius.circular(0),
                                      topRight: i == 5
                                          ? Radius.circular(10)
                                          : Radius.circular(0))),
                            ),
                        ]),
                  ),
                  Column(
                    children: [
                      Container(
                          height: screenHeightOfRatio(context, 0.055),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(245, 5, 29, 5),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              )),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DefaultTextStyle(
                                  style: textStyle(
                                      Colors.white, 14, FontWeight.normal),
                                  child: Row(
                                    children: [
                                      Spacing().horizontalSpace(10),
                                      Text('DEEP CHARGE...'),
                                      Spacing().horizontalSpace(10),
                                      Text('(T1)'),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                    ),
                                    Spacing().horizontalSpace(10),
                                    Icon(Icons.copy, color: Colors.white),
                                    Spacing().horizontalSpace(10),
                                    Icon(Icons.share, color: Colors.white),
                                    Spacing().horizontalSpace(10),
                                  ],
                                ),
                              ])),
                      Spacing().verticalSpaceOfRatio(context, 0.01),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                ...[
                                  ['SCO', '4'],
                                  ['THU', '7']
                                ].map((e) => Row(
                                      children: [
                                        Spacing().horizontalSpaceOfRatio(
                                            context, 0.05),
                                        Column(children: [
                                          Text(
                                            '${e[0]}',
                                            style: textStyle(Colors.white, 13.5,
                                                FontWeight.bold),
                                          ),
                                          Spacing().verticalSpace(8),
                                          Text(
                                            '${e[1]}',
                                            style: textStyle(Colors.white, 24,
                                                FontWeight.bold),
                                          )
                                        ]),
                                      ],
                                    )),
                              ],
                            ),
                            Row(children: [
                              ...[
                                ['C', 'assets/iron_man.png', 'J Ingis'],
                                ['VC', 'assets/captain_america.png', 'M Golker']
                              ].map((e) => Row(
                                    children: [
                                      Container(
                                        width:
                                            screenWidthOfRatio(context, 0.28),
                                        child: Stack(children: [
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 24.0, top: 12),
                                                child: Image.asset(
                                                  '${e[1]}',
                                                  width: screenWidthOfRatio(
                                                      context, 0.18),
                                                  height: screenWidthOfRatio(
                                                      context, 0.18),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 24.0),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        color: e[0].length == 1
                                                            ? Colors.white
                                                            : Colors.black,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        boxShadow: [
                                                          BoxShadow(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      65,
                                                                      64,
                                                                      64),
                                                              offset:
                                                                  Offset(1, 1))
                                                        ]),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 3.0,
                                                          horizontal: 9),
                                                      child: Text(
                                                        '${e[2]}',
                                                        style: textStyle(
                                                            e[0].length == 1
                                                                ? Colors.black
                                                                : Colors.white,
                                                            13,
                                                            FontWeight.normal),
                                                      ),
                                                    )),
                                              )
                                            ],
                                          ),
                                          Stack(
                                            children: [
                                              Container(
                                                width: 34,
                                                height: 34,
                                                decoration: BoxDecoration(
                                                    color: e[0].length == 1
                                                        ? Colors.white
                                                        : Colors.black,
                                                    border: Border.all(
                                                        color: e[0].length == 1
                                                            ? Color.fromARGB(
                                                                255, 43, 42, 42)
                                                            : Colors.green,
                                                        width: 2.5),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100)),
                                                alignment: Alignment.center,
                                              ),
                                              Container(
                                                width: 34,
                                                height: 34,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      '${e[0]}',
                                                      style: textStyle(
                                                          e[0].length == 1
                                                              ? Colors.black
                                                              : Colors.white,
                                                          13,
                                                          FontWeight.bold),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          )
                                        ]),
                                      ),
                                      if (e[0].length != 1)
                                        Spacing().horizontalSpaceOfRatio(
                                            context, 0.018),
                                    ],
                                  ))
                            ])
                          ])
                    ],
                  ),
                ]),
              ),
              Container(
                height: screenHeightOfRatio(context, 0.046),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 207, 206, 206),
                          offset: Offset(-2.5, 2),
                          blurRadius: 4),
                      BoxShadow(
                          color: Color.fromARGB(255, 207, 206, 206),
                          offset: Offset(2.5, 2),
                          blurRadius: 4)
                    ]),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...[
                        ['WK', '3'],
                        ['BAT', '3'],
                        ['AR', '1'],
                        ['BOWL', '4']
                      ].map(
                        (e) => Row(
                          children: [
                            if (e[0] == 'WK') Spacing().horizontalSpace(20),
                            Text(
                              '${e[0]}',
                              style: textStyle(Color.fromARGB(255, 94, 92, 92),
                                  14, FontWeight.normal),
                            ),
                            Spacing().horizontalSpace(6),
                            Text(
                              '${e[1]}',
                              style:
                                  textStyle(Colors.black, 14, FontWeight.bold),
                            ),
                            if (e[0] == 'BOWL') Spacing().horizontalSpace(20),
                          ],
                        ),
                      )
                    ]),
              )
            ],
          ),
        )
      ]),
    );
  }

  AppBar appBar() => AppBar(
        backgroundColor: Colors.black,
        title: ListTile(
          title: Text(
            'SCO vs THU',
            style: textStyle(Colors.white, 14, FontWeight.bold),
          ),
          subtitle: Text(
            '2h 00m left Clone',
            style: textStyle(Colors.white, 12, FontWeight.normal),
          ),
        ),
        actions: [
          ...[Icons.notification_add, Icons.save].map(
            (e) => IconButton(onPressed: () {}, icon: Icon(e)),
          )
        ],
      );
}
