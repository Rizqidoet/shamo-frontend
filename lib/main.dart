import 'package:bwa_shamo/pages/home_page.dart';
import 'package:bwa_shamo/pages/sign_in_page.dart';
import 'package:bwa_shamo/pages/sign_up_page.dart';
import 'package:bwa_shamo/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}