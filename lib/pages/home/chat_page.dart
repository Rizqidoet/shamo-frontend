import 'package:bwa_shamo/theme.dart';
import 'package:bwa_shamo/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  // const ChatPage({Key? key}) : super(key: key);

  Widget header() {
    return AppBar(
      backgroundColor: bg1Color,
      centerTitle: true,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Text(
        "Message Support",
        style: secondaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
      ),
    );
  }

  Widget emptyChat() {
    return Expanded(
        child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/icon_chatEmpty.png',
            height: 80,
            width: 80,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Opss no message yet?",
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "You have never done a transaction",
            style:
                subtitleTextStyle.copyWith(fontSize: 14, fontWeight: regular),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 152,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              child: Text(
                "Explore Store",
                style:
                    primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
            ),
          )
        ],
      ),
    ));
  }

  Widget content() {
    return Expanded(
        child: Container(
      color: bg3Color,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          ChatTile(),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [header(), content()],
    );
  }
}
