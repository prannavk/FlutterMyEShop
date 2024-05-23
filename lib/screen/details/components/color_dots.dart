import 'package:flutter/material.dart';
import 'package:shop_ui/components/rounded_icon_btn.dart';
import 'package:shop_ui/models/MyProduct.dart';
import '../../../constant.dart';
import '../../../size_config.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key key,
    @required this.product,
  }) : super(key: key);

  final MyProduct product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
              product.colors.length,
              (index) => ColorDot(
                    color: product.colors[index],
                    isSelected: selectedColor == index,
                  )),
          Spacer(),
          RoundedIconBtn(press: () {}, iconData: Icons.remove),
          SizedBox(
            width: getProportionateScreenWidth(15),
          ),
          RoundedIconBtn(press: () {}, iconData: Icons.add),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(8),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
          //color: product.colors[0],
          shape: BoxShape.circle,
          border: Border.all(
              color: isSelected ? kPrimaryColor : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
