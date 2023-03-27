import 'package:dream11_clone/login/login_page.dart';
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
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          home: const SelectLanguage(),
        ));
  }
}
