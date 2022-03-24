import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:starting_project_jewellry_shop/constants.dart';
import 'package:starting_project_jewellry_shop/screens/lists/jewellery_list.dart';
import 'components/jewelleryCard.dart';
import 'components/store_build.dart';
import 'lists/stores_list.dart';
import 'components/bottom_btn.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0, left: 30.0),
            child: Row(
              children: [
                const Text(
                  "Meilleures offres \npour vous",
                  style: TextStyle(
                    color: Color(0xFF473A5F),
                    fontSize: 26,
                  ),
                ),
                const SizedBox(
                  width: 100.0,
                ),
                IconButton(
                  icon: const Icon(
                    Icons.search,
                    color: kIconColor,
                    size: 40,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 30.0),
            height: 300,
            child: ListView.builder(
                itemCount: Jewerly.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return JewerlyCard(
                    jewerlyImagePath: Jewerly[index][0],
                    jewerlyName: Jewerly[index][1],
                    jewerlyPrice: Jewerly[index][2],
                    containerColor: Jewerly[index][3],
                    btnContainer: Jewerly[index][4],
                  );
                }),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30.0, top: 40, bottom: 10),
            child: Text(
              "Principaux Boutiques",
              style: TextStyle(
                color: Color(0xFF473A5F),
                fontSize: 22,
              ),
            ),
          ),
          Expanded(
              child: Stack(
            children: [
              ListView.builder(
                  itemCount: Stores.length,
                  itemBuilder: (context, index) {
                    return StoreBuild(
                      storeImage: Stores[index][0],
                      storeName: Stores[index][1],
                      address: Stores[index][2],
                    );
                  }),
              BottomButton()
            ],
          ))
        ],
      ),
    );
  }
}
