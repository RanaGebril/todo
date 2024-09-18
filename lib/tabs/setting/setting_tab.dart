import 'package:flutter/material.dart';
import 'package:todo/tabs/setting/language_drop_down.dart';
import 'package:todo/tabs/setting/theme_drop_down.dart';

class SettingTab extends StatelessWidget {
  SettingTab({super.key});

  String dropDownBottomValue = "lang";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Language", style: Theme.of(context).textTheme.bodyMedium),
          SizedBox(height: 10),
          LanguageDropDown(),
          SizedBox(height: 40),
          Text("Mode", style: Theme.of(context).textTheme.bodyMedium),
          SizedBox(height: 10),
          ThemeDropDown()
        ],
      ),
    );
  }
}
