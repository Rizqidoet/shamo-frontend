import 'package:bwa_shamo/theme.dart';
import 'package:flutter/material.dart';

class NewArrivalCard extends StatelessWidget {
  // const NewArrivalCard({Key? key}) : super(key: key);
  final String imageProduct;
  final String categoryProduct;
  final String titleProduct;
  final String priceProduct;

  NewArrivalCard({
    this.imageProduct = "",
    this.categoryProduct = "",
    this.titleProduct = "",
    this.priceProduct = "",
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        margin: EdgeInsets.only(bottom: defaultMargin),
        height: 120,
        child: Row(
          children: [
            Container(
              height: 120,
              width: 120,
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
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      categoryProduct,
                      style: greyTextStyle.copyWith(
                          fontSize: 12, fontWeight: regular),
                    ),
                    Text(
                      titleProduct,
                      style: primaryTextStyle.copyWith(
                          fontSize: 16, fontWeight: semiBold),
                    ),
                    Text(
                      priceProduct,
                      style: priceTextStyle.copyWith(
                          fontSize: 14, fontWeight: medium),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
