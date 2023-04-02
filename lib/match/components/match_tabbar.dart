import 'package:flutter/material.dart';
import '../../utils.dart';

final playerList = ["WK (3)", "BAT (0)", "AR (0)", "BOWL (0)"];

class MatchTabbar extends StatelessWidget {
  final TabController tabController;
  const MatchTabbar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return TabBar(
        controller: tabController,
        onTap: (value) {},
        indicatorWeight: 5,
        indicatorColor: Colors.purple,
        tabs: [
          ...playerList.map((e) => Tab(
                child: Text(
                  e,
                  style: textStyle(
                      playerList.indexOf(e) == tabController.index
                          ? Colors.black
                          : const Color.fromARGB(255, 104, 103, 103),
                      13.6,
                      playerList.indexOf(e) == tabController.index
                          ? FontWeight.bold
                          : FontWeight.normal),
                ),
              ))
        ]);
  }
}
