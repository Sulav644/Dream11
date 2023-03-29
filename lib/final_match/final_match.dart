import 'package:dream11_clone/home_page/components/level_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../match/components/match_tabbar_content.dart';
import '../utils.dart';

class FinalMatch extends StatelessWidget {
  const FinalMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(children: [
        LevelBar(),
        Text('Choose your Captain and Vice Captain'),
        Text('C gets 2x points and VC gets 1.5x points'),
        Container(
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 197, 196, 196),
                blurRadius: 4,
                spreadRadius: 1,
                offset: Offset(1, 1))
          ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: DefaultTextStyle(
              style: textStyle(
                  Color.fromARGB(255, 104, 103, 103), 13, FontWeight.bold),
              child: Row(children: [
                Container(
                  width: screenWidthOfRatio(context, 0.24),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Row(
                      children: [
                        Text(
                          'TYPE',
                          style: textStyle(Color.fromARGB(255, 26, 25, 25), 13,
                              FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_downward,
                          color: Color.fromARGB(255, 26, 25, 25),
                          size: 18,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                    width: screenWidthOfRatio(context, 0.34),
                    child: Text('POINTS')),
                Container(
                    width: screenWidthOfRatio(context, 0.14),
                    child: Text('% C BY')),
                Spacing().horizontalSpaceOfRatio(context, 0.06),
                Container(
                    width: screenWidthOfRatio(context, 0.2),
                    child: Row(
                      children: [
                        Text(
                          '% VC BY',
                          style: textStyle(Color.fromARGB(255, 26, 25, 25), 13,
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
                return Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(children: [
                      Container(
                        child: Stack(
                          children: [
                            Image.asset(
                              '${playersList[index].image}',
                              width: screenWidthOfRatio(context, 0.24),
                              height: screenWidthOfRatio(context, 0.24),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Container(
                                height: 80,
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.info_outline,
                                        color:
                                            Color.fromARGB(255, 104, 103, 103),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: playersList[index].title ==
                                                    "SCO"
                                                ? Colors.white
                                                : Colors.black,
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4.0),
                                          child: Text(
                                            '${playersList[index].title}',
                                            style: textStyle(
                                                playersList[index].title ==
                                                        "SCO"
                                                    ? Colors.black
                                                    : Colors.white,
                                                11,
                                                FontWeight.normal),
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
                        width: screenWidthOfRatio(context, 0.34),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${playersList[index].name}',
                                style: textStyle(
                                    Colors.black, 14, FontWeight.bold),
                              ),
                              Spacing().verticalSpace(6),
                              Text(
                                'Sel by ${playersList[index].percentage}%',
                                style: textStyle(
                                    Color.fromARGB(255, 104, 103, 103),
                                    12,
                                    FontWeight.normal),
                              ),
                              Spacing().verticalSpace(6),
                              if (playersList[index].showPlayedLastMatch)
                                Row(children: [
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                  Spacing().horizontalSpace(3),
                                  Text(
                                    'Played last match',
                                    style: textStyle(
                                        Colors.black, 12, FontWeight.normal),
                                  )
                                ])
                            ]),
                      ),
                      Container(
                        width: screenWidthOfRatio(context, 0.14),
                        alignment: Alignment.centerRight,
                        child: Text(
                          '${playersList[index].points}',
                          style: textStyle(Color.fromARGB(255, 104, 103, 103),
                              16, FontWeight.normal),
                        ),
                      ),
                      Spacing().horizontalSpaceOfRatio(context, 0.06),
                      Container(
                        width: screenWidthOfRatio(context, 0.2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                child: Text(
                                  '${playersList[index].credits}',
                                  style: textStyle(
                                      Colors.black, 18, FontWeight.bold),
                                )),
                            Icon(
                              Icons.add_circle_outline,
                              size: 28,
                            )
                          ],
                        ),
                      ),
                    ]),
                  ),
                );
              }),
        ),
      ]),
    );
  }

  AppBar appBar() => AppBar(
        title: Row(
          children: [
            Text(
              '2h 00m left',
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.question_mark))
        ],
      );
}
