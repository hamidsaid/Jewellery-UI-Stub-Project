import 'package:flutter/material.dart';
import 'package:starting_project_jewellry_shop/constants.dart';

class FormBuild extends StatelessWidget {
  final String headline;
  final IconData icon;
  final String placeHolder;

  FormBuild({
    required this.headline,
    required this.icon,
    required this.placeHolder,
  });

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 50.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                headline,
                textAlign: TextAlign.start,
                style: TextStyle(color: kMainColor, fontSize: 15),
              ),
            ),
          ),
          Container(
            width: device.width * 0.8,
            child: TextField(
              decoration: InputDecoration(
                  hintText: '\t' + placeHolder,
                  labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 14.0),
                  hintStyle:
                      const TextStyle(color: Colors.black, fontSize: 14.0),
                  prefixIcon: Icon(
                    icon,
                    color: kMainColor,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
