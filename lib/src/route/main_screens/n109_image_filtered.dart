import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N109ImageFilteredScreen extends StatelessWidget {
  const N109ImageFilteredScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cX = 0.5.obs;
    return Scaffold(
      appBar: AppBar(title: Text("ImageFiltered")),
      body: Obx(
        () => Column(
          children: [
            ListTile(
              leading: Text("blur x:"),
              title: Slider(
                value: cX.value,
                onChanged: (v) => cX.value = v,
                min: 0.5,
                max: 6,
              ),
            ),
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: cX.value, sigmaY: 0.5),
              child: Container(
                color: Colors.yellow,
                width: 200,
                height: 200,
                child: FittedBox(
                  child: Icon(Icons.access_time),
                ),
              ),
            ),
            Text("ImageFilter.compose cannot be used on Web version:"),
            ImageFiltered(
              imageFilter: ImageFilter.matrix(Float64List.fromList([
                1.2,
                0.1,
                0,
                0,
                0,
                1,
                0,
                0,
                0,
                0,
                1,
                0,
                0,
                0,
                0.2,
                1.1,
              ])),
              child: Container(
                color: Colors.yellow,
                width: 200,
                height: 200,
                child: FittedBox(
                  child: Icon(Icons.access_time),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
