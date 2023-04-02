import 'package:flutter/material.dart';
import '../../../utils.dart';
import 'tabbar.dart';

class TabbarToggler extends StatelessWidget {
  final TabController tabController;
  const TabbarToggler({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [Colors.red, const Color.fromARGB(255, 155, 154, 154)];
    return TabBar(
        isScrollable: true,
        controller: tabController,
        onTap: (value) {},
        padding: EdgeInsets.zero,
        indicatorPadding: const EdgeInsets.only(top: 14),
        indicatorWeight: 6,
        labelPadding: const EdgeInsets.symmetric(horizontal: 8),
        tabs: [
          ...tabList.map((e) => Tab(
                child: SizedBox(
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
        ]);
  }
}
