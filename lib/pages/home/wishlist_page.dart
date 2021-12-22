import 'package:bwa_shamo/theme.dart';
import 'package:bwa_shamo/widgets/wishlist_card.dart';
import 'package:flutter/material.dart';

class WishlistPage extends StatelessWidget {
  // const WishlistPage({Key? key}) : super(key: key);

  int sekundren = 0;

  Widget header() {
    return AppBar(
      backgroundColor: bg1Color,
      centerTitle: true,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Text(
        "Favorite Shoes",
        style: secondaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
      ),
    );
  }

  Widget emptyWishlist(BuildContext context) {
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
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(12)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    sekundren = 1;
                    print(sekundren);
                    (context as Element).reassemble();
                  },
                  child: Text(
                    "Explore Store",
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }

  Widget content() {
    return Container(
      margin: EdgeInsets.all(defaultMargin),
      child: Column(
        children: [
          WishListCard(
            imageProduct: 'assets/images/runningDepan-1.png',
            titleProduct: "Aerostreet Hoops Gum Series",
            priceProduct: "\$23.32",
          ),
          SizedBox(
            height: 20,
          ),
          WishListCard(
            imageProduct: 'assets/images/basketDepan-1.png',
            titleProduct: "Aerostreet Hoops 2D Series",
            priceProduct: "\$23.32",
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [header(), sekundren == 0 ? emptyWishlist(context) : content()],
    );
  }
}
