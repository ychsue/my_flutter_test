import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N43AnimatedSwitcherScreen extends StatelessWidget {
  const N43AnimatedSwitcherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _duration = const Duration(seconds: 1);
    final c = 0.obs;
    final ws = [
      Container(
        key: Key('1'),
        color: Colors.red,
        width: 50,
        height: 50,
      ),
      Container(
        key: Key('2'),
        color: Colors.orange,
        width: 50,
        height: 100,
      ),
      Container(
        key: Key('3'),
        color: Colors.yellow,
        width: 100,
        height: 50,
      ),
      Container(
        key: Key('4'),
        color: Colors.green,
        width: 100,
        height: 100,
      ),
      Container(
        key: Key('5'),
        color: Colors.blue,
        width: 100,
        height: 25,
      ),
    ];
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: IconButton(
          icon: Icon(Icons.change_circle),
          onPressed: () => c.value++,
        ),
        body: Obx(() => Column(
              children: [
                Expanded(
                    child: Center(
                  child: AnimatedSwitcher(
                      duration: _duration, child: ws[(c.value % 5)]),
                )),
                Expanded(
                    child: Center(
                  child: AnimatedSwitcher(
                      duration: _duration,
                      transitionBuilder: (chd, ani) => ScaleTransition(
                            scale: ani,
                            child: chd,
                          ),
                      child: ws[((c.value + 1) % 5)]),
                )),
                Expanded(
                    child: Center(
                  child: AnimatedSwitcher(
                      duration: _duration,
                      transitionBuilder: (chd, ani) => RotationTransition(
                            turns: ani.drive(Tween(begin: 0, end: 0.25)),
                            child: chd,
                          ),
                      child: ws[((c.value + 2) % 5)]),
                )),
                Expanded(
                    child: Center(
                  child: AnimatedSwitcher(
                      duration: _duration,
                      layoutBuilder: (chd, pre) => Column(
                            children: <Widget>[...pre, chd ?? Placeholder()],
                          ),
                      child: ws[((c.value + 3) % 5)]),
                )),
              ],
            )));
  }
}
