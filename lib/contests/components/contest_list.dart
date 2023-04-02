import 'package:dream11_clone/contests/contest_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils.dart';
import 'cancellable_message.dart';

class MatchCardList {
  String price;
  String buttonPrice;
  String leftSpots;
  String totalSpots;
  String probablePrice;
  String probablePercentage;
  String playerType;
  bool isGuaranteed;
  double range;
  MatchCardList(
      {required this.price,
      required this.buttonPrice,
      required this.leftSpots,
      required this.totalSpots,
      required this.probablePrice,
      required this.probablePercentage,
      required this.playerType,
      required this.isGuaranteed,
      required this.range});
}

final matchCardList = [
  MatchCardList(
      price: '8 Crores',
      buttonPrice: '10',
      leftSpots: '16,66,424',
      totalSpots: '21,36,977',
      probablePrice: '40 Lakhs',
      probablePercentage: '64%',
      playerType: 'Upto 20',
      isGuaranteed: true,
      range: 0.2),
  MatchCardList(
      price: '1,000',
      buttonPrice: '10',
      leftSpots: '56',
      totalSpots: '100',
      probablePrice: '20',
      probablePercentage: '50%',
      playerType: 'Single',
      isGuaranteed: false,
      range: 0.4),
  MatchCardList(
      price: '66',
      buttonPrice: '19',
      leftSpots: '2',
      totalSpots: '4',
      probablePrice: '66',
      probablePercentage: '25%',
      playerType: 'Single',
      isGuaranteed: false,
      range: 0.5),
  MatchCardList(
      price: '19,000',
      buttonPrice: '12',
      leftSpots: '500',
      totalSpots: '600',
      probablePrice: '120',
      probablePercentage: '20%',
      playerType: 'Single',
      isGuaranteed: false,
      range: 0.4),
  MatchCardList(
      price: '10 Lakhs',
      buttonPrice: '20',
      leftSpots: '40',
      totalSpots: '69',
      probablePrice: '20,000',
      probablePercentage: '30%',
      playerType: 'Single',
      isGuaranteed: false,
      range: 0.4),
  MatchCardList(
      price: '100',
      buttonPrice: '25',
      leftSpots: '10,000',
      totalSpots: '11,000',
      probablePrice: '20',
      probablePercentage: '40%',
      playerType: 'Single',
      isGuaranteed: false,
      range: 0.4),
  MatchCardList(
      price: '250',
      buttonPrice: '10',
      leftSpots: '100',
      totalSpots: '200',
      probablePrice: '40',
      probablePercentage: '64%',
      playerType: 'Single',
      isGuaranteed: false,
      range: 0.4),
  MatchCardList(
      price: '8 Crores',
      buttonPrice: '10',
      leftSpots: '16,66,424',
      totalSpots: '21,36,977',
      probablePrice: '40 Lakhs',
      probablePercentage: '64%',
      playerType: 'Upto 20',
      isGuaranteed: true,
      range: 0.4),
  MatchCardList(
      price: '8 Crores',
      buttonPrice: '10',
      leftSpots: '16,66,424',
      totalSpots: '21,36,977',
      probablePrice: '40 Lakhs',
      probablePercentage: '64%',
      playerType: 'Upto 20',
      isGuaranteed: true,
      range: 0.4),
];

class ContestList extends StatelessWidget {
  const ContestList({super.key});

  @override
  Widget build(BuildContext context) {
    final hideMessage = context.watch<HideMessageCubit>().state;
    double size = 18;

    return Column(children: [
      if (!hideMessage) const CancellableMessage(),
      Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Specially Fake For You',
                  style: textStyle(Colors.black, 20, FontWeight.bold),
                ),
              ],
            ),
            Spacing().verticalSpace(16),
            for (var element in matchCardList)
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: GestureDetector(
                  onTap: () => context
                      .read<PageStateCubit>()
                      .togglePageState(PageState.contentDetail),
                  child: Card(
                    elevation: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        DefaultTextStyle(
                          style: textStyle(
                              const Color.fromARGB(255, 80, 79, 79),
                              13,
                              FontWeight.normal),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [Text('Prize Pool'), Text('Entry')],
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '₹${element.price}',
                                style: textStyle(
                                    Colors.black, 21, FontWeight.bold),
                              ),
                              SizedBox(
                                  width: 80,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.green)),
                                      onPressed: () {},
                                      child: Text('\$${element.buttonPrice}')))
                            ]),
                        Spacing().verticalSpace(8),
                        Stack(children: [
                          Container(
                            width: screenWidth(context),
                            height: 4,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 243, 197, 193),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Container(
                            width: screenWidth(context) * element.range,
                            height: 4,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(colors: [
                                  Color.fromARGB(255, 247, 154, 16),
                                  Color.fromARGB(255, 235, 24, 9)
                                ]),
                                borderRadius: BorderRadius.circular(10)),
                          )
                        ]),
                        Spacing().verticalSpace(8),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${element.leftSpots} spots left',
                                style:
                                    textStyle(Colors.red, 12, FontWeight.bold),
                              ),
                              Text(
                                element.totalSpots,
                                style: textStyle(
                                    const Color.fromARGB(255, 85, 84, 84),
                                    12,
                                    FontWeight.normal),
                              ),
                            ]),
                        Spacing().verticalSpace(10),
                        DefaultTextStyle(
                            style: textStyle(
                                const Color.fromARGB(255, 73, 72, 72),
                                11.5,
                                FontWeight.normal),
                            child: SizedBox(
                              width: screenWidth(context),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 73, 72, 72)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100)),
                                                child: const Icon(
                                                  Icons.attach_money_outlined,
                                                  color: Color.fromARGB(
                                                      255, 73, 72, 72),
                                                  size: 16,
                                                )),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            Text('₹${element.probablePrice}')
                                          ],
                                        ),
                                        Spacing().horizontalSpace(10),
                                        Row(
                                          children: [
                                            Container(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Icon(
                                                  Icons.military_tech_outlined,
                                                  color: const Color.fromARGB(
                                                      255, 73, 72, 72),
                                                  size: size,
                                                )),
                                            Text(element.probablePercentage)
                                          ],
                                        ),
                                        Spacing().horizontalSpace(10),
                                        Row(
                                          children: [
                                            Container(
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 73, 72, 72)),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100)),
                                                child: const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: 2.0,
                                                      horizontal: 3),
                                                  child: Text('M'),
                                                )),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            Text(element.playerType)
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        if (element.isGuaranteed)
                                          Container(
                                              alignment: Alignment.centerRight,
                                              child: Icon(
                                                Icons.check_circle_outline,
                                                color: const Color.fromARGB(
                                                    255, 73, 72, 72),
                                                size: size,
                                              )),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        if (element.isGuaranteed)
                                          const Text(
                                            'Guaranteed',
                                          )
                                      ],
                                    ),
                                  ]),
                            ))
                      ]),
                    ),
                  ),
                ),
              )
          ],
        ),
      )
    ]);
  }
}

class HideMessageCubit extends Cubit<bool> {
  HideMessageCubit() : super(false);
  void toggleHideMessage() => emit(true);
}
