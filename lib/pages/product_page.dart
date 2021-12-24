import 'package:bwa_shamo/widgets/familiar_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:bwa_shamo/theme.dart';

class ProductPage extends StatefulWidget {
  // const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List images = [
    "assets/images/runningDepan-1.png",
    "assets/images/runningKanan-1.png",
    "assets/images/runningKiri-1.png"
  ];

  int currentIndex = 0;
  int sekundren = 0;

  @override
  Widget build(BuildContext context) {
    Future<void> showSuccessDialog() async {
      return showDialog(
        context: context,
        builder: (BuildContext context) => Container(
          width: MediaQuery.of(context).size.width - (4 * defaultMargin),
          child: AlertDialog(
            backgroundColor: bg3Color,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(38)),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.close,
                        color: primaryTextColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Image.asset(
                    'assets/icons/icon_checklistRounded.png',
                    height: 100,
                    width: 100,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: Text("Horayy",
                        style: primaryTextStyle.copyWith(
                            fontSize: 18, fontWeight: semiBold)),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: Text("Item added successfully",
                        style: greyTextStyle.copyWith(
                            fontSize: 14, fontWeight: regular)),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: Container(
                      child: TextButton(
                        onPressed: () {
                          showSuccessDialog();
                        },
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 54, vertical: 10),
                            backgroundColor: primaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        child: Text(
                          "Add to Cart",
                          style: primaryTextStyle.copyWith(
                              fontSize: 16, fontWeight: semiBold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }

    Widget indicators(int index) {
      return Container(
        width: currentIndex == index ? 16 : 4,
        height: 4,
        margin: EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: currentIndex == index ? primaryColor : greyTextColor),
      );
    }

    Widget header(BuildContext context) {
      int index = -1;
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: 20, left: defaultMargin, right: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.chevron_left)),
                Icon(Icons.shopping_bag)
              ],
            ),
          ),
          CarouselSlider(
            items: images
                .map((e) => Image.asset(
                      e,
                      width: MediaQuery.of(context).size.width,
                      height: 310,
                      fit: BoxFit.cover,
                    ))
                .toList(),
            options: CarouselOptions(
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((e) {
              index++;
              return indicators(index);
            }).toList(),
          )
        ],
      );
    }

    Widget content(BuildContext context) {
      return Container(
        margin: EdgeInsets.only(top: 17),
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(12),
            ),
            color: bg1Color),
        child: Column(
          children: [
            // NOTE : Title
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Aerostreet Hoops Gum Series",
                          style: primaryTextStyle.copyWith(
                              fontSize: 18, fontWeight: semiBold),
                        ),
                        Text("Runing",
                            style: greyTextStyle.copyWith(
                                fontSize: 12, fontWeight: regular)),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (sekundren == 0) {
                          sekundren = 1;
                          print(sekundren);

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: secondaryColor,
                              content: Text(
                                "Has been added to the Whitelist",
                                style: primaryTextStyle.copyWith(
                                    fontSize: 12, fontWeight: regular),
                              ),
                            ),
                          );
                        } else {
                          sekundren = 0;
                          print(sekundren);

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              backgroundColor: alertColor,
                              content: Text(
                                "Has been removed from the Whitelist",
                                style: primaryTextStyle.copyWith(
                                    fontSize: 12, fontWeight: regular),
                              ),
                            ),
                          );
                        }
                      });
                    },
                    child: Container(
                      child: Image.asset(
                        sekundren == 0
                            ? 'assets/icons/icon_favoriteDisableRounded.png'
                            : 'assets/icons/icon_favoriteRounded.png',
                        height: 46,
                        width: 46,
                      ),
                    ),
                  )
                ],
              ),
            ),

            // NOTE : Pricing
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4), color: bg2Color),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Price start from",
                    style: primaryTextStyle.copyWith(
                        fontSize: 14, fontWeight: regular),
                  ),
                  Text(
                    "\$23.32",
                    style: priceTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                ],
              ),
            ),

            // NOTE : Description
            Container(
              margin: EdgeInsets.only(top: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: primaryTextStyle.copyWith(
                        fontSize: 14, fontWeight: medium),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "Unpaved trails and mixed surfaces are easy when you have the traction and support you need. Casual enough for the daily commute.",
                    textAlign: TextAlign.justify,
                    style:
                        greyTextStyle.copyWith(fontSize: 14, fontWeight: light),
                  ),
                ],
              ),
            ),

            // NOTE : Familiar shoes
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Familiar Shoes",
                      style: primaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: medium),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FamiliarPage(
                            imageProduct: 'assets/images/hikingDepan-1.png',
                          ),
                          FamiliarPage(
                            imageProduct: 'assets/images/hikingDepan-2.png',
                          ),
                          FamiliarPage(
                            imageProduct: 'assets/images/hikingDepan-3.png',
                          ),
                          FamiliarPage(
                            imageProduct: 'assets/images/hikingDepan-4.png',
                          ),
                          FamiliarPage(
                            imageProduct: 'assets/images/hikingDepan-1.png',
                          ),
                          FamiliarPage(
                            imageProduct: 'assets/images/hikingDepan-2.png',
                          ),
                          FamiliarPage(
                            imageProduct: 'assets/images/hikingDepan-3.png',
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            // NOTE : Button
            Container(
              margin: EdgeInsets.only(top: 40, bottom: defaultMargin),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/detail-chat");
                    },
                    child: Container(
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: bg1Color,
                        border: Border.all(color: primaryColor),
                      ),
                      child: Center(
                        child: Image.asset(
                          "assets/icons/icon_menuChat.png",
                          color: primaryColor,
                          height: 22,
                          width: 22,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      height: 54,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: primaryColor),
                      child: TextButton(
                        onPressed: () {
                          showSuccessDialog();
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: primaryColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        child: Text(
                          "Add to Cart",
                          style: primaryTextStyle.copyWith(
                              fontSize: 16, fontWeight: semiBold),
                        ),
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
      backgroundColor: bg6Color,
      body: ListView(
        children: [header(context), content(context)],
      ),
    );
  }
}
