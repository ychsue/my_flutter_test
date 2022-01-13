import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:test2/src/route/main_screens/n95/hero_tmps.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({Key? key, required this.hero}) : super(key: key);

  final EachHero hero;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(hero.description)),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          // alignment: Alignment.center,
          child: FittedBox(
            fit: BoxFit.contain,
            child: GestureDetector(
              onTap: () => Get.back(),
              child: Hero(
                tag: hero.description,
                child: FaIcon(hero.icon),
              ),
            ),
          )),
    );
  }
}
