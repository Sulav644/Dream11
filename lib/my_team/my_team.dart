import 'package:dream11_clone/contests/contest_page.dart';
import 'package:dream11_clone/deep_chargers/deep_chargers.dart';
import 'package:dream11_clone/utils.dart';
import 'package:flutter/material.dart';
import 'package:showcaseview/showcaseview.dart';

class ShowCasePage extends StatelessWidget {
  const ShowCasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShowCaseWidget(
          builder: Builder(
              builder: (context) => MyTeam(
                    context: context,
                  ))),
    );
  }
}

class MyTeam extends StatefulWidget {
  final BuildContext context;
  const MyTeam({super.key, required this.context});

  @override
  State<MyTeam> createState() => _MyTeamState();
}

class _MyTeamState extends State<MyTeam> with TickerProviderStateMixin {
  late TabController tabController;
  final keyOne = GlobalKey();
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabController.animateTo(2);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final tabList = ['Contests', 'My Contests', 'My Teams'];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 233, 233),
      appBar: appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: screenWidth(context),
            color: Colors.white,
            child: TabBar(
                controller: tabController,
                indicatorPadding:
                    const EdgeInsets.only(left: 12, top: 5, bottom: 5),
                labelPadding:
                    const EdgeInsets.only(left: 12, top: 5, bottom: 5),
                indicatorWeight: 6,
                isScrollable: true,
                tabs: [
                  ...tabList.map(
                    (e) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
                      child: Text(
                        e,
                        style: textStyle(
                            tabList.indexOf(e) == tabController.index
                                ? const Color.fromARGB(255, 177, 19, 8)
                                : const Color.fromARGB(255, 77, 75, 75),
                            14,
                            FontWeight.bold),
                      ),
                    ),
                  ),
                ]),
          ),
          Spacing().verticalSpace(12),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 4),
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(130, 212, 230, 245),
                          borderRadius: BorderRadius.circular(4)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Share this contest with your friends!'),
                              Icon(Icons.share_outlined)
                            ]),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(controller: tabController, children: [
                      ...tabList.map(
                        (e) => Column(children: [
                          GestureDetector(
                            onTap: () => showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 18, vertical: 8),
                                  insetPadding: const EdgeInsets.symmetric(
                                      horizontal: 24),
                                  content: SingleChildScrollView(
                                    child: Column(children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(),
                                          GestureDetector(
                                              onTap: () =>
                                                  Navigator.of(context).pop(),
                                              child: const Icon(
                                                Icons.close,
                                                size: 20,
                                                color: Color.fromARGB(
                                                    255, 75, 74, 74),
                                              )),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'CONFIRMATION',
                                            style: textStyle(Colors.black, 18,
                                                FontWeight.normal),
                                          ),
                                        ],
                                      ),
                                      Spacing().verticalSpace(3),
                                      Row(
                                        children: [
                                          Text(
                                            'Account Added',
                                            style: textStyle(
                                                const Color.fromARGB(
                                                    255, 116, 114, 114),
                                                12,
                                                FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Spacing().verticalSpace(18),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Entry',
                                              style: textStyle(Colors.black, 14,
                                                  FontWeight.normal),
                                            ),
                                            Text(
                                              '₹49',
                                              style: textStyle(Colors.black, 13,
                                                  FontWeight.bold),
                                            ),
                                          ]),
                                      Spacing().verticalSpace(18),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                const Icon(
                                                  Icons.gif_box,
                                                  color: Colors.red,
                                                ),
                                                Spacing().horizontalSpace(4),
                                                Text(
                                                  'Usable Cash Bonus',
                                                  style: textStyle(Colors.black,
                                                      14, FontWeight.normal),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.info_outline,
                                                  color: Colors.blue,
                                                ),
                                                Spacing().horizontalSpace(4),
                                                Text(
                                                  '-₹0',
                                                  style: textStyle(Colors.black,
                                                      13, FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ]),
                                      Spacing().verticalSpace(18),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'To Pay',
                                              style: textStyle(Colors.green, 14,
                                                  FontWeight.bold),
                                            ),
                                            Text(
                                              '₹49',
                                              style: textStyle(Colors.green, 13,
                                                  FontWeight.bold),
                                            ),
                                          ]),
                                      Spacing().verticalSpace(16),
                                      Text(
                                        'By agreeing on the terms and conditions you give us access to daily transactions you make and other things we require',
                                        textAlign: TextAlign.center,
                                        style: textStyle(
                                            const Color.fromARGB(
                                                255, 129, 126, 126),
                                            12,
                                            FontWeight.bold),
                                      ),
                                      Spacing().verticalSpace(12),
                                      ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.green)),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                            WidgetsBinding.instance
                                                .addPostFrameCallback((_) =>
                                                    ShowCaseWidget.of(
                                                            widget.context)
                                                        .startShowCase(
                                                            [keyOne]));
                                          },
                                          child: Text(
                                            'JOIN CONTEST',
                                            style: textStyle(Colors.white, 14,
                                                FontWeight.normal),
                                          ))
                                    ]),
                                  ),
                                );
                              },
                            ),
                            child: Stack(children: [
                              Container(
                                height: screenHeightOfRatio(context, 0.2),
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 1, 82, 22),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10))),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    for (var i = 0; i < 6; i++)
                                      Container(
                                        width:
                                            screenWidthOfRatio(context, 0.09),
                                        height:
                                            screenHeightOfRatio(context, 0.2),
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 1, 94, 29),
                                            borderRadius: BorderRadius.only(
                                                topLeft: i == 0
                                                    ? const Radius.circular(10)
                                                    : const Radius.circular(0),
                                                topRight: i == 5
                                                    ? const Radius.circular(10)
                                                    : const Radius.circular(
                                                        0))),
                                      ),
                                  ]),
                              Column(
                                children: [
                                  Container(
                                      height:
                                          screenHeightOfRatio(context, 0.2) /
                                              3.6,
                                      decoration: const BoxDecoration(
                                          color: Color.fromARGB(245, 5, 29, 5),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10),
                                          )),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            DefaultTextStyle(
                                              style: textStyle(Colors.white, 14,
                                                  FontWeight.normal),
                                              child: Row(
                                                children: [
                                                  Spacing().horizontalSpace(10),
                                                  const Text('DEEP CHARGE...'),
                                                  Spacing().horizontalSpace(10),
                                                  const Text('(T1)'),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.edit,
                                                  color: Colors.white,
                                                ),
                                                Spacing().horizontalSpace(10),
                                                const Icon(Icons.copy,
                                                    color: Colors.white),
                                                Spacing().horizontalSpace(10),
                                                const Icon(Icons.share,
                                                    color: Colors.white),
                                                Spacing().horizontalSpace(10),
                                              ],
                                            ),
                                          ])),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            ...[
                                              ['SCO', '4'],
                                              ['THU', '7']
                                            ].map((e) => Row(
                                                  children: [
                                                    Spacing()
                                                        .horizontalSpaceOfRatio(
                                                            context, 0.05),
                                                    SizedBox(
                                                      height:
                                                          screenHeightOfRatio(
                                                                  context,
                                                                  0.2) /
                                                              1.4,
                                                      child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              e[0],
                                                              style: textStyle(
                                                                  Colors.white,
                                                                  13.5,
                                                                  FontWeight
                                                                      .bold),
                                                            ),
                                                            Spacing()
                                                                .verticalSpace(
                                                                    8),
                                                            Text(
                                                              e[1],
                                                              style: textStyle(
                                                                  Colors.white,
                                                                  24,
                                                                  FontWeight
                                                                      .bold),
                                                            )
                                                          ]),
                                                    ),
                                                  ],
                                                )),
                                          ],
                                        ),
                                        Row(children: [
                                          ...[
                                            [
                                              'C',
                                              'assets/iron_man.png',
                                              'J Ingis'
                                            ],
                                            [
                                              'VC',
                                              'assets/captain_america.png',
                                              'M Golker'
                                            ]
                                          ].map((e) => Row(
                                                children: [
                                                  Stack(children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left:
                                                              screenWidthOfRatio(
                                                                  context,
                                                                  0.04)),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 6),
                                                            child: Image.asset(
                                                              e[1],
                                                              width: 65,
                                                              height: 65,
                                                            ),
                                                          ),
                                                          Container(
                                                              decoration: BoxDecoration(
                                                                  color: e[0].length ==
                                                                          1
                                                                      ? Colors.white
                                                                      : Colors.black,
                                                                  borderRadius: BorderRadius.circular(4),
                                                                  boxShadow: const [
                                                                    BoxShadow(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            65,
                                                                            64,
                                                                            64),
                                                                        offset: Offset(
                                                                            1,
                                                                            1))
                                                                  ]),
                                                              child: Padding(
                                                                padding: const EdgeInsets
                                                                        .symmetric(
                                                                    vertical: 3,
                                                                    horizontal:
                                                                        16),
                                                                child: Text(
                                                                  e[2],
                                                                  style: textStyle(
                                                                      e[0].length == 1
                                                                          ? Colors
                                                                              .black
                                                                          : Colors
                                                                              .white,
                                                                      12,
                                                                      FontWeight
                                                                          .normal),
                                                                ),
                                                              ))
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 8.0),
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                            width: 26,
                                                            height: 26,
                                                            decoration: BoxDecoration(
                                                                color: e[0]
                                                                            .length ==
                                                                        1
                                                                    ? Colors
                                                                        .white
                                                                    : Colors
                                                                        .black,
                                                                border: Border.all(
                                                                    color: e[0].length ==
                                                                            1
                                                                        ? const Color.fromARGB(
                                                                            255,
                                                                            43,
                                                                            42,
                                                                            42)
                                                                        : Colors
                                                                            .green,
                                                                    width: 2.5),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100)),
                                                            alignment: Alignment
                                                                .center,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(),
                                                            child: SizedBox(
                                                              width: 26,
                                                              height: 26,
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Text(
                                                                    e[0],
                                                                    style: textStyle(
                                                                        e[0].length ==
                                                                                1
                                                                            ? Colors
                                                                                .black
                                                                            : Colors
                                                                                .white,
                                                                        13,
                                                                        FontWeight
                                                                            .bold),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    )
                                                  ]),
                                                  Spacing()
                                                      .horizontalSpaceOfRatio(
                                                          context, 0.03),
                                                ],
                                              ))
                                        ])
                                      ]),
                                ],
                              ),
                            ]),
                          ),
                          Container(
                            height: screenHeightOfRatio(context, 0.046),
                            decoration: const BoxDecoration(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ...[
                                    ['WK', '3'],
                                    ['BAT', '3'],
                                    ['AR', '1'],
                                    ['BOWL', '4']
                                  ].map(
                                    (e) => Row(
                                      children: [
                                        if (e[0] == 'WK')
                                          Spacing().horizontalSpace(20),
                                        Text(
                                          e[0],
                                          style: textStyle(
                                              const Color.fromARGB(
                                                  255, 94, 92, 92),
                                              14,
                                              FontWeight.normal),
                                        ),
                                        Spacing().horizontalSpace(6),
                                        Text(
                                          e[1],
                                          style: textStyle(Colors.black, 14,
                                              FontWeight.bold),
                                        ),
                                        if (e[0] == 'BOWL')
                                          Spacing().horizontalSpace(20),
                                      ],
                                    ),
                                  )
                                ]),
                          )
                        ]),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
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
          Showcase(
              key: keyOne,
              description: 'See team field',
              descriptionPadding: const EdgeInsets.symmetric(vertical: 8),
              tooltipBackgroundColor: Colors.blue,
              child: IconButton(
                  onPressed: () {
                    navigateTo(context, const DeepChargers());
                  },
                  icon: const Icon(Icons.notification_add))),
          IconButton(onPressed: () {}, icon: const Icon(Icons.save))
        ],
      );
}
