import 'package:dream11_clone/contests/components/contest_list.dart';
import 'package:dream11_clone/contests/contest_page.dart';
import 'package:dream11_clone/final_match/final_match.dart';
import 'package:dream11_clone/home_page/home_page.dart';
import 'package:dream11_clone/login/login_page.dart';
import 'package:dream11_clone/match/components/match_tabbar_content.dart';
import 'package:dream11_clone/my_team/my_team.dart';
import 'package:dream11_clone/select_language/select_language_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => SelectLanguageCubit()),
          BlocProvider(create: (context) => MobileNumberEnteredCubit()),
          BlocProvider(create: (context) => PageStateCubit()),
          BlocProvider(create: (context) => HideMessageCubit()),
          BlocProvider(create: (context) => SelectPlayerCubit()),
          BlocProvider(create: (context) => SelectCaptainCubit()),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          home: const HomePage(),
        ));
  }
}
