import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../utils.dart';

class Players {
  String name;
  String image;
  String title;
  bool showLevel;
  String price;
  Players(
      {required this.name,
      required this.image,
      required this.title,
      required this.showLevel,
      required this.price});
}

final playersListOne = [
  Players(
      name: 'S Whiterman',
      image: 'assets/iron_man.png',
      title: '',
      showLevel: false,
      price: '7 Cr'),
  Players(
      name: 'J Ingis',
      image: 'assets/captain_america.png',
      title: '',
      showLevel: false,
      price: '9 Cr'),
  Players(
      name: 'M Gikes',
      image: 'assets/thor.png',
      title: '',
      showLevel: false,
      price: '6.5 Cr'),
];
final playersListTwo = [
  Players(
      name: 'D Warner',
      image: 'assets/hulk.png',
      title: '',
      showLevel: false,
      price: '9 Cr'),
  Players(
      name: 'F du Plessium',
      image: 'assets/black_widow.png',
      title: '',
      showLevel: false,
      price: '9 Cr'),
  Players(
      name: 'A Hales',
      image: 'assets/hawkeye.png',
      title: '',
      showLevel: false,
      price: '9 Cr'),
];
final playersListThree = [
  Players(
      name: 'D Sams',
      image: 'assets/groot.png',
      title: '',
      showLevel: false,
      price: '9 Cr'),
];
final playersListFour = [
  Players(
      name: 'G Sandhu',
      image: 'assets/captain_marvel.png',
      title: '',
      showLevel: false,
      price: '7 Cr'),
  Players(
      name: 'A Type',
      image: 'assets/gamora.png',
      title: '',
      showLevel: false,
      price: '7 Cr'),
  Players(
      name: 'C Green',
      image: 'assets/rocket.png',
      title: '',
      showLevel: false,
      price: '7 Cr'),
  Players(
      name: 'J Richard',
      image: 'assets/loki.png',
      title: '',
      showLevel: false,
      price: '7 Cr')
];

class DeepChargers extends StatelessWidget {
  const DeepChargers({super.key});

  @override
  Widget build(BuildContext context) {
    final alphaBlack = Color.fromARGB(255, 180, 179, 179);
    return Scaffold(
      appBar: appBar(),
      body: Column(children: [
        Container(
            color: Color.fromARGB(255, 39, 39, 39),
            child: Column(
              children: [
                Divider(
                  color: alphaBlack,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Players',
                                style: textStyle(
                                    alphaBlack, 14, FontWeight.normal),
                              ),
                              Spacing().verticalSpace(10),
                              Row(
                                children: [
                                  Text(
                                    '11',
                                    style: textStyle(
                                        Colors.white, 14, FontWeight.normal),
                                  ),
                                  Text(
                                    ' / 11',
                                    style: textStyle(
                                        alphaBlack, 11, FontWeight.normal),
                                  )
                                ],
                              ),
                            ]),
                        Row(children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 6.0, horizontal: 8),
                              child: Text(
                                'SCO',
                                style: textStyle(
                                    Colors.black, 14, FontWeight.normal),
                              ),
                            ),
                          ),
                          Spacing().horizontalSpace(10),
                          Text(
                            '4 : 7',
                            style: textStyle(Colors.white, 14, FontWeight.bold),
                          ),
                          Spacing().horizontalSpace(10),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(6)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 6.0, horizontal: 8),
                              child: Text(
                                'THU',
                                style: textStyle(
                                    Colors.white, 14, FontWeight.normal),
                              ),
                            ),
                          ),
                        ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Credit Left',
                                style: textStyle(
                                    alphaBlack, 14, FontWeight.normal),
                              ),
                              Spacing().verticalSpace(10),
                              Row(
                                children: [
                                  Text(
                                    '7.5',
                                    style: textStyle(
                                        Colors.white, 14, FontWeight.normal),
                                  ),
                                ],
                              ),
                            ]),
                      ]),
                ),
              ],
            )),
        Expanded(
          child: Stack(
            children: [
              Container(
                width: screenWidth(context),
                color: Color.fromARGB(255, 1, 82, 22),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                for (var i = 0; i < 6; i++)
                  Row(
                    children: [
                      Container(
                        width: screenWidthOfRatio(context, 0.09),
                        color: Color.fromARGB(255, 1, 94, 29),
                      ),
                    ],
                  ),
              ]),
              Padding(
                padding: EdgeInsets.only(
                    top: screenHeightOfRatio(context, 0.1),
                    bottom: screenHeightOfRatio(context, 0.084)),
                child: Container(
                  width: screenWidth(context),
                  height: screenHeightOfRatio(context, 0.8),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.all(Radius.circular(120))),
                ),
              ),
              Container(
                width: screenWidth(context),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: screenWidthOfRatio(context, 0.16),
                      height: screenHeightOfRatio(context, 0.2),
                      color: Colors.green,
                    )
                  ],
                ),
              ),
              Container(
                width: screenWidth(context),
                height: screenHeightOfRatio(context, 0.68),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text(
                    'BOWLING',
                    style: textStyle(Colors.white, 11, FontWeight.normal),
                  )
                ]),
              ),
              Container(
                width: screenWidth(context),
                height: screenHeightOfRatio(context, 0.38),
                alignment: Alignment.bottomCenter,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/rewards.png',
                        width: 35,
                        height: 35,
                      ),
                      Container(),
                      Image.asset(
                        'assets/rewards.png',
                        width: 35,
                        height: 35,
                      ),
                    ]),
              ),
              Container(
                width: screenWidth(context),
                height: screenHeightOfRatio(context, 0.18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ...playersListOne.map((e) => Container(
                          height: screenHeightOfRatio(context, 0.164),
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    playersListOne.indexOf(e) == 1
                                        ? 'WICKETKEEPERS'
                                        : '',
                                    style: textStyle(
                                        Colors.white, 11, FontWeight.normal),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: playersListOne.indexOf(e) == 0
                                            ? 0
                                            : 12.0,
                                        top: 4),
                                    child: Image.asset(
                                      '${e.image}',
                                      width: screenWidthOfRatio(context, 0.15),
                                      height: screenWidthOfRatio(context, 0.15),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: playersListOne.indexOf(e) == 0
                                            ? 0
                                            : 12.0),
                                    child: Container(
                                        width:
                                            screenWidthOfRatio(context, 0.24),
                                        decoration: BoxDecoration(
                                            color:
                                                playersListOne.indexOf(e).isOdd
                                                    ? Colors.white
                                                    : Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Color.fromARGB(
                                                      255, 65, 64, 64),
                                                  offset: Offset(1, 1))
                                            ]),
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 5.0,
                                          ),
                                          child: Text(
                                            '${e.name}',
                                            style: textStyle(
                                                playersListOne.indexOf(e).isOdd
                                                    ? Colors.black
                                                    : Colors.white,
                                                11,
                                                FontWeight.normal),
                                          ),
                                        )),
                                  ),
                                  Spacing().verticalSpace(4),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: playersListOne.indexOf(e) == 0
                                            ? 0
                                            : 12.0),
                                    child: Container(
                                      width: screenWidthOfRatio(context, 0.24),
                                      alignment: Alignment.center,
                                      child: Text(
                                        '${e.price}',
                                        style: textStyle(Colors.white, 12,
                                            FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              if (playersListOne.indexOf(e) != 0)
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 18.0),
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            color:
                                                playersListOne.indexOf(e) == 1
                                                    ? Colors.white
                                                    : Colors.black,
                                            border: Border.all(
                                                color:
                                                    playersListOne.indexOf(e) ==
                                                            1
                                                        ? Color.fromARGB(
                                                            255, 43, 42, 42)
                                                        : Colors.green,
                                                width: 2.5),
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                    Container(
                                      width: 27,
                                      height: 62,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            playersListOne.indexOf(e) == 1
                                                ? 'C'
                                                : 'VC',
                                            style: textStyle(
                                                playersListOne.indexOf(e) == 1
                                                    ? Colors.black
                                                    : Colors.white,
                                                11,
                                                FontWeight.normal),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                width: screenWidth(context),
                height: screenHeightOfRatio(context, 0.41),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ...playersListTwo.map((e) => Container(
                          height: screenHeightOfRatio(context, 0.19),
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    playersListTwo.indexOf(e) == 1
                                        ? 'BATTERS'
                                        : '',
                                    style: textStyle(
                                        Colors.white, 11, FontWeight.normal),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0.0, top: 2),
                                    child: Image.asset(
                                      '${e.image}',
                                      width: screenWidthOfRatio(context, 0.15),
                                      height: screenWidthOfRatio(context, 0.15),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0.0),
                                    child: Container(
                                        width:
                                            screenWidthOfRatio(context, 0.24),
                                        decoration: BoxDecoration(
                                            color:
                                                playersListTwo.indexOf(e).isOdd
                                                    ? Colors.white
                                                    : Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Color.fromARGB(
                                                      255, 65, 64, 64),
                                                  offset: Offset(1, 1))
                                            ]),
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 5.0,
                                          ),
                                          child: Text(
                                            '${e.name}',
                                            style: textStyle(
                                                playersListTwo.indexOf(e).isOdd
                                                    ? Colors.black
                                                    : Colors.white,
                                                11,
                                                FontWeight.normal),
                                          ),
                                        )),
                                  ),
                                  Spacing().verticalSpace(4),
                                  Padding(
                                    padding: EdgeInsets.only(left: 0),
                                    child: Container(
                                      width: screenWidthOfRatio(context, 0.24),
                                      alignment: Alignment.center,
                                      child: Text(
                                        '${e.price}',
                                        style: textStyle(Colors.white, 12,
                                            FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                width: screenWidth(context),
                height: screenHeightOfRatio(context, 0.61),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ...playersListThree.map((e) => Container(
                          height: screenHeightOfRatio(context, 0.19),
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'ALL ROUNDERS',
                                    style: textStyle(
                                        Colors.white, 11, FontWeight.normal),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0.0, top: 0),
                                    child: Image.asset(
                                      '${e.image}',
                                      width: screenWidthOfRatio(context, 0.15),
                                      height: screenWidthOfRatio(context, 0.15),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0.0),
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Color.fromARGB(
                                                      255, 65, 64, 64),
                                                  offset: Offset(1, 1))
                                            ]),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5.0, horizontal: 9),
                                          child: Text(
                                            '${e.name}',
                                            style: textStyle(Colors.white, 11,
                                                FontWeight.normal),
                                          ),
                                        )),
                                  ),
                                  Spacing().verticalSpace(4),
                                  Padding(
                                    padding: EdgeInsets.only(left: 0),
                                    child: Container(
                                      width: screenWidthOfRatio(context, 0.24),
                                      alignment: Alignment.center,
                                      child: Text(
                                        '${e.price}',
                                        style: textStyle(Colors.white, 12,
                                            FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                width: screenWidth(context),
                height: screenHeightOfRatio(context, 0.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ...playersListFour.map((e) => Container(
                          height: screenHeightOfRatio(context, 0.12),
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 0.0, top: 12),
                                    child: Image.asset(
                                      '${e.image}',
                                      width: screenWidthOfRatio(context, 0.15),
                                      height: screenWidthOfRatio(context, 0.15),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 0.0),
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color:
                                                playersListFour.indexOf(e).isOdd
                                                    ? Colors.white
                                                    : Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Color.fromARGB(
                                                      255, 65, 64, 64),
                                                  offset: Offset(1, 1))
                                            ]),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5.0, horizontal: 9),
                                          child: Text(
                                            '${e.name}',
                                            style: textStyle(
                                                playersListFour.indexOf(e).isOdd
                                                    ? Colors.black
                                                    : Colors.white,
                                                11,
                                                FontWeight.normal),
                                          ),
                                        )),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }

  AppBar appBar() => AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
        title: Text(
          'DEEP CHARGERS...',
          style: textStyle(Colors.white, 18, FontWeight.bold),
        ),
      );
}
