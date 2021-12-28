import 'package:flutter/material.dart';
import 'package:bwa_shamo/theme.dart';

class CheckoutSuccess extends StatelessWidget {
  // const CheckoutSuccess({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: bg1Color,
        elevation: 0,
        centerTitle: true,
        title: Text("Checkout Success"),
      );
    }

    Widget content() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/icon_trashEmpty.png',
              height: 70,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              child: Column(
                children: [
                  Text(
                    "You made a transaction",
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Stay at home while we prepare your dream shoes",
                    style: greyTextStyle.copyWith(
                        fontSize: 14, fontWeight: regular),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: defaultMargin,
                  ),
                  Container(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/home");
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 12,
                        ),
                      ),
                      child: Text(
                        "Order Other Shoes",
                        style: primaryTextStyle.copyWith(
                            fontSize: 16, fontWeight: medium),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/home");
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xffB7B6BF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 12,
                        ),
                      ),
                      child: Text(
                        "View my order",
                        style: subtitleTextStyle.copyWith(
                            fontSize: 16, fontWeight: medium),
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
      appBar: header(),
      body: content(),
    );
  }
}
