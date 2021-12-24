import 'package:flutter/material.dart';
import 'package:bwa_shamo/theme.dart';

class EditProfilePage extends StatelessWidget {
  // const EditProfilePage({Key? key}) : super(key: key);

  Widget header(BuildContext context) {
    return AppBar(
      backgroundColor: bg1Color,
      elevation: 0,
      automaticallyImplyLeading: false,
      flexibleSpace: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 37),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Image.asset(
                    'assets/icons/icon_silangPolos.png',
                    height: 14,
                    width: 14,
                  ),
                ),
              ),
              Text(
                "edit profile",
                style:
                    primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Image.asset(
                    'assets/icons/icon_checklistPolos.png',
                    height: 14,
                    width: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget content() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.all(30),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Center(
              child: Image.asset(
                'assets/icons/icon_userdefaultcircle.png',
                height: 100,
                width: 100,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name",
                  style:
                      greyTextStyle.copyWith(fontSize: 13, fontWeight: regular),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                            hintText: "your name...",
                            hintStyle: subtitleTextStyle),
                      ),
                      Divider(
                        thickness: 2,
                        color: Color(0xff504F5E),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Username",
                  style:
                      greyTextStyle.copyWith(fontSize: 13, fontWeight: regular),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                            hintText: "your username...",
                            hintStyle: subtitleTextStyle),
                      ),
                      Divider(
                        thickness: 2,
                        color: Color(0xff504F5E),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email address",
                  style:
                      greyTextStyle.copyWith(fontSize: 13, fontWeight: regular),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                            hintText: "your email...",
                            hintStyle: subtitleTextStyle),
                      ),
                      Divider(
                        thickness: 2,
                        color: Color(0xff504F5E),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg3Color,
      body: SafeArea(
        child: Column(
          children: [header(context), content()],
        ),
      ),
    );
  }
}
