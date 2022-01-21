import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/src/route/main_screens/n17/photo_hero.dart';
import 'package:url_launcher/url_launcher.dart';

class N17First extends StatelessWidget {
  const N17First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final urlString =
        'https://cdn.shopify.com/s/files/1/1419/7120/products/sq_Tulip_Avignon.IBULB.jpg?v=1535566527';
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: PhotoHero(
          width: 150,
          photo: urlString,
          onTap: () => Get.back(),
        ),
      ),
      floatingActionButton: ElevatedButton(
        child: Text("Img Source"),
        onPressed: () => launch(urlString),
      ),
    );
  }
}
