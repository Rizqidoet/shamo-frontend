import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:bwa_shamo/theme.dart';

class CheckoutPage extends StatelessWidget {
  // const CheckoutPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: bg1Color,
        elevation: 0,
        centerTitle: true,
        title: Text("Checkout Details"),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.only(
            top: defaultMargin, left: defaultMargin, right: defaultMargin),
        children: [
          // NOTE : LIST ITEMS
          Text(
            "List Items",
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
            decoration: BoxDecoration(
              color: bg4Color,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: primaryTextColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/runningDepan-1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Aerostreet Hoops 2D Series",
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        "\$23.32",
                        style: priceTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "2 items",
                  style: subtitleTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: regular,
                  ),
                )
              ],
            ),
          ),

          SizedBox(
            height: defaultMargin,
          ),

          // NOTE : ADDRESS DETAILS
          Container(
            padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
            decoration: BoxDecoration(
              color: bg4Color,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Address Detail",
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/icons/icon_locationStore.png',
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Store Location",
                                  style: greyTextStyle.copyWith(
                                      fontSize: 12, fontWeight: light),
                                ),
                                Text(
                                  "Pasar Tampur",
                                  style: primaryTextStyle.copyWith(
                                      fontSize: 14, fontWeight: medium),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: defaultMargin,
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/icons/icon_locationAddress.png',
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Your Location",
                                  style: greyTextStyle.copyWith(
                                      fontSize: 12, fontWeight: light),
                                ),
                                Text(
                                  "Condet Balekambang",
                                  style: primaryTextStyle.copyWith(
                                      fontSize: 14, fontWeight: medium),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          // NOTE : PAYMENT SUMMARY
          SizedBox(
            height: defaultMargin,
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: bg4Color,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Payment Summary",
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: medium),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Product Quantity",
                        style: greyTextStyle.copyWith(
                            fontSize: 12, fontWeight: light),
                      ),
                      Text(
                        "2 items",
                        style: primaryTextStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Product Price",
                        style: greyTextStyle.copyWith(
                            fontSize: 12, fontWeight: light),
                      ),
                      Text(
                        "\$63.32",
                        style: primaryTextStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shipping",
                        style: greyTextStyle.copyWith(
                            fontSize: 12, fontWeight: light),
                      ),
                      Text(
                        "Free",
                        style: primaryTextStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Divider(
                  thickness: 0.8,
                  color: subtitleTextColor,
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: priceTextStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                      ),
                      Text(
                        "\$63.32",
                        style: priceTextStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: defaultMargin,
          ),
          Divider(
            thickness: 0.8,
            color: subtitleTextColor,
          ),
          SizedBox(
            height: defaultMargin,
          ),
          Container(
            margin: EdgeInsets.only(bottom: defaultMargin),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/checkout-success");
              },
              style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.symmetric(vertical: 13),
              ),
              child: Text(
                "Checkout Now",
                style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: semiBold),
              ),
            ),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: bg3Color,
      appBar: header(),
      body: content(),
    );
  }
}
