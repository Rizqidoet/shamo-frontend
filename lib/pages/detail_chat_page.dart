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

    Widget content() {
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
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }
}
