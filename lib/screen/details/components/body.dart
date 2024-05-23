import 'package:flutter/material.dart';
import 'package:shop_ui/components/default_button.dart';
import 'package:shop_ui/models/MyProduct.dart';
import 'package:shop_ui/size_config.dart';
import 'color_dots.dart';
import 'product_description.dart';
import 'product_images.dart';
import 'top_rounded_corner.dart';

class Body extends StatelessWidget {
  final MyProduct product;

  const Body({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDecription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                TopRoundedContainer(
                    color: Color(0xFFF6F7F9),
                    child: Column(
                      children: [
                        ColorDots(product: product),
                        TopRoundedContainer(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: SizeConfig.screenWidth * 0.15,
                                right: SizeConfig.screenWidth * 0.15,
                                top: getProportionateScreenWidth(15),
                                bottom: getProportionateScreenWidth(40)),
                            child: DefaultButton(
                              text: "Add to cart",
                              press: () {},
                            ),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
