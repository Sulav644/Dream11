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
                context: context,
                icon: accountIcon(),
                title: 'Alex Warren',
                subtitle: 'Level 127',
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                )),
            GestureDetector(
              onTap: () => navigateTo(context, const Wallet()),
              child: navItem(
                  icon: const Icon(Icons.wallet),
                  title: 'My Balance',
                  child: const Text('₹39')),
            ),
            navItem(
                icon: const Icon(Icons.money),
                title: 'Earn₹100',
                child: navButton(
                    title: 'INVITE',
                    titleColor: Color.fromARGB(255, 32, 32, 32),
                    btnColor: Colors.white,
                    borderColor: Color.fromARGB(255, 66, 65, 65),
                    vPadding: 4,
                    hPadding: 7,
                    borderRadius: 6)),
            navItem(
                icon: const Icon(Icons.star),
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
              onTap: () => navigateTo(context, const Settings()),
              child: navItem(
                  icon: const Icon(Icons.settings),
                  title: 'My Info & Settings',
                  child: const Text('')),
            )
          ],
        ),
      ),
    );
  }

  Widget accountIcon() => Stack(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage(
              'assets/portal.png',
            ),
            backgroundColor: Colors.white,
            radius: 25,
          ),
          Container(
            width: 60,
            height: 50,
            alignment: Alignment.bottomRight,
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100)),
              alignment: Alignment.center,
              child: const Icon(
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
          {required BuildContext context,
          required Widget icon,
          required String title,
          required String subtitle,
          required Widget child}) =>
      Container(
        height: screenHeightOfRatio(context, 0.15),
        color: Colors.black,
        alignment: Alignment.bottomCenter,
        child: ListTile(
          leading: icon,
          title: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            subtitle,
            style: const TextStyle(color: Colors.white),
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
              child: const Padding(
                padding: EdgeInsets.all(8.0),
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
