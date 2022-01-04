import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N90TabPageSelectorScreen extends StatefulWidget {
  N90TabPageSelectorScreen({Key? key}) : super(key: key);

  @override
  _N90TabPageSelectorScreenState createState() =>
      _N90TabPageSelectorScreenState();
}

class _N90TabPageSelectorScreenState extends State<N90TabPageSelectorScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabCtrl;
  final cInd = 0.obs;
  late StreamSubscription<int> abc;

  @override
  void initState() {
    super.initState();
    _tabCtrl = TabController(length: 3, vsync: this);
    abc = cInd.listen((p0) {
      setState(() {
        _tabCtrl.index = p0;
      });
    });
  }

  @override
  void dispose() {
    _tabCtrl.dispose();
    abc.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() => Column(
            children: [
              TabPageSelector(
                controller: _tabCtrl,
              ),
              Text("${cInd.value}"),
            ],
          )),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () => cInd.value++,
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () => cInd.value--,
            child: const Icon(Icons.minimize),
          ),
        ],
      ),
    );
  }
}
