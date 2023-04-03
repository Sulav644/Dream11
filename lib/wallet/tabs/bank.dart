import 'package:flutter/material.dart';
import '../../utils.dart';

class Bank extends StatelessWidget {
  const Bank({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(screenWidthOfRatio(context, 0.03)),
          child: Card(
            elevation: 6,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidthOfRatio(context, 0.06),
                  vertical: screenHeightOfRatio(context, 0.018)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Spacing().horizontalSpaceOfRatio(context, 0.01),
                                const Icon(
                                  Icons.home_outlined,
                                ),
                                Spacing().horizontalSpaceOfRatio(context, 0.02),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'VERIFY BANK ACCOUNT',
                                      style: textStyle(
                                          const Color.fromARGB(255, 36, 35, 35),
                                          18,
                                          FontWeight.normal),
                                    ),
                                    Spacing()
                                        .verticalSpaceOfRatio(context, 0.015),
                                    Text(
                                      '(Verify your account to withdraw)',
                                      style: textStyle(
                                          const Color.fromARGB(255, 87, 86, 86),
                                          12,
                                          FontWeight.normal),
                                    ),
                                    Spacing()
                                        .verticalSpaceOfRatio(context, 0.015)
                                  ],
                                )
                              ]),
                          buttonWidget(
                              context: context,
                              title: 'UPLOAD ACCOUNT PROOF',
                              color: const Color.fromARGB(255, 3, 55, 97)),
                          Spacing().verticalSpaceOfRatio(context, 0.015),
                          Column(
                            children: [
                              Text(
                                'Bank proof of passbook. Cheque book or',
                                style: textStyle(
                                    const Color.fromARGB(255, 102, 100, 100),
                                    12,
                                    FontWeight.normal),
                              ),
                              Spacing().verticalSpaceOfRatio(context, 0.005),
                              Text(
                                'Statement',
                                style: textStyle(
                                    const Color.fromARGB(255, 102, 100, 100),
                                    12,
                                    FontWeight.normal),
                              ),
                              Spacing().verticalSpaceOfRatio(context, 0.005),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'which shows your ',
                                      style: textStyle(
                                          const Color.fromARGB(
                                              255, 102, 100, 100),
                                          12,
                                          FontWeight.normal),
                                    ),
                                    Text(
                                      'Name, IFSC Code & Account No.',
                                      style: textStyle(
                                          const Color.fromARGB(255, 49, 49, 49),
                                          12,
                                          FontWeight.bold),
                                    )
                                  ])
                            ],
                          ),
                        ]),
                    bankDetailItem(
                        context: context,
                        title: 'Account number',
                        description: 'Your bankDetails account',
                        showDescription: true,
                        inputField: Container(
                            height: screenHeightOfRatio(context, 0.06),
                            alignment: Alignment.bottomCenter,
                            child: inputWidget())),
                    bankDetailItem(
                        context: context,
                        title: 'Retype account number',
                        description: '',
                        showDescription: false,
                        inputField: inputWidget()),
                    bankDetailItem(
                        context: context,
                        title: 'IFSC Code',
                        description: '',
                        showDescription: false,
                        inputField: inputWidget()),
                    bankDetailItem(
                        context: context,
                        title: 'Bank name',
                        description: '',
                        showDescription: false,
                        inputField: inputWidget()),
                    bankDetailItem(
                        context: context,
                        title: 'Bank branch',
                        description: '',
                        showDescription: false,
                        inputField: inputWidget()),
                    mandatoryField(context: context),
                    buttonWidget(
                        context: context,
                        title: 'SUBMIT FOR VERIFICATION',
                        color: Colors.green)
                  ]),
            ),
          ),
        ),
      ],
    );
  }

  TextField inputWidget() => const TextField(
        decoration: InputDecoration(
            border: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 131, 128, 128)))),
      );

  Widget mandatoryField({required BuildContext context}) => Padding(
        padding:
            EdgeInsets.symmetric(vertical: screenHeightOfRatio(context, 0.02)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '* All fields are mandatory',
              style: textStyle(
                  const Color.fromARGB(255, 75, 74, 74), 12, FontWeight.normal),
            ),
          ],
        ),
      );

  Widget bankDetailItem(
          {required BuildContext context,
          required String title,
          required String description,
          required bool showDescription,
          required Widget inputField}) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: screenHeightOfRatio(context, 0.06),
                alignment: Alignment.bottomCenter,
                child: Text(
                  title,
                  style: textStyle(const Color.fromARGB(255, 131, 128, 128), 18,
                      FontWeight.normal),
                ),
              ),
              Spacing().horizontalSpaceOfRatio(context, 0.01),
              Expanded(child: inputField)
            ],
          ),
          if (showDescription)
            Column(
              children: [
                Spacing().verticalSpaceOfRatio(context, 0.014),
                Text(
                  description,
                  style: textStyle(const Color.fromARGB(255, 102, 100, 100), 12,
                      FontWeight.normal),
                ),
              ],
            ),
          Spacing().verticalSpaceOfRatio(context, 0.01)
        ],
      );

  ElevatedButton buttonWidget(
          {required String title,
          required Color color,
          required BuildContext context}) =>
      ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: color,
              padding: EdgeInsets.symmetric(
                  vertical: screenHeightOfRatio(context, 0.02))),
          onPressed: () {},
          child: Text(
            title,
            style: textStyle(Colors.white, 17, FontWeight.bold),
          ));
}
