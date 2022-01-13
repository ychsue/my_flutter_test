import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<EachHero> heroTmps = [
  EachHero(
      icon: FontAwesomeIcons.accessibleIcon, description: "accessibleIcon"),
  EachHero(icon: FontAwesomeIcons.accusoft, description: 'accusoft'),
  EachHero(
      icon: FontAwesomeIcons.acquisitionsIncorporated,
      description: "acquisitionsIncorporated"),
  EachHero(icon: FontAwesomeIcons.ad, description: "ad"),
  EachHero(icon: FontAwesomeIcons.addressBook, description: "addressBook"),
];

class EachHero {
  EachHero({required this.icon, required this.description});
  final IconData icon;
  final String description;
}
