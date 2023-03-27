import 'package:dream11_clone/select_language/components/centered_message.dart';
import 'package:dream11_clone/select_language/components/language_plate/plate_design.dart';
import 'package:dream11_clone/select_language/components/logo.dart';
import 'package:dream11_clone/select_language/components/selection_button.dart';
import 'package:dream11_clone/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'components/language_plate/language_titles.dart';
import 'components/lined_message.dart';

enum Languages { english, hindi, kannada }

class SelectLanguage extends StatelessWidget {
  const SelectLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  children: [
                    Spacing().verticalSpace(10),
                  ],
                ),
                const Logo(),
                Spacing().verticalSpace(30),
                const CenteredMessage(
                  message: 'Select App Language',
                  size: 25,
                  color: Colors.white,
                  weight: FontWeight.bold,
                ),
                Spacing().verticalSpace(20),
                const LinedMessage(
                    message:
                        'This is a fake menu, whichever language is selected, only English will be applied',
                    align: TextAlign.center),
                Spacing().verticalSpace(10),
                ...languages.map((e) => PlateDesign(e: e)).toList(),
                Spacing().verticalSpaceOfRatio(context, 0.15),
                const SelectionButton(),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SelectLanguageCubit extends Cubit<Languages> {
  SelectLanguageCubit() : super(Languages.english);
  void toggleLanguage(Languages language) => emit(language);
}
