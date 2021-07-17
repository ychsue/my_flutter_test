import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/src/route/main_screens/n17/photo_hero.dart';
import '../../app_pages.dart';

class N17HeroScreen extends StatelessWidget {
  const N17HeroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
        crossAxisCount: 4,
        children: [
          Container(
            child: Column(
              children: [
                PhotoHero(
                  photo:
                      'https://cdn.shopify.com/s/files/1/1419/7120/products/sq_Tulip_Avignon.IBULB.jpg?v=1535566527',
                  width: 50,
                  onTap: () => Get.toNamed(Routes.n17_first.toLocation),
                ),
                Text('This is a test'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
