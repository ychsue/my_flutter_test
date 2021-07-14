import 'package:flutter/material.dart';

import 'package:get/get.dart';

class _RadiusController extends GetxController {
  final _radius = 16.obs;
  set radius(value) => this._radius.value = value;
  get radius => this._radius.value;
}

class N16ClipRRectScreen extends StatelessWidget {
  N16ClipRRectScreen({Key? key}) : super(key: key);

  final _ctr = _RadiusController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(() => ClipRRect(
              child: Image(image: AssetImage("images/tulip.jpg")),
              borderRadius: BorderRadius.all(Radius.circular(_ctr.radius)),
            )),
      ),
      floatingActionButton: IconButton(
          onPressed: () => _ctr.radius++, icon: Icon(Icons.ad_units_sharp)),
    );
  }
}
