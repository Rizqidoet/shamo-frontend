import 'package:flutter/material.dart';
import 'package:bwa_shamo/theme.dart';

class CartCard extends StatelessWidget {
  // const CartCard({ Key? key }) : super(key: key);
  int qty = 0;

  final String imageProduct;
  final String priceProduct;
  final String titleProduct;

  CartCard({
    this.imageProduct = "",
    this.priceProduct = "",
    this.titleProduct = "",
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 125,
      decoration: BoxDecoration(
        color: bg4Color,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: primaryTextColor,
                    borderRadius: BorderRadius.circular(12)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(imageProduct)),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titleProduct,
                      style: primaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: semiBold),
                    ),
                    Text(
                      priceProduct,
                      style: priceTextStyle.copyWith(
                          fontSize: 14, fontWeight: regular),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      qty = qty + 1;
                      (context as Element).reassemble();
                    },
                    child: Image.asset(
                      'assets/icons/icon_plus.png',
                      height: 16,
                      width: 16,
                    ),
                  ),
                  Text(
                    qty.toString(),
                    style: primaryTextStyle.copyWith(
                        fontSize: 12, fontWeight: medium),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (qty == 0) {
                        (context as Element).reassemble();
                      } else {
                        qty = qty - 1;
                        (context as Element).reassemble();
                      }
                    },
                    child: Image.asset(
                      'assets/icons/icon_mines.png',
                      height: 16,
                      width: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Image.asset(
                'assets/icons/icon_trash.png',
                height: 10,
                width: 12,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Remove",
                style: redTextStyle.copyWith(fontSize: 12, fontWeight: light),
              )
            ],
          )
        ],
      ),
    );
  }
}
