import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N99ConnectivityPlusPkg extends StatefulWidget {
  const N99ConnectivityPlusPkg({Key? key}) : super(key: key);

  @override
  State<N99ConnectivityPlusPkg> createState() => _N99ConnectivityPlusPkgState();
}

class _N99ConnectivityPlusPkgState extends State<N99ConnectivityPlusPkg> {
  final connectivity = Connectivity();
  final cState = Rxn<ConnectivityResult>();
  final subscriptions = <StreamSubscription>[];

  @override
  void initState() {
    super.initState();
    connectivity.checkConnectivity().then((value) => cState.value = value);
    subscriptions.add(Connectivity().onConnectivityChanged.listen((event) {
      cState.value = event;
    }));
  }

  @override
  void dispose() {
    for (var item in subscriptions) {
      item.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Connectivity_Plus Package"),
      ),
      body: ListView(
        children: [
          Text(
              "Try to turn on and turn off the network to see what will happen."),
          Text("State"),
          Obx(
            () => Text(cState.value.toString()),
          ),
          Text("Oops, it does not work correctly on Web version"),
        ],
      ),
    );
  }
}
