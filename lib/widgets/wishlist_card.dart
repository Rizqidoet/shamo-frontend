import 'package:flutter/material.dart';
import 'package:bwa_shamo/theme.dart';

class WishListCard extends StatelessWidget {
  // const WishListCard({Key? key}) : super(key: key);

  final String imageProduct;
  final String titleProduct;
  final String priceProduct;

  WishListCard({
    this.imageProduct = "",
    this.titleProduct = "",
    this.priceProduct = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      height: 84,
      decoration: BoxDecoration(
          color: bg4Color, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: primaryTextColor,
                borderRadius: BorderRadius.circular(12)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imageProduct,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  titleProduct,
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: regular),
                ),
                Text(
                  priceProduct,
                  style: priceTextStyle.copyWith(
                      fontSize: 14, fontWeight: regular),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 34,
            width: 34,
            child: Image.asset('assets/icons/icon_favoriteRounded.png'),
          )
        ],
      ),
    );
  }
}
