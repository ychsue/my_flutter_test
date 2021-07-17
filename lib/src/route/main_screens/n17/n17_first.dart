import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/src/route/main_screens/n17/photo_hero.dart';
import '../../app_pages.dart';

class N17First extends StatelessWidget {
  const N17First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: PhotoHero(
          width: 150,
          photo:
              'https://cdn.shopify.com/s/files/1/1419/7120/products/sq_Tulip_Avignon.IBULB.jpg?v=1535566527',
          onTap: () => Get.back(),
        ),
      ),
    );
  }
}
