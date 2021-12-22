import 'package:bwa_shamo/theme.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  Widget header() {
    return AppBar(
      backgroundColor: bg1Color,
      automaticallyImplyLeading: false,
      elevation: 0,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: defaultMargin, vertical: defaultMargin),
          child: Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/icons/icon_userdefaultcircle.png',
                  height: 64,
                  width: 64,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hallo, Rizqi Fadila",
                    style: secondaryTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                  ),
                  Text(
                    "@rizqidoet",
                    style: subtitleTextStyle.copyWith(
                        fontSize: 16, fontWeight: regular),
                  ),
                ],
              ),
              Spacer(),
              Image.asset(
                "assets/icons/icon_signout.png",
                height: 20,
                width: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget titleAccount() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: defaultMargin),
      child: Column(
        children: [
          Text(
            "Account",
            style:
                secondaryTextStyle.copyWith(fontSize: 23, fontWeight: semiBold),
          )
        ],
      ),
    );
  }

  Widget contentAccount(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: 16, left: defaultMargin, right: defaultMargin),
      child: Column(
        children: [
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/edit-profile');
                },
                child: Text(
                  "Edit Profile",
                  style: subtitleTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                color: greyTextColor,
                size: 20.0,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Your Orders",
                  style: subtitleTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                color: greyTextColor,
                size: 20.0,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Help",
                  style: subtitleTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                color: greyTextColor,
                size: 20.0,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget titleGeneral() {
    return Container(
      margin: EdgeInsets.only(top: 20, left: defaultMargin),
      child: Column(
        children: [
          Text(
            "General",
            style:
                secondaryTextStyle.copyWith(fontSize: 23, fontWeight: semiBold),
          )
        ],
      ),
    );
  }

  Widget contentGeneral() {
    return Container(
      margin:
          EdgeInsets.only(top: 16, left: defaultMargin, right: defaultMargin),
      child: Column(
        children: [
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Privacy \$ Policy",
                  style: subtitleTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                color: greyTextColor,
                size: 20.0,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Term of Service",
                  style: subtitleTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                color: greyTextColor,
                size: 20.0,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Rate App",
                  style: subtitleTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                color: greyTextColor,
                size: 20.0,
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            titleAccount(),
            contentAccount(context),
            titleGeneral(),
            contentGeneral()
          ],
        ),
      ],
    );
  }
}
