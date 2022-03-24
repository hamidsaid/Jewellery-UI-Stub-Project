import 'package:flutter/material.dart';
import 'package:starting_project_jewellry_shop/constants.dart';

class JewerlyCard extends StatelessWidget {
  final String jewerlyImagePath;
  final String jewerlyName;
  final String jewerlyPrice;
  final Color containerColor;
  final Color btnContainer;

  JewerlyCard({
    required this.jewerlyImagePath,
    required this.jewerlyName,
    required this.jewerlyPrice,
    required this.containerColor,
    required this.btnContainer,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 50,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Container(
                height: 200,
                width: 145,
                padding: const EdgeInsets.all(20.0),
                color: containerColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      jewerlyName,
                      style: const TextStyle(
                        color: kTextColor,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      jewerlyPrice,
                      style: const TextStyle(
                        color: kTextColor,
                        fontSize: 13,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          child: Image.asset(jewerlyImagePath),
        ),
        Positioned(
          bottom: 10,
          right: 0,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: btnContainer,
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3,
                    spreadRadius: 0,
                  )
                ]),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 45,
            ),
          ),
        )
      ],
    );
  }
}
