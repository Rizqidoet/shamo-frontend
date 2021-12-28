import 'package:bwa_shamo/widgets/cart_card.dart';
import 'package:flutter/material.dart';
import 'package:bwa_shamo/theme.dart';

class CartPage extends StatelessWidget {
  // const CartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: bg1Color,
        centerTitle: true,
        title: Text("Your Cart"),
        elevation: 0,
      );
    }

    Widget emptyCart() {
      return Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/icon_trashEmpty.png",
                height: 69,
                width: 79,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Opss! Your Cart is Empty",
                style:
                    primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Let's find your favorite shoes",
                style:
                    greyTextStyle.copyWith(fontSize: 14, fontWeight: regular),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 44,
                width: 152,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/home", (route) => false);
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  child: Text(
                    "Explore Store",
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget content(BuildContext context) {
      return ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, left: 30, right: 30),
            child: CartCard(
              imageProduct: 'assets/images/runningDepan-1.png',
              titleProduct: 'Aerostreet Hoops 2D Series',
              priceProduct: '\$23.32',
            ),
          ),
        ],
      );
    }

    Widget customButtonNav() {
      return Container(
        height: 135,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal",
                    style: primaryTextStyle.copyWith(
                        fontSize: 14, fontWeight: medium),
                  ),
                  Text(
                    "\$23.32",
                    style: priceTextStyle.copyWith(
                        fontSize: 14, fontWeight: regular),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Divider(
              thickness: 0.8,
              color: subtitleTextColor,
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 16, left: defaultMargin, right: defaultMargin),
              height: 50,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/checkout');
                },
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  backgroundColor: priceColor,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Continue to checkout",
                      style: primaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: medium),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: primaryTextColor,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bg3Color,
      appBar: header(),
      body: content(context),
      bottomNavigationBar: customButtonNav(),
    );
  }
}
