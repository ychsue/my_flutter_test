import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N87GestureDetectorScreen extends StatelessWidget {
  const N87GestureDetectorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cPos = [0.0, 0.0].obs;
    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => Stack(
          children: [
            Positioned(
              left: cPos[0],
              top: cPos[1],
              child: Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
            ),
            GestureDetector(
              child: Container(
                color: Color.fromARGB(100, 100, 100, 0),
              ),
              onTap: () => print('tapped'),
              onPanUpdate: (details) {
                final pos = details.localPosition;
                cPos.value = [pos.dx, pos.dy];
              },
            ),
          ],
        ),
      ),
    );
  }
}
