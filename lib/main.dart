import 'package:bwa_shamo/pages/cart_page.dart';
import 'package:bwa_shamo/pages/detail_chat_page.dart';
import 'package:bwa_shamo/pages/home/main_page.dart';
import 'package:bwa_shamo/pages/menuProfiles/edit_profile.dart';
import 'package:bwa_shamo/pages/product_page.dart';
import 'package:bwa_shamo/pages/sign_in_page.dart';
import 'package:bwa_shamo/pages/sign_up_page.dart';
import 'package:bwa_shamo/pages/splash_page.dart';
import 'package:bwa_shamo/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
        '/chat': (context) => ChatTile(),
        '/detail-chat': (context) => DetailChatPage(),
        '/edit-profile': (context) => EditProfilePage(),
        '/product': (context) => ProductPage(),
        '/cart': (context) => CartPage(),
      },
    );
  }
}
