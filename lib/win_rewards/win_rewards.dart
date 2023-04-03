import 'package:dream11_clone/utils.dart';
import 'package:flutter/material.dart';

class WinRewards extends StatelessWidget {
  const WinRewards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text('Win an iPhone!'),
          Row(children: [
            Image.asset(
              'assets/coin.png',
              width: 20,
            ),
            const Text('25')
          ]),
          const Text(
              'Enter the jackport by getting up the 10 tickets and 50 winners'
              'match starred a chance to win'),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.all(screenWidthOfRatio(context, 0.04)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Winner Declaration'),
                            Text('Valid Until'),
                          ]),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(DateTime.now().toString()),
                            const Text('7 April 2023'),
                          ])
                    ]),
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('How to redeem'),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                      "1. Ensure you're on the latest version of the app for a better Jackpot"),
                  Text('2. Get up to 10 Jackpot tickets with your DreamCoins'),
                  Text('3. 50 randomly selected winners will be announced'),
                  Text(
                      '4. The winners will receive an email with voucher details')
                ],
              )
            ],
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Terms and Conditions'),
                Icon(Icons.arrow_forward_ios),
              ]),
          const Divider(),
          Row(
            children: [
              const Text('Current Balance'),
              Image.asset(
                'assets/coin.png',
                width: 20,
              ),
              const Text('594')
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('GET REWARD FOR'),
                  Image.asset(
                    'assets/coin.png',
                    width: 20,
                  ),
                  const Text('25')
                ],
              ))
        ])
      ]),
    );
  }
}
