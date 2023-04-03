import 'package:dream11_clone/utils.dart';
import 'package:flutter/material.dart';

class SaleBanner {
  String image;
  String winTag;
  int price;
  SaleBanner({required this.image, required this.winTag, required this.price});
}

final sales = [
  SaleBanner(
      image: 'assets/festive_sale.jpg', winTag: 'Win an LED TV!', price: 25),
  SaleBanner(
      image: 'assets/festive_sale.jpg', winTag: 'Win an iPhone!', price: 25),
  SaleBanner(image: 'assets/festive_sale.jpg', winTag: 'Win Gold!', price: 25),
  SaleBanner(image: 'assets/big_sale.jpg', winTag: '₹10 Cash Bonus', price: 25)
];

class RewardsList extends StatefulWidget {
  const RewardsList({super.key});

  @override
  State<RewardsList> createState() => _RewardsListState();
}

class _RewardsListState extends State<RewardsList>
    with TickerProviderStateMixin {
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
    final tabs = ['Recent Shop', 'My Rewards'];
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: screenHeightOfRatio(context, 0.3),
            color: Colors.black,
          ),
          Column(
            children: [
              Spacing().verticalSpaceOfRatio(context, 0.3),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: Padding(
                  padding: EdgeInsets.all(screenWidthOfRatio(context, 0.05)),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 238, 235, 235),
                        borderRadius: BorderRadius.circular(8)),
                    child: TabBar(
                        controller: tabController,
                        indicatorColor: Colors.transparent,
                        indicator: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromARGB(255, 43, 42, 42),
                                  offset: Offset(0.5, 1),
                                  blurRadius: 2),
                              BoxShadow(
                                  color: Color.fromARGB(255, 43, 42, 42),
                                  offset: Offset(-0.5, 1),
                                  blurRadius: 2)
                            ]),
                        labelPadding: EdgeInsets.symmetric(
                            vertical: screenHeightOfRatio(context, 0.01)),
                        tabs: [
                          ...tabs.map((e) => Text(
                                e,
                                style: textStyle(
                                    tabs.indexOf(e) == tabController.index
                                        ? const Color.fromARGB(255, 117, 12, 5)
                                        : const Color.fromARGB(255, 82, 80, 80),
                                    14,
                                    FontWeight.bold),
                              ))
                        ]),
                  ),
                ),
              ),
              Expanded(
                  child: TabBarView(controller: tabController, children: [
                Container(
                  width: screenWidth(context),
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Wrap(children: [
                    ...sales.map((e) => Padding(
                          padding: EdgeInsets.all(
                              screenWidthOfRatio(context, 0.015)),
                          child: Stack(
                            children: [
                              Container(
                                width: screenWidthOfRatio(context, 0.45),
                                height: screenWidthOfRatio(context, 0.5),
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          e.image,
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                              Container(
                                width: screenWidthOfRatio(context, 0.45),
                                height: screenWidthOfRatio(context, 0.5),
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors: [
                                        Color.fromARGB(120, 65, 64, 64),
                                        Color.fromARGB(50, 204, 202, 202),
                                        Color.fromARGB(255, 20, 20, 20)
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      stops: [0.1, 0.5, 0.7]),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              Container(
                                  width: screenWidthOfRatio(context, 0.45),
                                  height: screenWidthOfRatio(context, 0.5),
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        bottom:
                                            screenHeightOfRatio(context, 0.01),
                                        left:
                                            screenWidthOfRatio(context, 0.02)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          e.winTag,
                                          style: textStyle(
                                              sales.indexOf(e) == 0
                                                  ? const Color.fromARGB(
                                                      255, 228, 194, 144)
                                                  : Colors.white,
                                              14,
                                              FontWeight.bold),
                                        ),
                                        Spacing().verticalSpaceOfRatio(
                                            context, 0.012),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/coin.png',
                                              width: 20,
                                            ),
                                            Spacing().horizontalSpaceOfRatio(
                                                context, 0.01),
                                            Text(
                                              '${e.price}',
                                              style: textStyle(
                                                  sales.indexOf(e) == 0
                                                      ? const Color.fromARGB(
                                                          255, 228, 194, 144)
                                                      : Colors.white,
                                                  14,
                                                  FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ))
                  ]),
                ),
                const Text('hello')
              ]))
            ],
          ),
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/portal.png',
                    width: screenWidthOfRatio(context, 0.8),
                  ),
                ],
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: screenHeightOfRatio(context, 0.05)),
                child: Column(children: [
                  Image.asset(
                    'assets/coin.png',
                    width: 30,
                  ),
                  Spacing().verticalSpaceOfRatio(context, 0.025),
                  Text(
                    'DreamCoin Balance',
                    style: textStyle(Colors.orange, 14, FontWeight.normal),
                  ),
                  Spacing().verticalSpaceOfRatio(context, 0.015),
                  Text(
                    '594',
                    style: textStyle(const Color.fromARGB(255, 230, 177, 99),
                        24, FontWeight.bold),
                  ),
                  Spacing().verticalSpaceOfRatio(context, 0.005),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'My History',
                        style: textStyle(
                            const Color.fromARGB(255, 228, 194, 144),
                            14,
                            FontWeight.normal),
                      ),
                      Spacing().horizontalSpaceOfRatio(context, 0.05),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Color.fromARGB(255, 228, 194, 144),
                        size: 20,
                      )
                    ],
                  ),
                  Spacing().verticalSpaceOfRatio(context, 0.02),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    const Icon(
                      Icons.question_mark,
                      color: Color.fromARGB(255, 228, 194, 144),
                    ),
                    Text(
                      'Learn how to earn DreamCoins',
                      style: textStyle(const Color.fromARGB(255, 228, 194, 144),
                          14, FontWeight.normal),
                    )
                  ])
                ]),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Color.fromARGB(255, 82, 80, 80),
                ),
                label: 'Home',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.military_tech_outlined,
                  color: Color.fromARGB(255, 82, 80, 80),
                ),
                label: 'Matches',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.card_giftcard,
                  color: Colors.red,
                ),
                label: 'Rewards',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_outlined,
                  color: Color.fromARGB(255, 82, 80, 80),
                ),
                label: 'Chat',
                backgroundColor: Colors.white),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings_outlined,
                  color: Color.fromARGB(255, 82, 80, 80),
                ),
                label: 'Settings',
                backgroundColor: Colors.white),
          ]),
    );
  }
}
