import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starting_project_jewellry_shop/constants.dart';

class StoreBuild extends StatelessWidget {
  final String storeImage;
  final String storeName;
  final String address;

  StoreBuild({
    required this.storeImage,
    required this.storeName,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(storeImage),
          RichText(
            text: TextSpan(style: TextStyle(color: kMainColor), children: [
              TextSpan(
                text: storeName + "\n",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.normal),
              ),
              TextSpan(
                text: address,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontWeight: FontWeight.w300, color: kMainColor),
              ),
            ]),
          ),
          SvgPicture.asset("assets/icons/world.svg"),
        ],
      ),
    );
  }
}
