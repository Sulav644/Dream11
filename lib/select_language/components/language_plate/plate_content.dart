import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../select_language_page.dart';
import 'language_titles.dart';

class PlateContent extends StatelessWidget {
  final String e;
  const PlateContent({super.key, required this.e});

  @override
  Widget build(BuildContext context) {
    final currentLanguage = context.watch<SelectLanguageCubit>().state;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          e,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        Transform.scale(
          scale: 1.4,
          child: Radio(
            value: currentLanguage,
            groupValue: Languages.values[languages.indexOf(e)],
            onChanged: (val) {},
            fillColor: MaterialStateProperty.all(
                const Color.fromARGB(255, 192, 192, 192)),
          ),
        ),
      ]),
    );
  }
}
