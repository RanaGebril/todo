import 'package:flutter/material.dart';
import 'package:todo/AppColors.dart';
import 'package:todo/tabs/list_tab.dart';
import 'package:todo/tabs/setting_tab.dart';

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
      backgroundColor: Appcolors.primary_light,
      appBar: AppBar(
        title: Text(
          "ToDo List",
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
            fontSize: 25,
            color: Appcolors.whiteColor,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.all(0),
        notchMargin: 8,
        shape: CircularNotchedRectangle(),
        color: Appcolors.whiteColor,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0,
          unselectedItemColor: Appcolors.grayColor1,
          selectedItemColor: Appcolors.blueColor,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          iconSize: 35,
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add, color: Appcolors.whiteColor, size: 35),
        backgroundColor: Appcolors.blueColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(color: Appcolors.whiteColor, width: 3)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      extendBody: true,
      //allow the body to be appear under the bottom navigation bar
      body:  taps[selectedIndex],
    );
  }

  List<Widget> taps = [ListTab(), SettingTab()];
}
