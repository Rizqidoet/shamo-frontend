import 'package:flutter/material.dart';
import 'package:bwa_shamo/theme.dart';

class SignUpPage extends StatelessWidget {
  // const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bg1Color,
      body: SafeArea(
          child: Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  header(),
                  inputFullName(),
                  inputUsername(),
                  inputEmail(),
                  inputPassword(),
                  buttonSignup(context),
                  Spacer(),
                  footer(context)
                ],
              ))),
    );
  }
}

Widget header() {
  return Container(
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Sign up",
          style: primaryTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
        SizedBox(height: 5),
        Text(
          "Register and Happy Shoping",
          style: subtitleTextStyle.copyWith(fontSize: 14, fontWeight: regular),
        )
      ],
    ),
  );
}

Widget inputFullName() {
  return Container(
    margin: EdgeInsets.only(top: 50),
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Full Name",
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            )),
        SizedBox(
          height: 12,
        ),
        Container(
            height: 50,
            decoration: BoxDecoration(
                color: bg2Color, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Image.asset(
                    "assets/icons/icon_fullname.png",
                    height: 14,
                    width: 14,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: TextFormField(
                    style: primaryTextStyle,
                    decoration: InputDecoration.collapsed(
                        hintText: "your fullname........",
                        hintStyle: subtitleTextStyle.copyWith(
                            fontSize: 14, fontWeight: regular)),
                  ))
                ],
              ),
            ))
      ],
    ),
  );
}

Widget inputUsername() {
  return Container(
    margin: EdgeInsets.only(top: 20),
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Username",
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            )),
        SizedBox(
          height: 12,
        ),
        Container(
            height: 50,
            decoration: BoxDecoration(
                color: bg2Color, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Image.asset(
                    "assets/icons/icon_username.png",
                    height: 14,
                    width: 14,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: TextFormField(
                    style: primaryTextStyle,
                    decoration: InputDecoration.collapsed(
                        hintText: "your username........",
                        hintStyle: subtitleTextStyle.copyWith(
                            fontSize: 14, fontWeight: regular)),
                  ))
                ],
              ),
            ))
      ],
    ),
  );
}

Widget inputEmail() {
  return Container(
    margin: EdgeInsets.only(top: 20),
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Email Address",
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            )),
        SizedBox(
          height: 12,
        ),
        Container(
            height: 50,
            decoration: BoxDecoration(
                color: bg2Color, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Image.asset(
                    "assets/icons/icon_email.png",
                    height: 14,
                    width: 14,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: TextFormField(
                    style: primaryTextStyle,
                    decoration: InputDecoration.collapsed(
                        hintText: "your email address........",
                        hintStyle: subtitleTextStyle.copyWith(
                            fontSize: 14, fontWeight: regular)),
                  ))
                ],
              ),
            ))
      ],
    ),
  );
}

Widget inputPassword() {
  return Container(
    margin: EdgeInsets.only(top: 20),
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Password",
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            )),
        SizedBox(
          height: 12,
        ),
        Container(
            height: 50,
            decoration: BoxDecoration(
                color: bg2Color, borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Image.asset(
                    "assets/icons/icon_password.png",
                    height: 14,
                    width: 14,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: TextFormField(
                    obscureText: true,
                    style: primaryTextStyle,
                    decoration: InputDecoration.collapsed(
                        hintText: "your password........",
                        hintStyle: subtitleTextStyle.copyWith(
                            fontSize: 14, fontWeight: regular)),
                  ))
                ],
              ),
            ))
      ],
    ),
  );
}

Widget buttonSignup(BuildContext context) {
  return Container(
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(12)),
      child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          child: Text(
            "Sign up",
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          )));
}

Widget footer(BuildContext context) {
  return Container(
    width: double.infinity,
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Already have an account ?",
            style:
                subtitleTextStyle.copyWith(fontSize: 12, fontWeight: regular),
          ),
          SizedBox(
            width: 3,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              "Signin",
              style:
                  purpleTextStyle.copyWith(fontSize: 12, fontWeight: semiBold),
            ),
          ),
        ],
      ),
    ),
  );
}
