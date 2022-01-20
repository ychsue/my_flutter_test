import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sensors_plus/sensors_plus.dart';

class N96SensorsPlusPkg extends StatefulWidget {
  const N96SensorsPlusPkg({Key? key}) : super(key: key);

  @override
  State<N96SensorsPlusPkg> createState() => _N96SensorsPlusPkgState();
}

class _N96SensorsPlusPkgState extends State<N96SensorsPlusPkg> {
  final cAcc = XYZ(x: 0, y: 0, z: 0).obs;
  late StreamSubscription accListen;
  final cuAcc = XYZ(x: 0, y: 0, z: 0).obs;
  late StreamSubscription uaccListen;
  final cGy = XYZ(x: 0, y: 0, z: 0).obs;
  late StreamSubscription gyListen;
  final cMag = XYZ(x: 0, y: 0, z: 0).obs;
  late StreamSubscription magListen;

  @override
  void initState() {
    super.initState();
    accListen = accelerometerEvents.listen((event) {
      cAcc.value = XYZ(x: event.x, y: event.y, z: event.z);
    });
    uaccListen = userAccelerometerEvents.listen((event) {
      cuAcc.value = XYZ(x: event.x, y: event.y, z: event.z);
    });
    gyListen = gyroscopeEvents.listen((event) {
      cGy.value = XYZ(x: event.x, y: event.y, z: event.z);
    });
    magListen = magnetometerEvents.listen((event) {
      cMag.value = XYZ(x: event.x, y: event.y, z: event.z);
    });
  }

  @override
  void dispose() {
    accListen.cancel();
    uaccListen.cancel();
    gyListen.cancel();
    magListen.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sensors Plus: For Web, Android and iOS"),
      ),
      body: Obx(() => Column(
            children: [
              ListTile(
                leading: Text("Accelerometer:"),
                title: Text("x: ${cAcc.value.x} \n" +
                    "y: ${cAcc.value.y} \n" +
                    "z: ${cAcc.value.z} "),
              ),
              ListTile(
                leading: Text("(user)Accelerometer:"),
                title: Text("x: ${cuAcc.value.x} \n" +
                    "y: ${cuAcc.value.y} \n" +
                    "z: ${cuAcc.value.z} "),
              ),
              ListTile(
                leading: Text("Gyroscope:"),
                title: Text("x: ${cGy.value.x} \n" +
                    "y: ${cGy.value.y} \n" +
                    "z: ${cGy.value.z} "),
              ),
              ListTile(
                leading: Text("Magnetometer:"),
                title: Text("x: ${cMag.value.x} \n" +
                    "y: ${cMag.value.y} \n" +
                    "z: ${cMag.value.z} "),
              ),
            ],
          )),
    );
  }
}

class XYZ {
  double x;
  double y;
  double z;
  XYZ({
    required this.x,
    required this.y,
    required this.z,
  });
}
