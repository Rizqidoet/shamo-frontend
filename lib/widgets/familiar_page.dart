import 'package:flutter/material.dart';
import 'package:bwa_shamo/theme.dart';

class FamiliarPage extends StatelessWidget {
  // const FamiliarPage({ Key? key }) : super(key: key);

  final String imageProduct;

  FamiliarPage({
    this.imageProduct = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      height: 54,
      width: 54,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: bg6Color),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.asset(
          imageProduct,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
