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
          Container(
            margin: EdgeInsets.only(top: 12, left: 30, right: 30),
            child: CartCard(
              imageProduct: 'assets/images/hikingDepan-1.png',
              titleProduct: 'Aerostreet Hoops 2D Gump Series',
              priceProduct: '\$23.32',
            ),
          ),
        ],
      );
    }

    return Scaffold(
        backgroundColor: bg3Color, appBar: header(), body: content(context));
  }
}
