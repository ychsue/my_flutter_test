import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N26PositionedScreen extends StatelessWidget {
  const N26PositionedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _top = 0.0.obs;
    var _left = 0.0.obs;
    var _width = 100.0.obs;
    var _height = 100.0.obs;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Stack(
            children: [
              Obx(() => Container(
                    width: _width.value,
                    height: _height.value,
                    color: Colors.yellow,
                  )),
              Obx(() => Positioned(
                    top: _top.value,
                    left: _left.value,
                    width: _width.value,
                    height: _height.value,
                    child: Image.asset('assets/images/tulip.jpg'),
                  )),
            ],
          ),
          Row(
            children: [
              Text('top'),
              Obx(() => Slider(
                    value: _top.value,
                    onChanged: (v) => _top.value = v,
                    min: 0,
                    max: 200,
                  )),
            ],
          ),
          Row(
            children: [
              Text('left'),
              Obx(() => Slider(
                    value: _left.value,
                    onChanged: (v) => _left.value = v,
                    min: 0,
                    max: 200,
                  )),
            ],
          ),
          Row(
            children: [
              Text('width'),
              Obx(() => Slider(
                    value: _width.value,
                    onChanged: (v) => _width.value = v,
                    min: 100,
                    max: 400,
                  )),
            ],
          ),
          Row(
            children: [
              Text('height'),
              Obx(() => Slider(
                    value: _height.value,
                    onChanged: (v) => _height.value = v,
                    min: 100,
                    max: 400,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
