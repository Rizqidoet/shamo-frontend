import 'package:bwa_shamo/pages/home/chat_page.dart';
import 'package:bwa_shamo/pages/home/home_page.dart';
import 'package:bwa_shamo/pages/home/profile_page.dart';
import 'package:bwa_shamo/pages/home/wishlist_page.dart';
import 'package:bwa_shamo/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  // const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Start: navigation button
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/cart');
        },
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
            currentIndex: currentIndex,
            onTap: (value) => {
              setState(() {
                print(value);
                currentIndex = value;
              })
            },
            backgroundColor: bg4Color,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Image.asset(
                      'assets/icons/icon_menuHome.png',
                      height: 25,
                      width: 21,
                      color:
                          currentIndex == 0 ? primaryColor : Color(0xff808191),
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Image.asset(
                      'assets/icons/icon_menuChat.png',
                      height: 20,
                      width: 18,
                      color:
                          currentIndex == 1 ? primaryColor : Color(0xff808191),
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Image.asset(
                      'assets/icons/icon_menuFavorite.png',
                      height: 20,
                      width: 18,
                      color:
                          currentIndex == 2 ? primaryColor : Color(0xff808191),
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Image.asset(
                      'assets/icons/icon_menuProfile.png',
                      height: 20,
                      width: 18,
                      color:
                          currentIndex == 3 ? primaryColor : Color(0xff808191),
                    ),
                  ),
                  label: ''),
            ],
          ),
        ),
      );
    }
    // End: navigation button

    //Start: body
    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return WishlistPage();
          break;
        case 3:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: bg3Color,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customButtonNav(),
      body: Center(child: body()),
    );
  }
}
