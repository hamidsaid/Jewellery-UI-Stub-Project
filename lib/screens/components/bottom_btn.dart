import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:starting_project_jewellry_shop/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    return Positioned(
      bottom: 0,
      right: 0,
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              "2.572.500 XOF",
              style: TextStyle(
                color: kTextColor,
                fontSize: 18,
              ),
            ),
            SvgPicture.asset("assets/icons/forwardBtn.svg")
          ],
        ),
        style: TextButton.styleFrom(
          backgroundColor: kMainColor,
          fixedSize: Size((device.width * 0.75), 70),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
            ),
          ),
        ),
      ),
    );
  }
}
