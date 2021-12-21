import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N78ClipOvalScreen extends StatelessWidget {
  const N78ClipOvalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cDim = [0.0, 0.0, 100.0, 100.0].obs;
    final cLeft = 0.0.obs;
    final cWidth = 100.0.obs;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ClipOval(
            child: Container(
              width: 100,
              height: 200,
              color: Colors.yellow,
              child: Center(child: Text("100*200")),
            ),
          ),
          ClipOval(
            child: Container(
              width: 200,
              height: 100,
              color: Colors.green,
              child: Center(child: Text("200*100")),
            ),
          ),
          Expanded(
            child: Obx(() => ClipOval(
                  clipper: MyCustomClipper(
                      left: cLeft.value,
                      top: cDim[1],
                      width: cWidth.value,
                      height: cDim[3]),
                  child: Container(
                    width: 400,
                    height: 500,
                    color: Colors.purple,
                    child: Text("Changable 400*500"),
                  ),
                )),
          ),
          Obx(() => Slider(
                label: "left",
                value: cLeft.value,
                onChanged: (v) {
                  cLeft.value = v;
                },
                min: 0.0,
                max: 400.0,
                divisions: 10,
              )),
          Obx(() => Slider(
                label: "top",
                value: cDim[1],
                onChanged: (v) => cDim[1] = v,
                min: 0.0,
                max: 500.0,
                divisions: 10,
              )),
          Obx(() => Slider(
                label: "width",
                value: cWidth.value,
                onChanged: (v) {
                  cWidth.value = v;
                },
                min: 0.0,
                max: 400.0,
                divisions: 10,
              )),
          Obx(() => Slider(
                label: "height",
                value: cDim[3],
                onChanged: (v) => cDim[3] = v,
                min: 0.0,
                max: 500.0,
                divisions: 10,
              )),
        ],
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Rect> {
  final double left;
  final double top;
  final double width;
  final double height;

  const MyCustomClipper(
      {required this.left,
      required this.top,
      required this.width,
      required this.height});

  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(left, top, width, height);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => true;
}
