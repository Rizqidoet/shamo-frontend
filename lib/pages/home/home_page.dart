import 'package:bwa_shamo/theme.dart';
import 'package:bwa_shamo/widgets/new_arrival_cart.dart';
import 'package:bwa_shamo/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);

  int sekundren = 0;

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

  Widget categories(BuildContext context) {
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
            GestureDetector(
              onTap: () {
                sekundren = 0;
                print(sekundren);
                (context as Element).reassemble();
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                decoration: BoxDecoration(
                    color: sekundren == 0 ? primaryColor : Colors.transparent,
                    border: sekundren == 0
                        ? null
                        : Border.all(color: subtitleTextColor),
                    borderRadius: BorderRadius.circular(12)),
                child: Text(
                  "All shoes",
                  style: sekundren == 0
                      ? primaryTextStyle.copyWith(
                          fontSize: 13, fontWeight: medium)
                      : subtitleTextStyle.copyWith(
                          fontSize: 13, fontWeight: medium),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                sekundren = 1;
                print(sekundren);
                (context as Element).reassemble();
              },
              child: Container(
                margin: EdgeInsets.only(left: 16),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                decoration: BoxDecoration(
                    color: sekundren == 1 ? primaryColor : Colors.transparent,
                    border: sekundren == 1
                        ? null
                        : Border.all(color: subtitleTextColor),
                    borderRadius: BorderRadius.circular(12)),
                child: Text(
                  "Running",
                  style: sekundren == 1
                      ? primaryTextStyle.copyWith(
                          fontSize: 13, fontWeight: medium)
                      : subtitleTextStyle.copyWith(
                          fontSize: 13, fontWeight: medium),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                sekundren = 2;
                print(sekundren);
                (context as Element).reassemble();
              },
              child: Container(
                margin: EdgeInsets.only(left: 16),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                decoration: BoxDecoration(
                    color: sekundren == 2 ? primaryColor : Colors.transparent,
                    border: sekundren == 2
                        ? null
                        : Border.all(color: subtitleTextColor),
                    borderRadius: BorderRadius.circular(12)),
                child: Text(
                  "Training",
                  style: sekundren == 2
                      ? primaryTextStyle.copyWith(
                          fontSize: 13, fontWeight: medium)
                      : subtitleTextStyle.copyWith(
                          fontSize: 13, fontWeight: medium),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                sekundren = 3;
                print(sekundren);
                (context as Element).reassemble();
              },
              child: Container(
                margin: EdgeInsets.only(left: 16),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
                decoration: BoxDecoration(
                    color: sekundren == 3 ? primaryColor : Colors.transparent,
                    border: sekundren == 3
                        ? null
                        : Border.all(color: subtitleTextColor),
                    borderRadius: BorderRadius.circular(12)),
                child: Text(
                  "Basketball",
                  style: sekundren == 3
                      ? primaryTextStyle.copyWith(
                          fontSize: 13, fontWeight: medium)
                      : subtitleTextStyle.copyWith(
                          fontSize: 13, fontWeight: medium),
                ),
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

  Widget allShoes() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
                top: defaultMargin, right: defaultMargin, left: defaultMargin),
            child: Text(
              "Popular products",
              style:
                  primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 14, left: defaultMargin),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductCard(
                    imageProduct: 'assets/images/runningDepan-1.png',
                    categoryProduct: 'runing',
                    titleProduct: "Aerostreet Hoops Gum Series",
                    priceProduct: "\$23.32",
                  ),
                  ProductCard(
                    imageProduct: 'assets/images/basketDepan-1.png',
                    categoryProduct: 'basket',
                    titleProduct: "Aerostreet Hoops 2D Series",
                    priceProduct: "\$23.32",
                  ),
                  ProductCard(
                    imageProduct: 'assets/images/hikingDepan-1.png',
                    categoryProduct: 'hiking',
                    titleProduct: "Aerostreet Hoops Low Series",
                    priceProduct: "\$23.32",
                  ),
                  ProductCard(
                    imageProduct: 'assets/images/trainingDepan-1.png',
                    categoryProduct: 'training',
                    titleProduct: "Aerostreet Hoops x NamaKalian",
                    priceProduct: "\$23.32",
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: defaultMargin, right: defaultMargin, left: defaultMargin),
            child: Text(
              "New Arrivals",
              style:
                  primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 14,
                left: defaultMargin,
                bottom: defaultMargin,
                right: defaultMargin),
            child: Column(
              children: [
                NewArrivalCard(
                  imageProduct: 'assets/images/runningDepan-1.png',
                  categoryProduct: 'runing',
                  titleProduct: "Aerostreet Hoops Gum Series",
                  priceProduct: "\$23.32",
                ),
                NewArrivalCard(
                  imageProduct: 'assets/images/basketDepan-1.png',
                  categoryProduct: 'basket',
                  titleProduct: "Aerostreet Hoops 2D Series",
                  priceProduct: "\$23.32",
                ),
                NewArrivalCard(
                  imageProduct: 'assets/images/hikingDepan-1.png',
                  categoryProduct: 'hiking',
                  titleProduct: "Aerostreet Hoops Low Series",
                  priceProduct: "\$23.32",
                ),
                NewArrivalCard(
                  imageProduct: 'assets/images/trainingDepan-1.png',
                  categoryProduct: 'training',
                  titleProduct: "Aerostreet Hoops x NamaKalian",
                  priceProduct: "\$23.32",
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget runing() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
                top: defaultMargin, right: defaultMargin, left: defaultMargin),
            child: Text(
              "Runing",
              style:
                  primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 14,
                left: defaultMargin,
                bottom: defaultMargin,
                right: defaultMargin),
            child: Column(
              children: [
                NewArrivalCard(
                  imageProduct: 'assets/images/runningDepan-1.png',
                  categoryProduct: 'runing',
                  titleProduct: "Aerostreet Hoops Gum Series",
                  priceProduct: "\$23.32",
                ),
                NewArrivalCard(
                  imageProduct: 'assets/images/runningDepan-2.png',
                  categoryProduct: 'basket',
                  titleProduct: "Aerostreet Hoops 2D Series",
                  priceProduct: "\$23.32",
                ),
                NewArrivalCard(
                  imageProduct: 'assets/images/runningDepan-3.png',
                  categoryProduct: 'hiking',
                  titleProduct: "Aerostreet Hoops Low Series",
                  priceProduct: "\$23.32",
                ),
                NewArrivalCard(
                  imageProduct: 'assets/images/runningDepan-4.png',
                  categoryProduct: 'training',
                  titleProduct: "Aerostreet Hoops x NamaKalian",
                  priceProduct: "\$23.32",
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget training() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
                top: defaultMargin, right: defaultMargin, left: defaultMargin),
            child: Text(
              "Training",
              style:
                  primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 14,
                left: defaultMargin,
                bottom: defaultMargin,
                right: defaultMargin),
            child: Column(
              children: [
                NewArrivalCard(
                  imageProduct: 'assets/images/trainingDepan-1.png',
                  categoryProduct: 'runing',
                  titleProduct: "Aerostreet Hoops Gum Series",
                  priceProduct: "\$23.32",
                ),
                NewArrivalCard(
                  imageProduct: 'assets/images/trainingDepan-2.png',
                  categoryProduct: 'basket',
                  titleProduct: "Aerostreet Hoops 2D Series",
                  priceProduct: "\$23.32",
                ),
                NewArrivalCard(
                  imageProduct: 'assets/images/trainingDepan-3.png',
                  categoryProduct: 'hiking',
                  titleProduct: "Aerostreet Hoops Low Series",
                  priceProduct: "\$23.32",
                ),
                NewArrivalCard(
                  imageProduct: 'assets/images/trainingDepan-4.png',
                  categoryProduct: 'training',
                  titleProduct: "Aerostreet Hoops x NamaKalian",
                  priceProduct: "\$23.32",
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget basketBall() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
                top: defaultMargin, right: defaultMargin, left: defaultMargin),
            child: Text(
              "Basket Ball",
              style:
                  primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 14,
                left: defaultMargin,
                bottom: defaultMargin,
                right: defaultMargin),
            child: Column(
              children: [
                NewArrivalCard(
                  imageProduct: 'assets/images/basketDepan-1.png',
                  categoryProduct: 'runing',
                  titleProduct: "Aerostreet Hoops Gum Series",
                  priceProduct: "\$23.32",
                ),
                NewArrivalCard(
                  imageProduct: 'assets/images/basketDepan-2.png',
                  categoryProduct: 'basket',
                  titleProduct: "Aerostreet Hoops 2D Series",
                  priceProduct: "\$23.32",
                ),
                NewArrivalCard(
                  imageProduct: 'assets/images/basketDepan-3.png',
                  categoryProduct: 'hiking',
                  titleProduct: "Aerostreet Hoops Low Series",
                  priceProduct: "\$23.32",
                ),
                NewArrivalCard(
                  imageProduct: 'assets/images/basketDepan-4.png',
                  categoryProduct: 'training',
                  titleProduct: "Aerostreet Hoops x NamaKalian",
                  priceProduct: "\$23.32",
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget categoryMenu() {
    switch (sekundren) {
      case 0:
        return allShoes();
        break;
      case 1:
        return runing();
        break;
      case 2:
        return training();
        break;
      case 3:
        return basketBall();
        break;
      default:
        return allShoes();
    }
  }

// Widget Gak Kepake tp lumayan buat contekan
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
            ProductCard(
              imageProduct: 'assets/images/runningDepan-1.png',
              categoryProduct: 'runing',
              titleProduct: "Aerostreet Hoops Gum Series",
              priceProduct: "\$23.32",
            ),
            ProductCard(
              imageProduct: 'assets/images/basketDepan-1.png',
              categoryProduct: 'basket',
              titleProduct: "Aerostreet Hoops 2D Series",
              priceProduct: "\$23.32",
            ),
            ProductCard(
              imageProduct: 'assets/images/hikingDepan-1.png',
              categoryProduct: 'hiking',
              titleProduct: "Aerostreet Hoops Low Series",
              priceProduct: "\$23.32",
            ),
            ProductCard(
              imageProduct: 'assets/images/trainingDepan-1.png',
              categoryProduct: 'training',
              titleProduct: "Aerostreet Hoops x NamaKalian",
              priceProduct: "\$23.32",
            )
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
      margin: EdgeInsets.only(
          top: 14,
          left: defaultMargin,
          bottom: defaultMargin,
          right: defaultMargin),
      child: Column(
        children: [
          NewArrivalCard(
            imageProduct: 'assets/images/runningDepan-1.png',
            categoryProduct: 'runing',
            titleProduct: "Aerostreet Hoops Gum Series",
            priceProduct: "\$23.32",
          ),
          NewArrivalCard(
            imageProduct: 'assets/images/basketDepan-1.png',
            categoryProduct: 'basket',
            titleProduct: "Aerostreet Hoops 2D Series",
            priceProduct: "\$23.32",
          ),
          NewArrivalCard(
            imageProduct: 'assets/images/hikingDepan-1.png',
            categoryProduct: 'hiking',
            titleProduct: "Aerostreet Hoops Low Series",
            priceProduct: "\$23.32",
          ),
          NewArrivalCard(
            imageProduct: 'assets/images/trainingDepan-1.png',
            categoryProduct: 'training',
            titleProduct: "Aerostreet Hoops x NamaKalian",
            priceProduct: "\$23.32",
          )
        ],
      ),
    );
  }

// Widget Gak Kepake tp lumayan buat contekan
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [header(), categories(context), categoryMenu()],
    );
  }
}
