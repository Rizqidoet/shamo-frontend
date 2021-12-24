import 'dart:async';

import 'package:flutter/material.dart';
import 'package:bwa_shamo/theme.dart';

class SplashPage extends StatefulWidget {
  // const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, '/sign-in'));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg1Color,
      body: SafeArea(
        child: Center(
          child: Container(
            width: 130,
            height: 200,
            child: Column(
              children: [
                Image.asset('assets/icons/icon_logo.png'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Sekundren Apps",
                  style: subtitleTextStyle.copyWith(
                      fontSize: 16, fontWeight: semiBold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
