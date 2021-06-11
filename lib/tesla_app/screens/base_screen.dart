import 'package:flutter/material.dart';
import 'package:flutter_ui/tesla_app/configs/colors.dart';
import 'package:flutter_ui/tesla_app/screens/settings_screen.dart';

import 'home_screen.dart';

class BaseScreen extends StatefulWidget {
  BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  navigateTo(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _bottomAppBarIcon({required int index, required IconData icon}) {
    return IconButton(
      onPressed: () {
        navigateTo(index);
      },
      icon: Icon(
        icon,
        color: _selectedIndex == index ? kPrimaryColor : null,
      ),
      iconSize: 35,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: SafeArea(
          child: Container(
            height: 70,
            color: kBottomAppBarColor,
            child: Material(
              type: MaterialType.transparency,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _bottomAppBarIcon(index: 0, icon: Icons.home_rounded),
                  _bottomAppBarIcon(index: 1, icon: Icons.bar_chart_rounded),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          bottom: 20,
                          child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: buttonGradient),
                              child: IconButton(
                                  iconSize: 60,
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.power_settings_new_rounded,
                                    color: Colors.white,
                                  ))),
                        ),
                      ],
                    ),
                  ),
                  _bottomAppBarIcon(index: 2, icon: Icons.settings),
                  _bottomAppBarIcon(index: 3, icon: Icons.account_circle_rounded),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: kBackGroundGradient
        ),
        child: IndexedStack(
          index: _selectedIndex,
          children: [
            HomeScreen(),
            Container(
              child: Center(child: Text('page 02', style: TextStyle(color: Colors.blue),)),
            ),
            SettingsScreen(),
            Container()
          ],
        ),
      ),
    );
  }
}
