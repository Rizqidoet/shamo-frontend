import 'package:bwa_shamo/theme.dart';
import 'package:flutter/material.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({Key? key}) : super(key: key);

  Widget header() {
    return AppBar(
      backgroundColor: bg3Color,
      centerTitle: true,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Text(
        "Favorite Shoes",
        style: secondaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
      ),
    );
  }

  Widget emptyWishlist() {
    return Expanded(
        child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/icon_favoriteEmpty.png',
            height: 80,
            width: 80,
          ),
          SizedBox(
            height: 23,
          ),
          Text(
            " You don't have dream shoes?",
            style:
                secondaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Let's find your favorite shoes",
            style: greyTextStyle.copyWith(fontSize: 14, fontWeight: regular),
          ),
          SizedBox(
            height: defaultMargin,
          ),
          Container(
            height: 50,
            width: 152,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              child: Text(
                "Explore Store",
                style:
                    primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
            ),
          )
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [header(), emptyWishlist()],
    );
  }
}
