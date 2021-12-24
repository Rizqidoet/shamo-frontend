import 'package:bwa_shamo/theme.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  // const ChatTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/detail-chat");
      },
      child: Container(
        margin: EdgeInsets.only(top: 33),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/icons/icon_logo.png',
                  height: 54,
                  width: 54,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 12, right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Shoe Store',
                          style: primaryTextStyle.copyWith(
                              fontSize: 15, fontWeight: regular),
                        ),
                        Text(
                          "Good night, This item is on their system and his",
                          style: subtitleTextStyle.copyWith(
                              fontSize: 14, fontWeight: light),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  "Now",
                  style:
                      greyTextStyle.copyWith(fontSize: 14, fontWeight: light),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 2,
              color: Color(0xff2B2939),
            )
          ],
        ),
      ),
    );
  }
}
