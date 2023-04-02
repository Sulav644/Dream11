import 'package:dream11_clone/home_page/components/level_bar.dart';
import 'package:dream11_clone/my_team/my_team.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../utils.dart';

class Players {
  String name;
  String image;
  double cPercentage;
  double vcPercentage;
  int points;

  String title;
  String secondTitle;
  Players(
      {required this.name,
      required this.image,
      required this.cPercentage,
      required this.vcPercentage,
      required this.points,
      required this.title,
      required this.secondTitle});
}

final playersList = [
  Players(
      name: 'J Inglis',
      image: 'assets/iron_man.png',
      cPercentage: 0.95,
      vcPercentage: 8.36,
      points: 435,
      title: 'SCO',
      secondTitle: 'WK'),
  Players(
      name: 'M Gilkes',
      image: 'assets/captain_america.png',
      cPercentage: 3.15,
      vcPercentage: 4.25,
      points: 268,
      title: 'THU',
      secondTitle: 'WK'),
  Players(
      name: 'S Whiteman',
      image: 'assets/thor.png',
      cPercentage: 0.15,
      vcPercentage: 0.12,
      points: 0,
      title: 'THU',
      secondTitle: 'WK'),
  Players(
      name: 'A Hales',
      image: 'assets/hulk.png',
      cPercentage: 13.41,
      vcPercentage: 9.39,
      points: 377,
      title: 'SCO',
      secondTitle: 'BAT'),
  Players(
      name: 'F du Plessis',
      image: 'assets/black_widow.png',
      cPercentage: 13.41,
      vcPercentage: 9.39,
      points: 377,
      title: 'SCO',
      secondTitle: 'BAT'),
  Players(
      name: 'D Warner',
      image: 'assets/hawkeye.png',
      cPercentage: 13.41,
      vcPercentage: 9.39,
      points: 377,
      title: 'SCO',
      secondTitle: 'BAT'),
];

class FinalMatch extends StatelessWidget {
  const FinalMatch({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedCaptains = context.watch<SelectCaptainCubit>().state;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 222, 222),
      appBar: appBar(),
      body: Column(children: [
        const LevelBar(),
        Container(
          width: screenWidth(context),
          color: const Color.fromARGB(255, 224, 222, 222),
          alignment: Alignment.center,
          child: Column(
            children: [
              Spacing().verticalSpace(20),
              Text(
                'Choose your Captain and Vice Captain',
                style: textStyle(Colors.black, 16, FontWeight.bold),
              ),
              Spacing().verticalSpace(15),
            ],
          ),
        ),
        Container(
          width: screenWidth(context),
          color: const Color.fromARGB(255, 224, 222, 222),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text('C gets 2x points and VC gets 1.5x points',
                  style: textStyle(Colors.black, 14, FontWeight.normal)),
              Spacing().verticalSpace(20),
            ],
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: DefaultTextStyle(
              style: textStyle(const Color.fromARGB(255, 104, 103, 103), 13,
                  FontWeight.bold),
              child: Row(children: [
                Container(
                  width: screenWidthOfRatio(context, 0.23),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Row(
                      children: [
                        Text(
                          'TYPE',
                          style: textStyle(
                              const Color.fromARGB(255, 26, 25, 25),
                              13,
                              FontWeight.bold),
                        ),
                        const Icon(
                          Icons.arrow_downward,
                          color: Color.fromARGB(255, 26, 25, 25),
                          size: 18,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                    width: screenWidthOfRatio(context, 0.34),
                    child: const Text('POINTS')),
                SizedBox(
                    width: screenWidthOfRatio(context, 0.14),
                    child: const Text('% C BY')),
                Spacing().horizontalSpaceOfRatio(context, 0.06),
                SizedBox(
                    width: screenWidthOfRatio(context, 0.2),
                    child: Row(
                      children: [
                        Text(
                          '% VC BY',
                          style: textStyle(
                              const Color.fromARGB(255, 104, 103, 103),
                              13,
                              FontWeight.bold),
                        ),
                      ],
                    )),
              ]),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: playersList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    GestureDetector(
                      onTap: () => navigateTo(context, const ShowCasePage()),
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Row(children: [
                            Stack(
                              children: [
                                Image.asset(
                                  playersList[index].image,
                                  width: screenWidthOfRatio(context, 0.24),
                                  height: screenWidthOfRatio(context, 0.24),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 4.0),
                                  child: SizedBox(
                                    height: 80,
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            Icons.info_outline,
                                            color: Color.fromARGB(
                                                255, 104, 103, 103),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: playersList[index]
                                                                .title ==
                                                            "SCO"
                                                        ? Colors.white
                                                        : Colors.black,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2),
                                                    boxShadow: const [
                                                      BoxShadow(
                                                          color: Color.fromARGB(
                                                              255,
                                                              124,
                                                              123,
                                                              123),
                                                          offset: Offset(1, 1),
                                                          blurRadius: 6)
                                                    ]),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(4.0),
                                                  child: Text(
                                                    playersList[index].title,
                                                    style: textStyle(
                                                        playersList[index]
                                                                    .title ==
                                                                "SCO"
                                                            ? Colors.black
                                                            : Colors.white,
                                                        11,
                                                        FontWeight.normal),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2),
                                                    boxShadow: const [
                                                      BoxShadow(
                                                          color: Color.fromARGB(
                                                              255,
                                                              124,
                                                              123,
                                                              123),
                                                          offset: Offset(1, 1),
                                                          blurRadius: 6)
                                                    ]),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(4.0),
                                                  child: Text(
                                                    playersList[index]
                                                        .secondTitle,
                                                    style: textStyle(
                                                        Colors.black,
                                                        11,
                                                        FontWeight.normal),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ]),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: screenWidthOfRatio(context, 0.34),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      playersList[index].name,
                                      style: textStyle(
                                          Colors.black, 14, FontWeight.bold),
                                    ),
                                    Spacing().verticalSpace(6),
                                    Text(
                                      '${playersList[index].points} pts',
                                      style: textStyle(
                                          const Color.fromARGB(
                                              255, 104, 103, 103),
                                          12,
                                          FontWeight.normal),
                                    ),
                                    Spacing().verticalSpace(6),
                                  ]),
                            ),
                            Container(
                              width: screenWidthOfRatio(context, 0.14),
                              alignment: Alignment.centerRight,
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () => context
                                        .read<SelectCaptainCubit>()
                                        .selectCaptain(index),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: selectedCaptains[0] == index
                                              ? Colors.black
                                              : Colors.white,
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 104, 103, 103)),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      alignment: Alignment.center,
                                      child: Text(
                                        selectedCaptains[0] == index
                                            ? '2x'
                                            : 'C',
                                        style: textStyle(
                                            selectedCaptains[0] == index
                                                ? Colors.white
                                                : const Color.fromARGB(
                                                    255, 104, 103, 103),
                                            14,
                                            FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Spacing().verticalSpace(6),
                                  Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        '${playersList[index].cPercentage}',
                                        style: textStyle(
                                            const Color.fromARGB(
                                                255, 104, 103, 103),
                                            18,
                                            FontWeight.bold),
                                      )),
                                ],
                              ),
                            ),
                            Spacing().horizontalSpaceOfRatio(context, 0.06),
                            SizedBox(
                              width: screenWidthOfRatio(context, 0.2),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () => context
                                        .read<SelectCaptainCubit>()
                                        .selectVCaptain(index),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: selectedCaptains[1] == index
                                              ? Colors.black
                                              : Colors.white,
                                          border: Border.all(
                                              color: const Color.fromARGB(
                                                  255, 104, 103, 103)),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      alignment: Alignment.center,
                                      child: Text(
                                        selectedCaptains[1] == index
                                            ? '1.5x'
                                            : 'VC',
                                        style: textStyle(
                                            selectedCaptains[1] == index
                                                ? Colors.white
                                                : const Color.fromARGB(
                                                    255, 104, 103, 103),
                                            14,
                                            FontWeight.normal),
                                      ),
                                    ),
                                  ),
                                  Spacing().verticalSpace(6),
                                  Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        '${playersList[index].vcPercentage}',
                                        style: textStyle(
                                            const Color.fromARGB(
                                                255, 104, 103, 103),
                                            18,
                                            FontWeight.bold),
                                      )),
                                ],
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ),
                    if (index == 2) Spacing().verticalSpace(12),
                  ],
                );
              }),
        ),
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
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 15,
              child: Icon(Icons.question_mark),
            ),
          )
        ],
      );
}

class SelectCaptainCubit extends Cubit<List<int>> {
  SelectCaptainCubit() : super([-1, -1]);
  void selectCaptain(int index) => emit([index, state[1]]);
  void selectVCaptain(int index) => emit([state[0], index]);
}
