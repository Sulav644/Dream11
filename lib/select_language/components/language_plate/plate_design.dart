import 'package:dream11_clone/select_language/components/language_plate/plate_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../utils.dart';
import '../../select_language_page.dart';
import 'language_titles.dart';

class PlateDesign extends StatelessWidget {
  final String e;
  const PlateDesign({super.key, required this.e});

  @override
  Widget build(BuildContext context) {
    final currentLanguage = context.watch<SelectLanguageCubit>().state;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: () => context
            .read<SelectLanguageCubit>()
            .toggleLanguage(Languages.values[languages.indexOf(e)]),
        child: Container(
          width: screenWidth(context),
          decoration: BoxDecoration(
            color: backgroundColor(currentLanguage),
            border: border(currentLanguage),
            borderRadius: BorderRadius.circular(10),
          ),
          child: PlateContent(e: e),
        ),
      ),
    );
  }

  Color backgroundColor(Languages currentLanguage) =>
      currentLanguage == Languages.values[languages.indexOf(e)]
          ? const Color.fromARGB(255, 61, 6, 2)
          : const Color.fromARGB(255, 32, 3, 1);
  BoxBorder border(Languages currentLanguage) =>
      currentLanguage == Languages.values[languages.indexOf(e)]
          ? Border.all(color: Colors.red)
          : Border.all(color: const Color.fromARGB(255, 124, 38, 32));
}
