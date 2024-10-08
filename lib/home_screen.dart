import 'package:flutter/material.dart';
import 'package:todo/AppColors.dart';
import 'package:todo/tabs/list_tab.dart';
import 'package:todo/tabs/setting/setting_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Appcolors.primary_light,
      appBar: AppBar(
        title: Text(
          "ToDo List",
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30)
        ),
        child: BottomAppBar(
          notchMargin: 8,
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.list), label: "my list"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "setting")
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add, color: Appcolors.whiteColor, size: 35),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      extendBody: true,
      //allow the body to be appear under the bottom navigation bar
      body:  taps[selectedIndex],
    );
  }

  List<Widget> taps = [ListTab(), SettingTab()];
}
