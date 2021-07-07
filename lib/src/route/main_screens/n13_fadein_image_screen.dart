import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class N13FadeInImageScreen extends StatelessWidget {
  const N13FadeInImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Center(
            child: CircularProgressIndicator(),
          ),
          Center(
            child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image:
                    "https://c2.staticflickr.com/6/5481/10334382753_bddc3075f0_b.jpg"),
          )
        ],
      ),
    );
  }
}
