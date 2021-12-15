import 'dart:ui';

import 'package:bwa_shamo/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: secondaryColor,
        child: Image.asset('assets/icons/icon_bag.png',
            width: 20, height: 20, color: primaryTextColor),
      );
    }

    Widget customButtonNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 8,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: bg4Color,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/icon_menuHome.png',
                    height: 25,
                    width: 21,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/icon_menuChat.png',
                    height: 20,
                    width: 18,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/icon_menuFavorite.png',
                    height: 20,
                    width: 18,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/icon_menuProfile.png',
                    height: 20,
                    width: 18,
                  ),
                  label: ''),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bg1Color,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customButtonNav(),
      body: Center(
        child: Text("hallo MainPage"),
      ),
    );
  }
}
