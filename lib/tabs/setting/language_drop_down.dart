import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/AppColors.dart';
import 'package:todo/providers/My_provider.dart';

class LanguageDropDown extends StatelessWidget {
  const LanguageDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    var provider_object = Provider.of<MyProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      margin: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        color: provider_object.AppTheme == ThemeMode.light
            ? Appcolors.whiteColor
            : Appcolors.secondary_dark,
        border: Border.all(color: Appcolors.blueColor, width: 2),
      ),
      child: DropdownButton<String>(
          items: [
            DropdownMenuItem(
              child: Text("English",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Appcolors.blueColor)),
              value: "English",
            ),
            DropdownMenuItem(
              child: Text("Arabic",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Appcolors.blueColor)),
              value: "Arabic",
            ),
          ],
          onChanged: (value) {},
          iconSize: 25,
          iconEnabledColor: Appcolors.blueColor,
          icon: Icon(Icons.keyboard_arrow_down),
          dropdownColor: provider_object.AppTheme == ThemeMode.light
              ? Appcolors.whiteColor
              : Appcolors.secondary_dark,
          borderRadius: BorderRadius.circular(20),
          hint: Text("lang",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: Appcolors.blueColor)),
          underline: SizedBox.shrink(),
          isExpanded: true),
    );
  }
}
