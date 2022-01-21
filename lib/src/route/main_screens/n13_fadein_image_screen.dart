import 'dart:html';

import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

class N13FadeInImageScreen extends StatelessWidget {
  const N13FadeInImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final url =
        "https://c2.staticflickr.com/6/5481/10334382753_bddc3075f0_b.jpg";
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Center(
                  child: CircularProgressIndicator(),
                ),
                Center(
                  child: FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image: url,
                  ),
                )
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () => launch(url),
            child: Text("Image Source"),
          ),
        ],
      ),
    );
  }
}
