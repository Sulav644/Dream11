import 'package:dream11_clone/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'match_tabbar.dart';

class Players {
  String name;
  String image;
  double percentage;
  bool showPlayedLastMatch;
  int points;
  double credits;
  String title;
  Players(
      {required this.name,
      required this.image,
      required this.percentage,
      required this.showPlayedLastMatch,
      required this.points,
      required this.credits,
      required this.title});
}

final playersList = [
  Players(
      name: 'J Inglis',
      image: 'assets/iron_man.png',
      percentage: 90.78,
      showPlayedLastMatch: true,
      points: 435,
      credits: 9.0,
      title: 'SCO'),
  Players(
      name: 'S Whiteman',
      image: 'assets/captain_america.png',
      percentage: 1.84,
      showPlayedLastMatch: false,
      points: 0,
      credits: 7.0,
      title: 'THU'),
  Players(
      name: 'M Gilkes',
      image: 'assets/thor.png',
      percentage: 70.71,
      showPlayedLastMatch: true,
      points: 268,
      credits: 6.5,
      title: 'THU'),
  Players(
      name: 'B Holt',
      image: 'assets/hulk.png',
      percentage: 0.81,
      showPlayedLastMatch: false,
      points: 0,
      credits: 6.0,
      title: 'THU')
];

class MatchTabbarContent extends StatelessWidget {
  final TabController tabController;
  const MatchTabbarContent({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    final selectedPlayer = context.watch<SelectPlayerCubit>().state;
    return Expanded(
      child: TabBarView(
        controller: tabController,
        children: [
          ...playerList.map((e) => tabController.index == 0
              ? Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Select 1 - 4 Wicket-Keepers',
                              style:
                                  textStyle(Colors.black, 16, FontWeight.bold),
                            ),
                            Icon(Icons.menu)
                          ],
                        ),
                      ),
                    ),
                    Card(
                      elevation: 2,
                      child: Container(
                        decoration:
                            BoxDecoration(color: Colors.white, boxShadow: []),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: DefaultTextStyle(
                            style: textStyle(Color.fromARGB(255, 104, 103, 103),
                                14, FontWeight.bold),
                            child: Row(children: [
                              Container(
                                width: screenWidthOfRatio(context, 0.24),
                                height: 2,
                                color: Colors.white,
                              ),
                              Container(
                                  width: screenWidthOfRatio(context, 0.34),
                                  child: Text('SELECTED BY')),
                              Container(
                                  width: screenWidthOfRatio(context, 0.14),
                                  child: Text('POINTS')),
                              Spacing().horizontalSpaceOfRatio(context, 0.04),
                              Container(
                                  width: screenWidthOfRatio(context, 0.21),
                                  child: Row(
                                    children: [
                                      Text(
                                        'CREDITS',
                                        style: textStyle(
                                            Color.fromARGB(255, 26, 25, 25),
                                            14,
                                            FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.arrow_downward,
                                        color: Color.fromARGB(255, 26, 25, 25),
                                        size: 18,
                                      )
                                    ],
                                  )),
                            ]),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: playersList.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () =>
                                  context.read<SelectPlayerCubit>().addPlayer(),
                              child: Column(
                                children: [
                                  Container(
                                    color: selectedPlayer > index
                                        ? Color.fromARGB(120, 235, 192, 128)
                                        : Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: Row(children: [
                                        Container(
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                '${playersList[index].image}',
                                                width: screenWidthOfRatio(
                                                    context, 0.24),
                                                height: screenWidthOfRatio(
                                                    context, 0.24),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 4.0),
                                                child: Container(
                                                  height: 80,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Icon(
                                                          Icons.info_outline,
                                                          color: Color.fromARGB(
                                                              255,
                                                              104,
                                                              103,
                                                              103),
                                                        ),
                                                        Container(
                                                          decoration: BoxDecoration(
                                                              color: playersList[
                                                                              index]
                                                                          .title ==
                                                                      "SCO"
                                                                  ? Colors.white
                                                                  : Colors
                                                                      .black,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          6),
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          59,
                                                                          59,
                                                                          59),
                                                                  offset:
                                                                      Offset(
                                                                          1, 1),
                                                                  blurRadius: 1,
                                                                )
                                                              ]),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(4.0),
                                                            child: Text(
                                                              '${playersList[index].title}',
                                                              style: textStyle(
                                                                  playersList[index]
                                                                              .title ==
                                                                          "SCO"
                                                                      ? Colors
                                                                          .black
                                                                      : Colors
                                                                          .white,
                                                                  11,
                                                                  FontWeight
                                                                      .normal),
                                                            ),
                                                          ),
                                                        )
                                                      ]),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width:
                                              screenWidthOfRatio(context, 0.34),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '${playersList[index].name}',
                                                  style: textStyle(Colors.black,
                                                      14, FontWeight.bold),
                                                ),
                                                Spacing().verticalSpace(6),
                                                Text(
                                                  'Sel by ${playersList[index].percentage}%',
                                                  style: textStyle(
                                                      Color.fromARGB(
                                                          255, 104, 103, 103),
                                                      12,
                                                      FontWeight.normal),
                                                ),
                                                Spacing().verticalSpace(6),
                                                if (playersList[index]
                                                    .showPlayedLastMatch)
                                                  Row(children: [
                                                    Container(
                                                      width: 8,
                                                      height: 8,
                                                      decoration: BoxDecoration(
                                                          color: Colors.black,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100)),
                                                    ),
                                                    Spacing()
                                                        .horizontalSpace(3),
                                                    Text(
                                                      'Played last match',
                                                      style: textStyle(
                                                          Colors.black,
                                                          12,
                                                          FontWeight.normal),
                                                    )
                                                  ])
                                              ]),
                                        ),
                                        Container(
                                          width:
                                              screenWidthOfRatio(context, 0.14),
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            '${playersList[index].points}',
                                            style: textStyle(
                                                Color.fromARGB(
                                                    255, 104, 103, 103),
                                                16,
                                                FontWeight.normal),
                                          ),
                                        ),
                                        Spacing().horizontalSpaceOfRatio(
                                            context, 0.06),
                                        Container(
                                          width:
                                              screenWidthOfRatio(context, 0.2),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    '${playersList[index].credits}',
                                                    style: textStyle(
                                                        Colors.black,
                                                        18,
                                                        FontWeight.bold),
                                                  )),
                                              Icon(
                                                selectedPlayer > index
                                                    ? Icons
                                                        .remove_circle_outline
                                                    : Icons.add_circle_outline,
                                                color: selectedPlayer > index
                                                    ? Color.fromARGB(
                                                        255, 240, 182, 94)
                                                    : Color.fromARGB(
                                                        255, 95, 176, 241),
                                                size: 28,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]),
                                    ),
                                  ),
                                  Divider(
                                    height: 1,
                                    color: Color.fromARGB(255, 134, 132, 132),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ],
                )
              : Text('hello'))
        ],
      ),
    );
  }
}

class SelectPlayerCubit extends Cubit<int> {
  SelectPlayerCubit() : super(0);
  void addPlayer() => emit(state + 1);
  void removePlayer() => emit(state - 1);
}
