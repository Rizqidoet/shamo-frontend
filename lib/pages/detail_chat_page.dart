import 'dart:ui';

import 'package:bwa_shamo/theme.dart';
import 'package:bwa_shamo/widgets/chat_bubble.dart';
import 'package:flutter/material.dart';

class DetailChatPage extends StatelessWidget {
  // const DetailChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return ListView(
        padding: EdgeInsets.only(
            left: defaultMargin, right: defaultMargin, bottom: defaultMargin),
        children: [
          ChatBubblePage(
            textChat:
                "Hallo, Barangnya ready kah gan untuk size 42 nya ? kalo ready mau saya order langsung nih",
            isSender: false,
            hasProduct: true,
          ),
          ChatBubblePage(
              textChat: "Ready Gan, silahkan order",
              isSender: true,
              hasProduct: false),
          ChatBubblePage(
              textChat: "Oke otw Gan", isSender: false, hasProduct: false),
          ChatBubblePage(
              textChat:
                  'Jangan Lupa utuk memasukan Kode Voucher "#SEKUNDRENDAY" untuk mendapatkan potongan ongkir ke seluruh indonesia',
              isSender: true,
              hasProduct: false),
          ChatBubblePage(
              textChat: "Wah mantappppu jiwaaa gann",
              isSender: false,
              hasProduct: false),
          ChatBubblePage(
              textChat: "oke gan, makasih gan info nyee",
              isSender: false,
              hasProduct: false),
          ChatBubblePage(
              textChat: "oke kakak , sama-sama yaa",
              isSender: true,
              hasProduct: false),
        ],
      );
    }

    Widget productPreview() {
      return Container(
        width: 225,
        height: 75,
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: bg5Color, borderRadius: BorderRadius.circular(12)),
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            Container(
              height: 54,
              width: 54,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "assets/images/runningDepan-1.png",
                  height: 54,
                  width: 54,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: 120,
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Court Vision Serie 2",
                    style: primaryTextStyle.copyWith(
                        fontSize: 14, fontWeight: regular),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "\$57,15",
                    style: priceTextStyle.copyWith(
                        fontSize: 14, fontWeight: medium),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/icons/icon_silang.png",
                    height: 22,
                    width: 22,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            productPreview(),
            Row(
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
          ],
        ),
      );
    }

    Widget layouting() {
      return Container(
        color: priceColor,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 50,
              color: primaryColor,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 20),
                    child: Row(
                      children: [
                        Icon(Icons.supervised_user_circle_sharp, size: 30),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Hallo Header",
                          style: primaryTextStyle.copyWith(
                              fontSize: 16, fontWeight: semiBold),
                        ),
                        Spacer(),
                        Icon(Icons.logout_sharp, size: 30),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 10),
                color: redColor,
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        color: Colors.green,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text("Hallo Row 1")],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        color: Colors.yellow,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text("Hallo Row 1")],
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
              color: primaryTextColor,
              height: 100,
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: redColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "row 1 column 3",
                            style: blackTextStyle.copyWith(
                                fontSize: 10, fontWeight: semiBold),
                          ),
                          Text(
                            "row 1 column 3",
                            style: blackTextStyle.copyWith(
                                fontSize: 10, fontWeight: semiBold),
                          ),
                          Text(
                            "row 1 column 3",
                            style: blackTextStyle.copyWith(
                                fontSize: 10, fontWeight: semiBold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      color: greenColor,
                      height: double.infinity,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "row 1 column 3",
                            style: blackTextStyle.copyWith(
                                fontSize: 10, fontWeight: semiBold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "row 1",
                                style: blackTextStyle.copyWith(
                                    fontSize: 10, fontWeight: semiBold),
                              ),
                              Text(
                                "row 2",
                                style: blackTextStyle.copyWith(
                                    fontSize: 10, fontWeight: semiBold),
                              ),
                              Text(
                                "row 3",
                                style: blackTextStyle.copyWith(
                                    fontSize: 10, fontWeight: semiBold),
                              ),
                            ],
                          ),
                          Text(
                            "row 1 column 3",
                            style: blackTextStyle.copyWith(
                                fontSize: 10, fontWeight: semiBold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      color: primaryColor,
                      height: double.infinity,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "row 1 column 3",
                            style: blackTextStyle.copyWith(
                                fontSize: 10, fontWeight: semiBold),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: primaryTextColor,
              height: 100,
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      color: redColor,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "row 1 column 3",
                            style: blackTextStyle.copyWith(
                                fontSize: 10, fontWeight: semiBold),
                          ),
                          Text(
                            "row 1 column 3",
                            style: blackTextStyle.copyWith(
                                fontSize: 10, fontWeight: semiBold),
                          ),
                          Text(
                            "row 1 column 3",
                            style: blackTextStyle.copyWith(
                                fontSize: 10, fontWeight: semiBold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      color: greenColor,
                      height: double.infinity,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "row 1 column 3",
                            style: blackTextStyle.copyWith(
                                fontSize: 10, fontWeight: semiBold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "row 1",
                                style: blackTextStyle.copyWith(
                                    fontSize: 10, fontWeight: semiBold),
                              ),
                              Text(
                                "row 2",
                                style: blackTextStyle.copyWith(
                                    fontSize: 10, fontWeight: semiBold),
                              ),
                              Text(
                                "row 3",
                                style: blackTextStyle.copyWith(
                                    fontSize: 10, fontWeight: semiBold),
                              ),
                            ],
                          ),
                          Text(
                            "row 1 column 3",
                            style: blackTextStyle.copyWith(
                                fontSize: 10, fontWeight: semiBold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      color: primaryColor,
                      height: double.infinity,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "row 1 column 3",
                            style: blackTextStyle.copyWith(
                                fontSize: 10, fontWeight: semiBold),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
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
      // bottomNavigationBar: chatInput(),
      body: content(),
    );
  }
}
