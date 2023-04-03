import 'package:dream11_clone/home_page/components/level_bar.dart';
import 'package:flutter/material.dart';
import '../utils.dart';

class WinningsList {
  String rank;
  String price;
  WinningsList({required this.rank, required this.price});
}

final winningsList = [
  WinningsList(rank: '1', price: '40,00,000'),
  WinningsList(rank: '2', price: '10,00,000'),
  WinningsList(rank: '3', price: '4,00,000'),
  WinningsList(rank: '4', price: '3,00,000'),
  WinningsList(rank: '5', price: '2,00,000'),
  WinningsList(rank: '6', price: '1,00,000'),
  WinningsList(rank: '7', price: '50,000'),
  WinningsList(rank: '8 - 12', price: '9,500'),
  WinningsList(rank: '13 - 18', price: '9,000'),
  WinningsList(rank: '19 - 25', price: '8,500'),
  WinningsList(rank: '26 - 33', price: '8,000')
];

class Winnings extends StatefulWidget {
  const Winnings({super.key});

  @override
  State<Winnings> createState() => _WinningsState();
}

class _WinningsState extends State<Winnings> with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final tabList = ['Winnings', 'LeaderBoard'];
    return Scaffold(
      appBar: appBar(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const LevelBar(),
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 247, 110, 100),
            Color.fromARGB(255, 238, 224, 223)
          ])),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'When the match starts, earn',
                style: textStyle(const Color.fromARGB(255, 29, 29, 29), 12,
                    FontWeight.normal),
              ),
              Spacing().horizontalSpace(4),
              Image.asset(
                'assets/coin.png',
                width: 20,
                height: 20,
                fit: BoxFit.contain,
              ),
              Spacing().horizontalSpace(4),
              Text("1 for every ₹10 you've paid",
                  style: textStyle(const Color.fromARGB(255, 105, 13, 6), 12,
                      FontWeight.bold))
            ]),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TabBar(
                    controller: tabController,
                    isScrollable: true,
                    padding: EdgeInsets.zero,
                    labelPadding:
                        const EdgeInsets.only(right: 16, top: 8, bottom: 8),
                    indicatorPadding: const EdgeInsets.only(
                      right: 16,
                      top: 8,
                    ),
                    indicatorWeight: 6,
                    indicatorColor: const Color.fromARGB(255, 190, 26, 14),
                    tabs: [
                      ...tabList.map((e) => Text(
                            e,
                            style: textStyle(
                                tabList.indexOf(e) == tabController.index
                                    ? Colors.black
                                    : const Color.fromARGB(255, 133, 131, 131),
                                16,
                                tabList.indexOf(e) == tabController.index
                                    ? FontWeight.bold
                                    : FontWeight.normal),
                          ))
                    ]),
                Expanded(
                  child: TabBarView(controller: tabController, children: [
                    ...tabList.map((e) => SingleChildScrollView(
                          child: Column(children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 21.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Be the first in your network to join this context',
                                    style: textStyle(
                                        const Color.fromARGB(255, 29, 29, 29),
                                        14,
                                        FontWeight.normal),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: DefaultTextStyle(
                                style: textStyle(
                                    const Color.fromARGB(255, 133, 131, 131),
                                    15,
                                    FontWeight.normal),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text('Rank'),
                                      Text('Winnings')
                                    ]),
                              ),
                            ),
                            Column(children: [
                              ...winningsList.map((e) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0),
                                    child: DefaultTextStyle(
                                      style: textStyle(
                                          Colors.black, 15, FontWeight.bold),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            e.rank == '1' ||
                                                    e.rank == '2' ||
                                                    e.rank == '3'
                                                ? Stack(children: [
                                                    Image.asset(
                                                      'assets/rewards.png',
                                                      width: 30,
                                                      height: 30,
                                                    ),
                                                    SizedBox(
                                                      width: 30,
                                                      height: 30,
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: 20,
                                                            height: 20,
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100)),
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text(e.rank),
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ])
                                                : Row(
                                                    children: [
                                                      Spacing()
                                                          .horizontalSpace(4),
                                                      Text(
                                                        '#',
                                                        style: textStyle(
                                                            const Color
                                                                    .fromARGB(
                                                                255,
                                                                133,
                                                                131,
                                                                131),
                                                            15,
                                                            FontWeight.normal),
                                                      ),
                                                      Text(e.rank)
                                                    ],
                                                  ),
                                            Text('₹${e.price}')
                                          ]),
                                    ),
                                  ))
                            ])
                          ]),
                        ))
                  ]),
                )
              ],
            ),
          ),
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
          ),
        ],
      );
}
