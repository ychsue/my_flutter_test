import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:test2/src/route/main_screens/n95/hero_page.dart';
import 'package:test2/src/route/main_screens/n95/hero_tmps.dart';

class N95HeroModeScreen extends StatelessWidget {
  const N95HeroModeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cHero = true.obs;
    return Scaffold(
      appBar: AppBar(title: Text("HeroMode")),
      body: Obx(
        () => HeroMode(
          enabled: cHero.value,
          child: Column(
            children: [
              SwitchListTile(
                value: cHero.value,
                onChanged: (v) => cHero.value = v,
              ),
              Expanded(
                child: Wrap(
                  children: List.generate(
                    heroTmps.length,
                    (index) {
                      final hero = heroTmps[index];
                      return ListTile(
                        title: Hero(
                          tag: hero.description,
                          child: FaIcon(hero.icon),
                        ),
                        onTap: () => Get.to(HeroPage(hero: hero)),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
