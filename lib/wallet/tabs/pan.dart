import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import '../../utils.dart';

class Pan extends StatelessWidget {
  const Pan({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(screenWidthOfRatio(context, 0.03)),
            child: Card(
              elevation: 6,
              child: Padding(
                padding: EdgeInsets.all(screenWidthOfRatio(context, 0.05)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(children: [
                              Column(
                                children: [
                                  const Icon(
                                    Icons.message_outlined,
                                    color: Color.fromARGB(255, 92, 91, 91),
                                  ),
                                  Spacing().verticalSpaceOfRatio(context, 0.016)
                                ],
                              ),
                              Spacing().horizontalSpaceOfRatio(context, 0.02),
                              Text(
                                'VERIFY YOUR PAN',
                                style: textStyle(
                                    const Color.fromARGB(255, 92, 91, 91),
                                    16,
                                    FontWeight.normal),
                              ),
                            ]),
                            Spacing().verticalSpaceOfRatio(context, 0.003),
                            buttonWidget(
                                context: context,
                                title: 'UPLOAD PAN CARD IMAGE',
                                color: const Color.fromARGB(255, 3, 55, 97))
                          ]),
                      panCardItem(
                          context: context,
                          title: 'Name*',
                          titleColor: const Color.fromARGB(255, 148, 146, 146),
                          description: 'As on PAN',
                          showDescription: true,
                          gap: 0.3,
                          inputField: const TextField()),
                      panCardItem(
                          context: context,
                          title: 'PAN number*',
                          titleColor: const Color.fromARGB(255, 148, 146, 146),
                          description: '10 digit PAN',
                          showDescription: true,
                          gap: 0.04,
                          inputField: const TextField()),
                      panCardItem(
                          context: context,
                          title: 'Date of birth*',
                          titleColor: const Color.fromARGB(255, 148, 146, 146),
                          description: '',
                          showDescription: false,
                          gap: 0.02,
                          inputField: GestureDetector(
                            onTap: () => showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime.now()),
                            child: const TextField(
                              enabled: false,
                            ),
                          )),
                      panCardItem(
                          context: context,
                          title: 'Select State',
                          titleColor: Colors.black,
                          description: '',
                          showDescription: false,
                          gap: 0.02,
                          inputField: GestureDetector(
                            onTap: () => showCountryPicker(
                              context: context,
                              onSelect: (value) {},
                            ),
                            child: const TextField(
                              enabled: false,
                            ),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(children: [
                            Spacing().verticalSpaceOfRatio(context, 0.015),
                            Text(
                              '* All fields are mandatory',
                              style: textStyle(
                                  const Color.fromARGB(255, 66, 65, 65),
                                  14,
                                  FontWeight.normal),
                            ),
                            Spacing().verticalSpaceOfRatio(context, 0.018),
                            const Text(
                              'Why should I submit my PAN Card?',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 2, 65, 117),
                                  fontSize: 14,
                                  decoration: TextDecoration.underline),
                            ),
                            Spacing().verticalSpaceOfRatio(context, 0.03),
                          ]),
                        ],
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            buttonWidget(
                                context: context,
                                title: 'SUBMIT FOR VERIFICATION',
                                color: const Color.fromARGB(255, 11, 172, 16))
                          ]),
                      Spacing().verticalSpaceOfRatio(context, 0.1)
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget panCardItem(
          {required BuildContext context,
          required String title,
          required Color titleColor,
          required String description,
          required bool showDescription,
          required double gap,
          required Widget inputField}) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Spacing().horizontalSpaceOfRatio(context, 0.01),
              Container(
                height: screenHeightOfRatio(context, 0.06),
                alignment: Alignment.bottomCenter,
                child: Text(
                  title,
                  style: textStyle(titleColor, 18, FontWeight.normal),
                ),
              ),
              Spacing().horizontalSpaceOfRatio(context, gap),
              Expanded(child: inputField)
            ],
          ),
          if (showDescription)
            Column(
              children: [
                Spacing().verticalSpaceOfRatio(context, 0.01),
                Text(
                  description,
                  style: textStyle(const Color.fromARGB(255, 148, 146, 146),
                      12.5, FontWeight.normal),
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
