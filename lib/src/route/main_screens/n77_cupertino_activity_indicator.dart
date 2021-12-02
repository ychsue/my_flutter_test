import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N77CupertinoActivityIndicatorScreen extends StatefulWidget {
  N77CupertinoActivityIndicatorScreen({Key? key}) : super(key: key);

  @override
  _N77CupertinoActivityIndicatorScreenState createState() =>
      _N77CupertinoActivityIndicatorScreenState();
}

class _N77CupertinoActivityIndicatorScreenState
    extends State<N77CupertinoActivityIndicatorScreen> {
  final c = "Waiting".obs;
  final cIsAnimate = true.obs;
  final cRadius = 10.0.obs;

  oneAction() async {
    c.value = "Waiting";
    await Future.delayed(const Duration(seconds: 3));
    c.value = "Done";
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  cIsAnimate.value = true;
                  cRadius.value = 10.0;
                  oneAction();
                },
                child: Text('default')),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  cIsAnimate.value = true;
                  cRadius.value = 50.0;
                  oneAction();
                },
                child: Text('Change Radius to 50')),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  cIsAnimate.value = false;
                  cRadius.value = 10.0;
                  oneAction();
                },
                child: Text('no animation')),
          ),
          Expanded(
            child: (c.value != "Done")
                ? CupertinoActivityIndicator(
                    animating: cIsAnimate.value,
                    radius: cRadius.value,
                  )
                : Center(
                    child: Text("Done"),
                  ),
          ),
        ],
      ),
    );
  }
}
