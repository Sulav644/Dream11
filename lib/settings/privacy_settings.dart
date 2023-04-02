import 'package:dream11_clone/settings/utils.dart';
import 'package:dream11_clone/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PrivacySettings extends StatefulWidget {
  const PrivacySettings({super.key});

  @override
  State<PrivacySettings> createState() => _PrivacySettingsState();
}

class _PrivacySettingsState extends State<PrivacySettings> {
  bool switchOne = true;
  bool switchTwo = true;
  bool switchThree = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 223, 223),
      appBar: AppBar(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: screenHeightOfRatio(context, 0.02),
              horizontal: screenWidthOfRatio(context, 0.04)),
          child: Text(
            'Personal Information',
            style: textStyle(Colors.black, 18, FontWeight.bold),
          ),
        ),
        Components().toggleOptions(
            context: context,
            title: 'Display my full name on profile',
            subtitle:
                'Your full name will be visible to everyonw who views your profile',
            child: switchButton(index: 0, switchType: switchOne)),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: screenHeightOfRatio(context, 0.02),
              horizontal: screenWidthOfRatio(context, 0.04)),
          child: Text(
            'Gameplay',
            style: textStyle(Colors.black, 18, FontWeight.bold),
          ),
        ),
        Components().toggleOptions(
            context: context,
            title: 'Show my previous teams',
            subtitle:
                'People who see your profile will be able to see teams that you have',
            child: switchButton(index: 1, switchType: switchTwo)),
        Components().toggleOptions(
            context: context,
            title: 'Show which contests I Join',
            subtitle:
                'People who view your profile will be able to see which kind of contests',
            child: switchButton(index: 2, switchType: switchThree)),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: screenHeightOfRatio(context, 0.02),
              horizontal: screenWidthOfRatio(context, 0.04)),
          child: Text(
            'Safety',
            style: textStyle(Colors.black, 18, FontWeight.bold),
          ),
        ),
        Components().toggleOptions(
            context: context,
            title: 'Blocked Users',
            subtitle: 'These users cannot add you',
            child: Icon(Icons.arrow_forward_ios)),
      ]),
    );
  }

  Widget switchButton({required int index, required bool switchType}) =>
      GestureDetector(
        onTap: () {
          setState(() {
            if (index == 0) switchOne = !switchOne;
            if (index == 1) switchTwo = !switchTwo;
            if (index == 2) switchThree = !switchThree;
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
}
