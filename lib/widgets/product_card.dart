import 'package:bwa_shamo/theme.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  // const ProductCard({Key? key}) : super(key: key);

  final String imageProduct;
  final String categoryProduct;
  final String titleProduct;
  final String priceProduct;

  ProductCard({
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
          height: 278,
          width: 215,
          margin: EdgeInsets.only(right: defaultMargin),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xffECEDEF)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Image.asset(
                imageProduct,
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
                      categoryProduct,
                      style: greyTextStyle.copyWith(
                          fontSize: 12, fontWeight: regular),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      titleProduct,
                      style: blackTextStyle.copyWith(
                          fontSize: 18, fontWeight: semiBold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      priceProduct,
                      style: priceTextStyle.copyWith(
                          fontSize: 14, fontWeight: medium),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
