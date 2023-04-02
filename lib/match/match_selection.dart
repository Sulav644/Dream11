import 'dart:math';
import 'package:dream11_clone/home_page/components/level_bar.dart';
import 'package:dream11_clone/match/components/match_tabbar.dart';
import 'package:dream11_clone/match/components/match_tabbar_content.dart';
import 'package:dream11_clone/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Footer {
  List<String> title;
  Footer({required this.title});
}

class MatchSelection extends StatefulWidget {
  const MatchSelection({super.key});

  @override
  State<MatchSelection> createState() => _MatchSelectionState();
}

class _MatchSelectionState extends State<MatchSelection>
    with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final selectedPlayer = context.watch<SelectPlayerCubit>().state;
    Color alphaBlack = const Color.fromARGB(255, 105, 104, 104);
    final styleForNumbers = textStyle(Colors.white, 14, FontWeight.normal);
    final styleForTitles = textStyle(alphaBlack, 14, FontWeight.bold);
    final whiteColor = textStyle(Colors.white, 14, FontWeight.normal);
    final whiteBoldColor = textStyle(Colors.white, 14, FontWeight.bold);
    final footerList = [
      Footer(title: ["Pitch/", "Balanced/"]),
      Footer(title: ["Good/", "for/", "Pace/"]),
      Footer(title: ["Avg/", "Score/", "139/"]),
      Footer(title: [
        "Venus/",
      ]),
      Footer(title: [
        "Mars/",
      ]),
    ];

    return Scaffold(
      appBar: appBar(),
      body: Column(children: [
        const LevelBar(),
        Container(
          alignment: Alignment.center,
          color: Colors.black,
          child: Column(
            children: [
              Spacing().verticalSpace(15),
              Text(
                'Max 7 fake players from a team',
                style: textStyle(Colors.white, 14, FontWeight.normal),
              ),
              Spacing().verticalSpace(13),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Players',
                                  style: styleForTitles,
                                ),
                                Spacing().verticalSpace(6),
                                Row(children: [
                                  Text(
                                    '3',
                                    style: styleForNumbers,
                                  ),
                                  Spacing().horizontalSpace(2),
                                  Text(
                                    '/11',
                                    style: textStyle(
                                        alphaBlack, 11, FontWeight.normal),
                                  ),
                                ])
                              ]),
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage(
                                  'assets/united-kingdom.png',
                                ),
                                radius: 14,
                              ),
                              Spacing().horizontalSpace(15),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'SCO',
                                      style: styleForTitles,
                                    ),
                                    Spacing().verticalSpace(6),
                                    Text(
                                      '1',
                                      style: styleForNumbers,
                                    ),
                                  ]),
                            ],
                          ),
                          Container(),
                          Row(
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'THU',
                                      style: styleForTitles,
                                    ),
                                    Spacing().verticalSpace(6),
                                    Text(
                                      '2',
                                      style: styleForNumbers,
                                    ),
                                  ]),
                              Spacing().horizontalSpace(15),
                              const CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assets/united-states-of-america.png'),
                                radius: 14,
                              ),
                            ],
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Credits Left',
                                  style: styleForTitles,
                                ),
                                Spacing().verticalSpace(6),
                                Text(
                                  '77.5',
                                  style: styleForNumbers,
                                ),
                              ]),
                        ]),
                    Spacing().verticalSpace(12),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(children: [
                            Spacing().horizontalSpace(6),
                            for (var i = 0; i < 11; i++)
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2.0),
                                child: Stack(
                                  children: [
                                    Transform(
                                      transform: Matrix4.skewX(160 / 180 * pi),
                                      child: Container(
                                        width: 23.5,
                                        height: 15,
                                        color: selectedPlayer > i
                                            ? Colors.green
                                            : Colors.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: i == 10 ? 0 : 5.0),
                                      child: Text(
                                        i == 10
                                            ? '11'
                                            : selectedPlayer - 1 == i
                                                ? '$selectedPlayer'
                                                : '',
                                        style: textStyle(
                                            i == 10
                                                ? Colors.black
                                                : selectedPlayer - 1 == i
                                                    ? Colors.white
                                                    : Colors.white,
                                            14,
                                            FontWeight.normal),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                          ]),
                          Icon(
                            Icons.remove_circle_outline,
                            color: alphaBlack,
                          )
                        ]),
                  ],
                ),
              ),
              Spacing().verticalSpace(10),
              const Divider(
                height: 2,
                color: Colors.white,
              ),
              Spacing().verticalSpace(10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Spacing().horizontalSpace(10),
                  Image.asset(
                    'assets/coin.png',
                    width: 20,
                    height: 20,
                  ),
                  Spacing().horizontalSpace(10),
                  for (var element in footerList)
                    ...element.title.map((e) => Text(
                          e.replaceAll("/", '-').replaceAll(
                              "-",
                              (() {
                                if (element ==
                                        footerList[footerList.length - 1] &&
                                    e ==
                                        element
                                            .title[element.title.length - 1]) {
                                  return " ";
                                } else if (e ==
                                    element.title[element.title.length - 1]) {
                                  return " - ";
                                } else {
                                  return " ";
                                }
                              }())),
                          style: e == element.title[element.title.length - 1]
                              ? whiteBoldColor
                              : whiteColor,
                        ))
                ]),
              ),
              Spacing().verticalSpace(10),
            ],
          ),
        ),
        MatchTabbar(
          tabController: tabController,
        ),
        MatchTabbarContent(tabController: tabController)
      ]),
    );
  }

  AppBar appBar() => AppBar(
        title: Row(
          children: const [
            Text(
              '2h 00m left Clone',
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.question_mark))
        ],
      );
}
