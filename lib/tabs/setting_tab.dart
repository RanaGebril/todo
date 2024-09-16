import 'package:flutter/material.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 40),
      child: Column(
        children: [
          Text("Language",
          style: TextStyle(
            fontSize: 20
          ),)
        ],
      ),
    );
  }
}
