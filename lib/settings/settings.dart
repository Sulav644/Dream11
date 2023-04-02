import 'package:dream11_clone/settings/privacy_settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../utils.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool switchOne = true;
  bool switchTwo = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidthOfRatio(context, 0.055)),
          child: Column(
            children: [
              accountField(
                  title: 'Name',
                  hintText: 'Alex Warren',
                  showChange: false,
                  showPassword: true),
              accountField(
                  title: 'Email',
                  hintText: 'alex@gmail.com',
                  showChange: true,
                  showPassword: true),
              accountField(
                  title: 'Password',
                  hintText: '12345',
                  showChange: true,
                  showPassword: false),
              accountField(
                  title: 'Date of Birth',
                  hintText: '1998-08-01',
                  showChange: false,
                  showPassword: true),
              genderField(context: context),
            ],
          ),
        ),
        GestureDetector(
            onTap: () => navigateTo(context, PrivacySettings()),
            child: settingHeader(context: context)),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidthOfRatio(context, 0.055)),
          child: Column(
            children: [
              toggleOptions(
                  context: context,
                  index: 0,
                  title: 'Allow SMS notifications',
                  subtitle: '',
                  isOn: switchOne,
                  showNewTag: false),
              toggleOptions(
                  context: context,
                  index: 1,
                  title: 'Make Me Discoverable',
                  subtitle: 'Friends can find out and follow you when '
                      'they sync their phone contact',
                  isOn: switchTwo,
                  showNewTag: true),
            ],
          ),
        ),
      ]),
    );
  }

  Widget toggleOptions(
          {required BuildContext context,
          required int index,
          required String title,
          required String subtitle,
          required bool isOn,
          required bool showNewTag}) =>
      Container(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: screenHeightOfRatio(context, 0.02)),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: textStyle(Colors.black, 19, FontWeight.normal),
                        ),
                        if (showNewTag) newTag()
                      ],
                    ),
                    if (subtitle.isNotEmpty)
                      Container(
                          width: screenWidthOfRatio(context, 0.7),
                          child: Text(subtitle))
                  ],
                ),
                switchButton(index: index, switchType: isOn)
              ]),
        ),
      );
  Widget newTag() => Row(children: [
        Spacing().horizontalSpaceOfRatio(context, 0.01),
        Column(children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(4)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
              child: Text(
                'NEW',
                style: textStyle(Colors.white, 12, FontWeight.normal),
              ),
            ),
          ),
          Spacing().verticalSpaceOfRatio(context, 0.035),
        ])
      ]);
  Widget switchButton({required int index, required bool switchType}) =>
      GestureDetector(
        onTap: () {
          setState(() {
            if (index == 0) switchOne = !switchOne;
            if (index == 1) switchTwo = !switchTwo;
          });
        },
        child: Stack(
          children: [
            Container(
              height: 25,
              alignment: Alignment.center,
              child: Container(
                width: 38,
                height: 15,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 207, 202, 202),
                    borderRadius: BorderRadius.circular(10)),
                alignment: Alignment.centerLeft,
              ),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 120),
              width: 38,
              height: 25,
              alignment:
                  switchType ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 27, 27, 27),
                          offset: Offset(0.8, 3),
                          blurRadius: 3),
                      BoxShadow(
                          color: Color.fromARGB(255, 27, 27, 27),
                          offset: Offset(-0.8, 3),
                          blurRadius: 3),
                    ]),
              ),
            )
          ],
        ),
      );

  Widget settingHeader({required BuildContext context}) => Container(
        color: Color.fromARGB(255, 241, 239, 239),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: screenHeightOfRatio(context, 0.018),
              horizontal: screenWidthOfRatio(context, 0.055)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Text(
                  'Privacy Settings',
                  style: textStyle(Colors.black, 16, FontWeight.bold),
                ),
                newTag()
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Color.fromARGB(255, 58, 57, 57),
            )
          ]),
        ),
      );

  Widget genderField({required BuildContext context}) =>
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Gender'),
        Spacing().verticalSpaceOfRatio(context, 0.01),
        Row(
          children: [
            Expanded(
                child: genderBox(
                    type: 'Male', icon: Icons.bubble_chart, context: context)),
            Spacing().horizontalSpace(screenWidthOfRatio(context, 0.04)),
            Expanded(
                child: genderBox(
                    type: 'Female', icon: Icons.message, context: context)),
          ],
        ),
        Spacing().verticalSpaceOfRatio(context, 0.01),
      ]);

  Widget genderBox(
          {required String type,
          required IconData icon,
          required BuildContext context}) =>
      SizedBox(
        height: screenHeightOfRatio(context, 0.06),
        child: TextField(
          style: textStyle(Colors.black, 14, FontWeight.normal),
          controller: TextEditingController(text: type),
          enabled: false,
          decoration: InputDecoration(
              prefixIcon: Icon(icon),
              contentPadding: EdgeInsets.all(8),
              border: OutlineInputBorder()),
        ),
      );

  Widget accountField(
          {required String title,
          required String hintText,
          required bool showChange,
          required bool showPassword}) =>
      Padding(
        padding:
            EdgeInsets.symmetric(vertical: screenHeightOfRatio(context, 0.018)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: textStyle(
                  Color.fromARGB(255, 75, 74, 74), 14, FontWeight.normal),
            ),
            Container(
              height: screenHeightOfRatio(context, 0.04),
              child: TextField(
                controller: TextEditingController(text: hintText),
                enabled: false,
                obscureText: !showPassword,
                decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(
                          top: screenHeightOfRatio(context, 0.01)),
                      child: Text(
                        showChange ? 'Change' : '',
                        style: textStyle(Color.fromARGB(255, 53, 52, 52), 14,
                            FontWeight.bold),
                      ),
                    ),
                    contentPadding: EdgeInsets.only(top: 0),
                    border: UnderlineInputBorder()),
                style: textStyle(
                    Color.fromARGB(255, 75, 74, 74), 14, FontWeight.normal),
              ),
            )
          ],
        ),
      );

  AppBar appBar(BuildContext context) => AppBar(
        title: Text(
          'My Info & Settings',
          style: textStyle(
            Colors.white,
            19,
            FontWeight.bold,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      );
}
