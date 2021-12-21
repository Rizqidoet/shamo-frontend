import 'package:flutter/material.dart';
import 'package:bwa_shamo/theme.dart';

class ChatBubblePage extends StatelessWidget {
  // const ChatBubblePage({Key? key}) : super(key: key);

  final String textChat;
  final bool isSender;

  ChatBubblePage({this.textChat = '', this.isSender = false});

  @override
  Widget build(BuildContext context) {
    Widget productPreview() {
      return Container(
        width: 231,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(bottom: 13),
        decoration: BoxDecoration(
          color: isSender == true ? bg4Color : bg5Color,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(isSender == true ? 12 : 0),
            topLeft: Radius.circular(isSender == true ? 0 : 12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),
        child: Column(
          children: [
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      "assets/images/runningDepan-1.png",
                      height: 70,
                      width: 70,
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Court Vision 2.0 Shoes",
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: regular),
                        ),
                        Text(
                          "\$57,15",
                          style: priceTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "add to cart",
                      style: purpleTextStyle.copyWith(
                          fontSize: 12, fontWeight: regular),
                    ),
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(color: primaryColor),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "add to cart",
                      style: blackTextStyle.copyWith(
                          fontSize: 12, fontWeight: regular),
                    ),
                    style: OutlinedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: isSender == true
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.end,
        children: [
          productPreview(),
          Row(
            mainAxisAlignment: isSender == true
                ? MainAxisAlignment.start
                : MainAxisAlignment.end,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.6),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  decoration: BoxDecoration(
                    color: isSender == true ? bg4Color : bg5Color,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(isSender == true ? 12 : 0),
                      topLeft: Radius.circular(isSender == true ? 0 : 12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: Text(
                    textChat,
                    style: primaryTextStyle.copyWith(
                        fontSize: 14, fontWeight: regular),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
