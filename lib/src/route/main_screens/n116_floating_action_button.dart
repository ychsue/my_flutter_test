import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N116FloatingActionButtonScreen extends StatelessWidget {
  const N116FloatingActionButtonScreen({Key? key}) : super(key: key);

  static const locationTypes = <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
    FloatingActionButtonLocation.centerTop,
    FloatingActionButtonLocation.endDocked,
    FloatingActionButtonLocation.endFloat,
    FloatingActionButtonLocation.endTop,
    FloatingActionButtonLocation.miniCenterDocked,
    FloatingActionButtonLocation.miniCenterFloat,
    FloatingActionButtonLocation.miniCenterTop,
    FloatingActionButtonLocation.miniEndDocked,
    FloatingActionButtonLocation.miniEndFloat,
    FloatingActionButtonLocation.miniEndTop,
    FloatingActionButtonLocation.miniStartDocked,
    FloatingActionButtonLocation.miniStartFloat,
    FloatingActionButtonLocation.miniStartTop,
    FloatingActionButtonLocation.startDocked,
    FloatingActionButtonLocation.startFloat,
    FloatingActionButtonLocation.startTop,
  ];

  @override
  Widget build(BuildContext context) {
    final cNum = 0.obs;
    final cIndex = 0.obs;
    final cLocation = FloatingActionButtonLocation.centerDocked.obs;
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text("FloatingActionButton"),
        ),
        body: Column(
          children: [
            Expanded(
                child: GridView.count(
              childAspectRatio: 5,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              shrinkWrap: true,
              crossAxisCount: 4,
              children: locationTypes
                  .map(
                    (e) => ElevatedButton(
                      onPressed: () => cLocation.value = e,
                      child: Text("${e.toString().substring(29)}"),
                    ),
                  )
                  .toList(),
            )),
            Expanded(
              child: Center(
                  child: Text(
                cNum.value.toString(),
                style: TextStyle(fontSize: 48),
              )),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => cNum.value++,
          child: Icon(Icons.plus_one),
          backgroundColor: Colors.blue,
        ),
        floatingActionButtonLocation: cLocation.value,
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) => cIndex.value = value,
            currentIndex: cIndex.value,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.amber,
            backgroundColor: Colors.green,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.feed), label: "Feed"),
            ]),
      ),
    );
  }
}
