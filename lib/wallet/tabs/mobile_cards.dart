import 'package:flutter/material.dart';
import '../../utils.dart';

class MobileAndCards extends StatelessWidget {
  const MobileAndCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(screenWidthOfRatio(context, 0.02)),
          child: Card(
            elevation: 6,
            child: Padding(
              padding: EdgeInsets.all(screenWidthOfRatio(context, 0.025)),
              child: Column(children: [
                Container(
                    width: screenWidth(context),
                    height: screenHeightOfRatio(context, 0.09),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: const Color.fromARGB(255, 75, 73, 73)),
                        borderRadius: BorderRadius.circular(6)),
                    child: Row(children: [
                      Spacing().horizontalSpaceOfRatio(context, 0.015),
                      const Icon(
                        Icons.mobile_friendly_outlined,
                        color: Color.fromARGB(255, 73, 72, 72),
                      ),
                      Spacing().horizontalSpaceOfRatio(context, 0.05),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Your mobile number is verified',
                              style:
                                  textStyle(Colors.black, 14, FontWeight.bold),
                            ),
                            Spacing().verticalSpaceOfRatio(context, 0.01),
                            const Text('1234567890'),
                          ])
                    ])),
                Column(children: [
                  Spacing().verticalSpaceOfRatio(context, 0.04),
                  Row(children: [
                    Spacing().horizontalSpaceOfRatio(context, 0.01),
                    const Icon(
                      Icons.message_outlined,
                      color: Color.fromARGB(255, 58, 57, 57),
                    ),
                    Spacing().horizontalSpaceOfRatio(context, 0.03),
                    Text(
                      'Verify your email',
                      style: textStyle(const Color.fromARGB(255, 58, 57, 57),
                          18, FontWeight.normal),
                    ),
                  ]),
                  Column(
                    children: [
                      Spacing().verticalSpaceOfRatio(context, 0.01),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            shareMedia(
                                context: context,
                                title: 'Facebook',
                                color: const Color.fromARGB(255, 1, 32, 58),
                                vPadding: 0.005,
                                hPadding: 0.03,
                                firstGap: 0.02,
                                secondGap: 0.1),
                            Spacing().horizontalSpaceOfRatio(context, 0.035),
                            shareMedia(
                                context: context,
                                title: 'Google',
                                color: const Color.fromARGB(255, 131, 12, 4),
                                vPadding: 0.0095,
                                hPadding: 0.046,
                                firstGap: 0.025,
                                secondGap: 0.1)
                          ]),
                      Spacing().verticalSpaceOfRatio(context, 0.02),
                      Text(
                        "We won't post anything without your",
                        style: textStyle(const Color.fromARGB(255, 95, 92, 92),
                            12, FontWeight.normal),
                      ),
                      Spacing().verticalSpaceOfRatio(context, 0.02),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          lineWidget(context: context),
                          Text(
                            'OR',
                            style: textStyle(
                                const Color.fromARGB(255, 95, 92, 92),
                                16,
                                FontWeight.normal),
                          ),
                          lineWidget(context: context),
                        ],
                      )
                    ],
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Spacing().verticalSpaceOfRatio(context, 0.05),
                        Padding(
                          padding: EdgeInsets.only(
                              left: screenWidthOfRatio(context, 0.01)),
                          child: Text(
                            'Email',
                            style: textStyle(
                                const Color.fromARGB(255, 95, 92, 92),
                                18,
                                FontWeight.normal),
                          ),
                        ),
                        Spacing().verticalSpaceOfRatio(context, 0.02),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'We will send you a verification link',
                              style: textStyle(
                                  const Color.fromARGB(255, 68, 68, 68),
                                  14,
                                  FontWeight.normal),
                            ),
                            Spacing().verticalSpaceOfRatio(context, 0.01),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 42, 160, 46)),
                                onPressed: () {},
                                child: const Text('VERIFY'))
                          ],
                        )
                      ])
                ]),
                Spacing().verticalSpaceOfRatio(context, 0.01)
              ]),
            ),
          ),
        ),
      ],
    );
  }

  Widget lineWidget({required BuildContext context}) => SizedBox(
      width: screenWidthOfRatio(context, 0.2),
      child: const Divider(
        color: Color.fromARGB(255, 95, 92, 92),
      ));

  ElevatedButton shareMedia(
          {required BuildContext context,
          required String title,
          required Color color,
          required double vPadding,
          required double hPadding,
          required double firstGap,
          required double secondGap}) =>
      ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                  vertical: screenHeightOfRatio(context, vPadding),
                  horizontal: screenWidthOfRatio(context, hPadding)),
              backgroundColor: color),
          onPressed: () {},
          child: Row(
            children: [
              color == const Color.fromARGB(255, 1, 32, 58)
                  ? Image.asset(
                      'assets/facebook.png',
                      width: 30,
                    )
                  : Container(
                      width: 23,
                      height: 23,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/google.png',
                        width: 13,
                      )),
              Spacing().horizontalSpaceOfRatio(context, firstGap),
              Text(
                title,
                style: textStyle(Colors.white, 13.5, FontWeight.bold),
              ),
              Spacing().horizontalSpaceOfRatio(context, secondGap),
            ],
          ));
}
