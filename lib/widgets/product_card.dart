import 'package:bwa_shamo/theme.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 278,
        width: 215,
        margin: EdgeInsets.only(right: defaultMargin),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Color(0xffECEDEF)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Image.asset(
              "assets/images/runningDepan-1.png",
              fit: BoxFit.cover,
              width: 215,
              height: 120,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hiking",
                    style: greyTextStyle.copyWith(
                        fontSize: 12, fontWeight: regular),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "COURT VISION 2.0",
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: semiBold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    '\$58,67',
                    style: priceTextStyle.copyWith(
                        fontSize: 14, fontWeight: medium),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
