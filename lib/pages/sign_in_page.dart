import 'package:flutter/material.dart';
import 'package:bwa_shamo/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: bg1Color,
        body: SafeArea(
            child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              emailTextField(),
              passwordTextField(),
              signInButton(context),
              // textOrLogin(),
              // googleButton(),
              // facebookButton(),
              // whatsappButton(),
              Spacer(),
              footer(context)
            ],
          ),
        )));
  }
}

Widget header() {
  return Container(
    margin: EdgeInsets.only(top: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Login",
          style: primaryTextStyle.copyWith(fontSize: 24),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          "Sign In to Continue",
          style: subtitleTextStyle,
        )
      ],
    ),
  );
}

Widget emailTextField() {
  return Container(
    margin: EdgeInsets.only(top: 70),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email Address",
          style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: bg2Color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Row(
              children: [
                Image.asset(
                  "assets/icons/icon_email.png",
                  width: 17,
                  height: 17,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: TextFormField(
                  style: primaryTextStyle,
                  decoration: InputDecoration.collapsed(
                      hintText: "Your email address",
                      hintStyle: subtitleTextStyle),
                ))
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Widget passwordTextField() {
  return Container(
    margin: EdgeInsets.only(top: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Password",
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium)),
        SizedBox(
          height: 12,
        ),
        Container(
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
              color: bg2Color, borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Row(
              children: [
                Image.asset(
                  "assets/icons/icon_password.png",
                  height: 17,
                  width: 17,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration.collapsed(
                      hintText: "Your password", hintStyle: subtitleTextStyle),
                  style: primaryTextStyle,
                ))
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Widget signInButton(BuildContext context) {
  return Container(
    height: 50,
    width: double.infinity,
    margin: EdgeInsets.only(top: 30),
    child: TextButton(
      onPressed: () {
        Navigator.pushNamed(context, '/home');
      },
      style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: Text(
        "Sign in",
        style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
      ),
    ),
  );
}

Widget textOrLogin() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20),
    child: Center(
      child: Text(
        "or login with",
        style: subtitleTextStyle.copyWith(fontSize: 12, fontWeight: semiBold),
      ),
    ),
  );
}

Widget googleButton() {
  return Container(
    height: 50,
    width: double.infinity,
    child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: redColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.g_mobiledata,
                color: primaryTextColor,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Login with google",
                style: primaryTextStyle,
              ),
            ],
          ),
        )),
  );
}

Widget facebookButton() {
  return Container(
    margin: EdgeInsets.only(top: 15),
    height: 50,
    width: double.infinity,
    child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: priceColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.facebook,
                color: primaryTextColor,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Login with google",
                style: primaryTextStyle,
              ),
            ],
          ),
        )),
  );
}

Widget whatsappButton() {
  return Container(
    margin: EdgeInsets.only(top: 15),
    height: 50,
    width: double.infinity,
    child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: greenColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.call,
                color: primaryTextColor,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Login with google",
                style: primaryTextStyle,
              ),
            ],
          ),
        )),
  );
}

Widget footer(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(bottom: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account?",
            style:
                subtitleTextStyle.copyWith(fontSize: 12, fontWeight: regular)),
        SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/sign-up');
          },
          child: Text("Sign up",
              style:
                  purpleTextStyle.copyWith(fontSize: 12, fontWeight: semiBold)),
        )
      ],
    ),
  );
}
