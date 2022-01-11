import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class N92FontAwesomeScreen extends StatelessWidget {
  const N92FontAwesomeScreen({Key? key}) : super(key: key);
  static const List<IconData> icons = [
    FontAwesomeIcons.fiveHundredPx,
    FontAwesomeIcons.accessibleIcon,
    FontAwesomeIcons.accusoft,
    FontAwesomeIcons.acquisitionsIncorporated,
    FontAwesomeIcons.ad,
    FontAwesomeIcons.addressBook,
    FontAwesomeIcons.addressCard,
    FontAwesomeIcons.adjust,
    FontAwesomeIcons.adn,
    FontAwesomeIcons.adversal,
    FontAwesomeIcons.affiliatetheme,
    FontAwesomeIcons.airFreshener,
    FontAwesomeIcons.airbnb,
    FontAwesomeIcons.algolia,
    FontAwesomeIcons.alignCenter,
    FontAwesomeIcons.alignJustify,
    FontAwesomeIcons.alignLeft,
    FontAwesomeIcons.alignRight,
    FontAwesomeIcons.alipay,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        FloatingActionButton(
          onPressed: () async => await launch("https://fontawesome.com/"),
          child: Icon(Icons.web),
        ),
      ]),
      body: Wrap(
        children: List.generate(
            icons.length,
            (index) => Padding(
                  padding: EdgeInsets.all(8),
                  child: FaIcon(icons[index]),
                )),
      ),
    );
  }
}
