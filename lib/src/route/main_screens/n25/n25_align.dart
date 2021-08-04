import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N25Align extends StatelessWidget {
  const N25Align({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _x = 0.0.obs;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: Obx(() => Align(
                  child: FractionallySizedBox(
                    widthFactor: 0.5,
                    heightFactor: 0.5,
                    child: FittedBox(
                      child: Icon(Icons.face),
                      fit: BoxFit.fill,
                    ),
                  ),
                  alignment: Alignment(_x.value, 0),
                )),
          ),
          Obx(() => Slider(
                value: _x.value * 100.round(),
                onChanged: (v) => _x.value = v / 100.0,
                min: -100,
                max: 100,
                divisions: 100,
                label: _x.value.toString(),
              )),
        ],
      ),
    );
  }
}
