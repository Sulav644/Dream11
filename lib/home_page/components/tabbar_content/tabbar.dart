import 'package:dream11_clone/home_page/components/tabbar_content/tabbar_content.dart';
import 'package:dream11_clone/home_page/components/tabbar_content/tabbar_toggler.dart';
import 'package:dream11_clone/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

final tabList = [
  IconWithTitles(title: 'Cricket', icon: Icons.sports_cricket),
  IconWithTitles(title: 'Football', icon: Icons.sports_football),
  IconWithTitles(title: 'Basketball', icon: Icons.sports_basketball),
  IconWithTitles(title: 'Baseball', icon: Icons.sports_baseball),
  IconWithTitles(title: 'Hockey', icon: Icons.sports_hockey)
];

class IconWithTitles {
  String title;
  IconData icon;
  IconWithTitles({required this.title, required this.icon});
}

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(children: [
        TabbarToggler(tabController: tabController),
        Spacing().verticalSpace(10),
        Row(
          children: [
            Text(
              'Upcoming Fake Matches',
              style: textStyle(Colors.black, 20, FontWeight.bold),
            ),
          ],
        ),
        Spacing().verticalSpace(18),
        TabbarContent(tabController: tabController),
      ]),
    );
  }
}
