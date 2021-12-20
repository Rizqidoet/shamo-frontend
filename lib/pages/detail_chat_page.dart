import 'package:bwa_shamo/theme.dart';
import 'package:flutter/material.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: bg4Color,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Center(
                  child: TextFormField(
                    style: secondaryTextStyle,
                    decoration: InputDecoration.collapsed(
                        hintText: "type message....",
                        hintStyle: subtitleTextStyle.copyWith(
                            fontSize: 14, fontWeight: regular)),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Image.asset(
              'assets/icons/icon_submitRounded.png',
              height: 45,
              width: 45,
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bg3Color,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: bg1Color,
          centerTitle: false,
          title: Row(
            children: [
              Image.asset(
                "assets/icons/icon_chatOnline.png",
                height: 50,
                width: 50,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shoe Store",
                    style: primaryTextStyle.copyWith(
                        fontSize: 14, fontWeight: medium),
                  ),
                  Text(
                    "Online",
                    style: subtitleTextStyle.copyWith(
                        fontSize: 14, fontWeight: light),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: chatInput(),
    );
  }
}
