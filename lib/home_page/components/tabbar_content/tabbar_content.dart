import 'package:dream11_clone/contests/contest_page.dart';
import 'package:dream11_clone/select_language/components/lined_message.dart';
import 'package:dream11_clone/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'tabbar.dart';

class UpcomingMatchesList {
  String food;
  String playerOne;
  String playerTwo;
  String countryOne;
  String countryTwo;
  String flagOne;
  String flagTwo;
  Color flagOneColorOne;
  Color flagOneColorTwo;
  Color flagTwoColorOne;
  Color flagTwoColorTwo;
  String timeDuration;
  String price;
  bool showVideo;
  UpcomingMatchesList(
      {required this.food,
      required this.playerOne,
      required this.playerTwo,
      required this.countryOne,
      required this.countryTwo,
      required this.flagOne,
      required this.flagTwo,
      required this.timeDuration,
      required this.price,
      required this.showVideo,
      required this.flagOneColorOne,
      required this.flagOneColorTwo,
      required this.flagTwoColorOne,
      required this.flagTwoColorTwo});
}

final upcomingMatchesList = [
  UpcomingMatchesList(
      food: 'KFC Big Bash',
      playerOne: 'Perl Scalie',
      playerTwo: 'Sydney Thunder',
      countryOne: 'SCO',
      countryTwo: 'THU',
      flagOne: 'assets/united-kingdom.png',
      flagTwo: 'assets/united-states-of-america.png',
      timeDuration: '2h 04m',
      price: '8 Crores',
      flagOneColorOne: Colors.orange,
      flagOneColorTwo: Color.fromARGB(255, 241, 215, 175),
      flagTwoColorOne: Colors.black,
      flagTwoColorTwo: Color.fromARGB(255, 175, 174, 174),
      showVideo: false),
  UpcomingMatchesList(
      food: 'TNCA Inner Districts',
      playerOne: 'Team India',
      playerTwo: 'Team Germany',
      countryOne: 'IND',
      countryTwo: 'GER',
      flagOne: 'assets/india.png',
      flagTwo: 'assets/germany.png',
      timeDuration: '1h 48m',
      price: '14 Lakhs',
      flagOneColorOne: Colors.red,
      flagOneColorTwo: Color.fromARGB(255, 235, 176, 172),
      flagTwoColorOne: Colors.blue,
      flagTwoColorTwo: Color.fromARGB(255, 190, 215, 236),
      showVideo: true),
  UpcomingMatchesList(
      food: 'Dream11 Clone Nature',
      playerOne: 'Team Canada',
      playerTwo: 'Team Russia',
      countryOne: 'CAN',
      countryTwo: 'RUS',
      flagOne: 'assets/canada.png',
      flagTwo: 'assets/russia.png',
      timeDuration: '5h 19m',
      price: '2.7 Crores',
      flagOneColorOne: Colors.yellow,
      flagOneColorTwo: Color.fromARGB(255, 240, 233, 171),
      flagTwoColorOne: Colors.green,
      flagTwoColorTwo: Color.fromARGB(255, 177, 235, 179),
      showVideo: true)
];

class TabbarContent extends StatelessWidget {
  final TabController tabController;
  const TabbarContent({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TabBarView(controller: tabController, children: [
      ...tabList.map((e) => tabList.indexOf(e) == 0
          ? ListView.builder(
              itemCount: upcomingMatchesList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: GestureDetector(
                    onTap: () => navigateTo(context, ContestPage()),
                    child: Card(
                      elevation: 6,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Text(
                                  '${upcomingMatchesList[index].food}',
                                  style: textStyle(
                                      Color.fromARGB(255, 124, 123, 123),
                                      14,
                                      FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: DefaultTextStyle(
                              style: textStyle(
                                  Colors.black, 16, FontWeight.normal),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                      '${upcomingMatchesList[index].playerOne}'),
                                  Text(
                                      '${upcomingMatchesList[index].playerTwo}'),
                                ],
                              ),
                            ),
                          ),
                          Spacing().verticalSpace(4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: 34,
                                        height: 22,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                                colors: [
                                              upcomingMatchesList[index]
                                                  .flagOneColorTwo,
                                              upcomingMatchesList[index]
                                                  .flagOneColorOne,
                                            ],
                                                begin: Alignment.centerLeft,
                                                end: Alignment.centerRight)),
                                      ),
                                      Container(
                                        width: 42,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            CircleAvatar(
                                              backgroundImage: AssetImage(
                                                '${upcomingMatchesList[index].flagOne}',
                                              ),
                                              radius: 11,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacing().horizontalSpace(10),
                                  Container(
                                      child: Text(
                                    '${upcomingMatchesList[index].countryOne}',
                                    style: textStyle(
                                        Colors.black, 16, FontWeight.bold),
                                  )),
                                ],
                              ),
                              Container(
                                  child: Text(
                                '${upcomingMatchesList[index].timeDuration}',
                                style:
                                    textStyle(Colors.red, 16, FontWeight.bold),
                              )),
                              Row(
                                children: [
                                  Container(
                                      child: Text(
                                    '${upcomingMatchesList[index].countryTwo}',
                                    style: textStyle(
                                        Colors.black, 16, FontWeight.bold),
                                  )),
                                  Spacing().horizontalSpace(10),
                                  Container(
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: 42,
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                            width: 48,
                                            height: 22,
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                    colors: [
                                                      upcomingMatchesList[index]
                                                          .flagTwoColorTwo,
                                                      upcomingMatchesList[index]
                                                          .flagTwoColorOne
                                                    ],
                                                    begin:
                                                        Alignment.centerRight,
                                                    end: Alignment.centerLeft),
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(10),
                                                    bottomLeft:
                                                        Radius.circular(10))),
                                          ),
                                        ),
                                        Container(
                                          width: 42,
                                          alignment: Alignment.centerRight,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CircleAvatar(
                                                backgroundImage: AssetImage(
                                                  '${upcomingMatchesList[index].flagTwo}',
                                                ),
                                                radius: 11,
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Spacing().verticalSpace(18),
                          Container(
                            color: Color.fromARGB(255, 235, 233, 233),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Spacing().horizontalSpace(10),
                                          Container(
                                              child: Text(
                                            'MEGA',
                                            style: textStyle(Colors.green, 14,
                                                FontWeight.bold),
                                          )),
                                          Spacing().horizontalSpace(12),
                                          Container(
                                              child: Text(
                                            '₹',
                                            style: textStyle(Colors.black, 14,
                                                FontWeight.bold),
                                          )),
                                          Container(
                                              child: Text(
                                            '${upcomingMatchesList[index].price}',
                                            style: textStyle(Colors.black, 15,
                                                FontWeight.bold),
                                          )),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        if (upcomingMatchesList[index]
                                            .showVideo)
                                          Container(
                                              alignment: Alignment.centerRight,
                                              child: Icon(
                                                Icons.video_call_outlined,
                                                color: Color.fromARGB(
                                                    255, 83, 83, 83),
                                              )),
                                        Spacing().horizontalSpace(15),
                                        Container(
                                            alignment: Alignment.centerRight,
                                            child: Icon(
                                                Icons.airplane_ticket_outlined,
                                                color: Color.fromARGB(
                                                    255, 83, 83, 83)))
                                      ],
                                    ),
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              })
          : Text('hello'))
    ]));
  }
}
