import 'package:dream11_clone/settings/settings.dart';
import 'package:dream11_clone/utils.dart';
import 'package:dream11_clone/wallet/wallet.dart';
import 'package:flutter/material.dart';
import 'components/level_bar.dart';
import 'components/tabbar_content/tabbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 92, 91, 91),
      appBar: appBar(context),
      body: Column(
        children: [
          const LevelBar(),
          Expanded(
            child: Container(
              height: 20,
              color: Colors.white,
              child: const Tabbar(),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            accountSection(
                icon: accountIcon(),
                title: 'Alex Warren',
                subtitle: 'Level 127',
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                )),
            GestureDetector(
              onTap: () => navigateTo(context, Wallet()),
              child: navItem(
                  icon: Icon(Icons.wallet),
                  title: 'My Balance',
                  child: Text('₹39')),
            ),
            navItem(
                icon: Icon(Icons.money),
                title: 'Earn₹100',
                child: navButton(
                    title: 'INVITE',
                    titleColor: Colors.black,
                    btnColor: Colors.white,
                    borderColor: Colors.black,
                    vPadding: 4,
                    hPadding: 4,
                    borderRadius: 6)),
            navItem(
                icon: Icon(Icons.star),
                title: 'Series Leaderboard',
                child: navButton(
                    title: 'NEW',
                    titleColor: Colors.white,
                    btnColor: Colors.green,
                    borderColor: Colors.green,
                    vPadding: 4,
                    hPadding: 3,
                    borderRadius: 4)),
            GestureDetector(
              onTap: () => navigateTo(context, Settings()),
              child: navItem(
                  icon: Icon(Icons.settings),
                  title: 'My Info & Settings',
                  child: Text('')),
            )
          ],
        ),
      ),
    );
  }

  Widget accountIcon() => Stack(
        children: [
          CircleAvatar(),
          Container(
            width: 50,
            height: 40,
            alignment: Alignment.bottomRight,
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100)),
              alignment: Alignment.center,
              child: Icon(
                Icons.camera_alt,
                size: 18,
              ),
            ),
          )
        ],
      );

  ListTile navItem(
          {required Widget icon,
          required String title,
          required Widget child}) =>
      ListTile(
        leading: icon,
        title: Text(title),
        trailing: child,
      );
  Widget accountSection(
          {required Widget icon,
          required String title,
          required String subtitle,
          required Widget child}) =>
      Container(
        height: 80,
        color: Colors.black,
        alignment: Alignment.bottomCenter,
        child: ListTile(
          leading: icon,
          title: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(color: Colors.white),
          ),
          trailing: child,
        ),
      );
  Widget navButton(
          {required String title,
          required Color titleColor,
          required Color btnColor,
          required Color borderColor,
          required double borderRadius,
          required double vPadding,
          required double hPadding}) =>
      Container(
          decoration: BoxDecoration(
              color: btnColor,
              border: Border.all(color: borderColor),
              borderRadius: BorderRadius.circular(borderRadius)),
          child: Padding(
            padding:
                EdgeInsets.symmetric(vertical: vPadding, horizontal: hPadding),
            child: Text(
              title,
              style: textStyle(titleColor, 14, FontWeight.bold),
            ),
          ));

  AppBar appBar(BuildContext context) => AppBar(
        leading: Builder(builder: (BuildContext context) {
          return GestureDetector(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(),
              ));
        }),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/rewards.png',
              width: 18,
              height: 18,
            ),
            Text(
              'DREAM11',
              style: textStyle(
                Colors.white,
                19,
                FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        actions: [
          ...[Icons.refresh, Icons.airplane_ticket, Icons.card_giftcard]
              .map((e) => IconButton(onPressed: () {}, icon: Icon(e)))
        ],
      );
}
