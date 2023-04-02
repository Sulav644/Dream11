import 'package:dream11_clone/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Text('Total Balance'),
        Text('₹5,051.37'),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    vertical: screenHeightOfRatio(context, 0.01),
                    horizontal: screenWidthOfRatio(context, 0.03)),
                backgroundColor: Colors.green),
            onPressed: () {},
            child: Text('ADD CASH')),
        Divider(),
        balanceField(
            context: context,
            title: 'AMOUNT ADDED (UNAUTHORIZED)',
            price: '₹0',
            showVerify: false,
            showKnowMore: false),
        balanceField(
            context: context,
            title: 'Winnings',
            price: '₹60.5',
            showVerify: true,
            showKnowMore: false),
        balanceField(
            context: context,
            title: 'CASH BONUS',
            price: '₹4,990.87',
            showVerify: false,
            showKnowMore: true),
        transactionOption(
            title: 'My Recent Transactions', subtitle: '', showSubtitle: false),
        transactionOption(
            title: 'Manage Payments',
            subtitle: 'Add/Remove Cards, Wallets, etc.',
            showSubtitle: true),
        transactionOption(
            title: 'Refer and Earn',
            subtitle:
                'Invite a friend and earn up to ₹200 cash sdfdsfsdfsdfsdfdf',
            showSubtitle: true),
      ]),
    );
  }

  ListTile transactionOption(
          {required String title,
          required String subtitle,
          required bool showSubtitle}) =>
      showSubtitle
          ? ListTile(
              title: Text(title),
              subtitle: Text(subtitle),
              trailing: Icon(Icons.arrow_forward_ios),
            )
          : ListTile(
              title: Text(title),
              trailing: Icon(Icons.arrow_forward_ios),
            );

  Widget balanceField(
          {required BuildContext context,
          required String title,
          required String price,
          required bool showVerify,
          required bool showKnowMore}) =>
      Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                title,
                style: textStyle(Colors.black, 11, FontWeight.normal),
              ),
              Text(price),
            ]),
            if (showVerify)
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          vertical: screenHeightOfRatio(context, 0.01),
                          horizontal: screenWidthOfRatio(context, 0.03)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(color: Colors.black)),
                      backgroundColor: Colors.white),
                  onPressed: () {},
                  child: Text(
                    'VERIFY NOW',
                    style: textStyle(Colors.black, 14, FontWeight.normal),
                  )),
            Icon(Icons.info_outline)
          ]),
          if (showVerify)
            Row(
              children: [
                Container(
                    width: screenWidthOfRatio(context, 0.5),
                    child: Text(
                      'Verify your account to be eligibe to verification',
                      style: textStyle(Colors.black, 11, FontWeight.normal),
                    )),
              ],
            ),
          if (showKnowMore)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(6)),
                  child: Row(children: [
                    Icon(Icons.money),
                    Column(children: [
                      Text('Maximum usable Cash Bonus per match = 10%',
                          style:
                              textStyle(Colors.black, 11, FontWeight.normal)),
                      Row(children: [
                        Text('of Entry Fees',
                            style:
                                textStyle(Colors.black, 11, FontWeight.normal)),
                        Text(
                          'Know more',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.black,
                              fontSize: 11,
                              fontWeight: FontWeight.normal),
                        )
                      ])
                    ]),
                    Icon(Icons.close)
                  ]),
                ),
              ],
            )
        ],
      );
}
