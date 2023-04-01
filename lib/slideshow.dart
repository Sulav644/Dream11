import 'package:dream11_clone/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

enum AnimProps { width, height }

class SlideShow extends StatefulWidget {
  const SlideShow({super.key});

  @override
  State<SlideShow> createState() => _SlideShowState();
}

class _SlideShowState extends State<SlideShow> with TickerProviderStateMixin {
  late AnimationController controller;

  late Animation<TimelineValue<AnimProps>> animation;

  void startAnimation(BuildContext context) {
    controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    animation = TimelineTween<AnimProps>()
        // opacity
        .addScene(
          begin: 0.milliseconds,
          end: 1000.milliseconds,
          curve: Curves.ease,
        )
        .animate(AnimProps.width, tween: Tween(begin: 60.0, end: 10.0))
        .parent
        .animatedBy(controller);
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  late PageController pageController;
  int index = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: index);
    controller = AnimationController(vsync: this);
    animation =
        TimelineTween<AnimProps>(curve: Curves.easeIn).animatedBy(controller);
  }

  @override
  Widget build(BuildContext context) {
    final smallScreens = [
      Image.asset(
        'assets/winnings.png',
        width: screenWidthOfRatio(context, 0.6),
      ),
      Image.asset(
        'assets/player.png',
        width: screenWidthOfRatio(context, 0.6),
      ),
      Image.asset(
        'assets/match.png',
        width: screenWidthOfRatio(context, 0.6),
      ),
    ];
    final mobileScreens = [
      Padding(
        padding: const EdgeInsets.only(top: 22.0),
        child: Image.asset(
          'assets/contest_screen.png',
          width: screenWidthOfRatio(context, 0.392),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 22.0),
        child: Image.asset(
          'assets/players_screen.png',
          width: screenWidthOfRatio(context, 0.392),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 22.0),
        child: Image.asset(
          'assets/matches_screen.png',
          width: screenWidthOfRatio(context, 0.392),
        ),
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Stack(
          children: [
            Container(
              width: screenWidth(context),
              height: screenHeight(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacing().verticalSpaceOfRatio(context, 0.1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/rewards.png',
                        width: 35,
                        height: 35,
                      ),
                      Spacing().horizontalSpace(10),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          'DREAM11 CLONE',
                          style: textStyle(Colors.white, 24, FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Spacing().verticalSpaceOfRatio(context, 0.1),
                  Image.asset(
                    'assets/portal.png',
                    width: screenWidth(context),
                    height: screenWidth(context),
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidth(context),
              height: screenHeight(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/mobile.png',
                  ),
                ],
              ),
            ),
            Container(
              width: screenWidth(context),
              height: screenHeight(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  mobileScreens[index],
                ],
              ),
            ),
            Container(
              width: screenWidth(context),
              height: screenHeight(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  smallScreens[index],
                  Spacing().verticalSpaceOfRatio(context, 0.08),
                  Container(
                    width: screenWidthOfRatio(context, 0.42),
                    height: screenHeightOfRatio(context, 0.07),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      colors: [Color.fromARGB(190, 53, 52, 52), Colors.black],
                      begin: Alignment.topCenter,
                      end: Alignment.center,
                    )),
                  ),
                  Container(
                    height: screenHeightOfRatio(context, 0.3),
                    color: Colors.black,
                  )
                ],
              ),
            ),
            Container(
              height: screenHeight(context),
              child: PageView(
                  controller: pageController,
                  onPageChanged: (value) {
                    setState(() {
                      index = value;
                    });
                    startAnimation(context);
                  },
                  children: [
                    Container(
                      width: screenWidth(context),
                      height: screenHeight(context),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/join_context.png',
                            width: screenWidthOfRatio(context, 0.7),
                          ),
                          Container(
                            height: screenHeightOfRatio(context, 0.15),
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: screenWidth(context),
                      height: screenHeight(context),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/select_match.png',
                            width: screenWidthOfRatio(context, 0.7),
                          ),
                          Container(
                            height: screenHeightOfRatio(context, 0.15),
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: screenWidth(context),
                      height: screenHeight(context),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/create_teams.png',
                            width: screenWidthOfRatio(context, 0.7),
                          ),
                          Container(
                            height: screenHeightOfRatio(context, 0.15),
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
            Container(
              height: screenHeightOfRatio(context, 0.9),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    ...smallScreens.map((e) => Row(
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  color: smallScreens.indexOf(e) == index
                                      ? Colors.white
                                      : Color.fromARGB(255, 163, 161, 161),
                                  borderRadius: BorderRadius.circular(100)),
                            ),
                            Spacing().horizontalSpace(6),
                          ],
                        ))
                  ]),
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}
