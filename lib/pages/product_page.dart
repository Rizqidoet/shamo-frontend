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

  @override
  Widget build(BuildContext context) {
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
              children: [Icon(Icons.chevron_left), Icon(Icons.shopping_bag)],
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

    return Scaffold(
      backgroundColor: bg6Color,
      body: ListView(
        children: [header(context)],
      ),
    );
  }
}
