import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../utils.dart';
import 'tabbar.dart';

class TabbarToggler extends StatelessWidget {
  final TabController tabController;
  const TabbarToggler({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [Colors.red, Color.fromARGB(255, 155, 154, 154)];
    return Container(
      child: TabBar(
          isScrollable: true,
          controller: tabController,
          onTap: (value) => print(tabController.index),
          padding: EdgeInsets.zero,
          indicatorPadding: EdgeInsets.only(top: 14),
          indicatorWeight: 6,
          labelPadding: EdgeInsets.symmetric(horizontal: 8),
          tabs: [
            ...tabList.map((e) => Tab(
                  child: Container(
                    width: 50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          e.icon,
                          size: 21,
                          color: tabController.index == tabList.indexOf(e)
                              ? colors[0]
                              : colors[1],
                        ),
                        Text(
                          e.title,
                          style: textStyle(
                              tabController.index == tabList.indexOf(e)
                                  ? colors[0]
                                  : colors[1],
                              10,
                              FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ))
          ]),
    );
  }
}
