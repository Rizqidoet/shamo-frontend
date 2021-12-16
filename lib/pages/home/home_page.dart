import 'package:bwa_shamo/theme.dart';
import 'package:bwa_shamo/widgets/new_arrival_cart.dart';
import 'package:bwa_shamo/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget header() {
    return Container(
      margin: EdgeInsets.only(
          top: defaultMargin, left: defaultMargin, right: defaultMargin),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hallo, Rizqi",
                  style: primaryTextStyle.copyWith(
                      fontSize: 23, fontWeight: semiBold),
                ),
                Text(
                  "@rizqidoet",
                  style: subtitleTextStyle.copyWith(
                      fontSize: 16, fontWeight: regular),
                ),
              ],
            ),
          ),
          Container(
            height: 54,
            width: 54,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image:
                        AssetImage("assets/icons/icon_userdefaultcircle.png"))),
          )
        ],
      ),
    );
  }

  Widget categories() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5, right: defaultMargin),
      margin: EdgeInsets.only(top: defaultMargin),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: defaultMargin,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(12)),
              child: Text(
                "All shoes",
                style:
                    primaryTextStyle.copyWith(fontSize: 13, fontWeight: medium),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              decoration: BoxDecoration(
                  color: transaparentColor,
                  border: Border.all(color: subtitleTextColor),
                  borderRadius: BorderRadius.circular(12)),
              child: Text(
                "Running",
                style: subtitleTextStyle.copyWith(
                    fontSize: 13, fontWeight: medium),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              decoration: BoxDecoration(
                  color: transaparentColor,
                  border: Border.all(color: subtitleTextColor),
                  borderRadius: BorderRadius.circular(12)),
              child: Text(
                "Training",
                style: subtitleTextStyle.copyWith(
                    fontSize: 13, fontWeight: medium),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              decoration: BoxDecoration(
                  color: transaparentColor,
                  border: Border.all(color: subtitleTextColor),
                  borderRadius: BorderRadius.circular(12)),
              child: Text(
                "Basketball",
                style: subtitleTextStyle.copyWith(
                    fontSize: 13, fontWeight: medium),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              decoration: BoxDecoration(
                  color: transaparentColor,
                  border: Border.all(color: subtitleTextColor),
                  borderRadius: BorderRadius.circular(12)),
              child: Text(
                "Hiking",
                style: subtitleTextStyle.copyWith(
                    fontSize: 13, fontWeight: medium),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget popularProdcutTitle() {
    return Container(
      margin: EdgeInsets.only(
          top: defaultMargin, right: defaultMargin, left: defaultMargin),
      child: Text(
        "Popular products",
        style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
      ),
    );
  }

  Widget popularProducts() {
    return Container(
      margin: EdgeInsets.only(top: 14, left: defaultMargin),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ProductCard(),
            ProductCard(),
            ProductCard(),
            ProductCard()
          ],
        ),
      ),
    );
  }

  Widget newArrivalTitle() {
    return Container(
      margin: EdgeInsets.only(
          top: defaultMargin, right: defaultMargin, left: defaultMargin),
      child: Text(
        "New Arrivals",
        style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
      ),
    );
  }

  Widget newArrivals() {
    return Container(
      margin:
          EdgeInsets.only(top: 14, left: defaultMargin, bottom: defaultMargin),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NewArrivalCard(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Football",
                      style: secondaryTextStyle.copyWith(
                          fontSize: 12, fontWeight: regular),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Predator 20.3 Firm Ground",
                      style: primaryTextStyle.copyWith(
                          fontSize: 16, fontWeight: semiBold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "\$68,47",
                      style: priceTextStyle.copyWith(
                          fontSize: 14, fontWeight: medium),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: defaultMargin,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NewArrivalCard(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Football",
                      style: secondaryTextStyle.copyWith(
                          fontSize: 12, fontWeight: regular),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Predator 20.3 Firm Ground",
                      style: primaryTextStyle.copyWith(
                          fontSize: 16, fontWeight: semiBold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "\$68,47",
                      style: priceTextStyle.copyWith(
                          fontSize: 14, fontWeight: medium),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: defaultMargin,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NewArrivalCard(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Football",
                      style: secondaryTextStyle.copyWith(
                          fontSize: 12, fontWeight: regular),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Predator 20.3 Firm Ground",
                      style: primaryTextStyle.copyWith(
                          fontSize: 16, fontWeight: semiBold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "\$68,47",
                      style: priceTextStyle.copyWith(
                          fontSize: 14, fontWeight: medium),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: defaultMargin,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              NewArrivalCard(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Football",
                      style: secondaryTextStyle.copyWith(
                          fontSize: 12, fontWeight: regular),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Predator 20.3 Firm Ground",
                      style: primaryTextStyle.copyWith(
                          fontSize: 16, fontWeight: semiBold),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "\$68,47",
                      style: priceTextStyle.copyWith(
                          fontSize: 14, fontWeight: medium),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        categories(),
        popularProdcutTitle(),
        popularProducts(),
        newArrivalTitle(),
        newArrivals()
      ],
    );
  }
}
