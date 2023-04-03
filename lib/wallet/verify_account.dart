import 'package:dream11_clone/utils.dart';
import 'package:dream11_clone/wallet/tabs/bank.dart';
import 'package:dream11_clone/wallet/tabs/mobile_cards.dart';
import 'package:dream11_clone/wallet/tabs/pan.dart';
import 'package:flutter/material.dart';

class VerifyAccounut extends StatefulWidget {
  const VerifyAccounut({super.key});

  @override
  State<VerifyAccounut> createState() => _VerifyAccounutState();
}

class _VerifyAccounutState extends State<VerifyAccounut>
    with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final tabs = ['MOBILE & EMAIL', 'PAN', 'BANK'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('VERIFY YOUR ACCOUNT'),
      ),
      body: Column(children: [
        Card(
          elevation: 4,
          child: TabBar(
              padding: EdgeInsets.zero,
              labelPadding: EdgeInsets.symmetric(
                  vertical: screenHeightOfRatio(context, 0.005),
                  horizontal: screenWidthOfRatio(context, 0.02)),
              controller: tabController,
              indicatorWeight: 3,
              tabs: [
                ...tabs.map((e) => Text(
                      e,
                      textAlign: TextAlign.center,
                      style: textStyle(
                          tabs.indexOf(e) == tabController.index
                              ? Colors.red
                              : Colors.black,
                          14,
                          tabs.indexOf(e) == tabController.index
                              ? FontWeight.bold
                              : FontWeight.normal),
                    ))
              ]),
        ),
        Expanded(
          child: TabBarView(
              controller: tabController,
              children: const [MobileAndCards(), Pan(), Bank()]),
        )
      ]),
    );
  }
}
