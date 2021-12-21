import 'package:flutter/material.dart';
import 'package:async/async.dart';
import 'package:get/get.dart';

class N83AsyncPackage extends StatefulWidget {
  N83AsyncPackage({Key? key}) : super(key: key);

  @override
  _N83AsyncPackageState createState() => _N83AsyncPackageState();
}

class _N83AsyncPackageState extends State<N83AsyncPackage> {
  Stream<int> tPeriod() async* {
    for (var i = 0; i < 100; i++) {
      await Future.delayed(const Duration(seconds: 1));
      yield i;
    }
  }

  Stream<int> tPeriod2() async* {
    await Future.delayed(const Duration(milliseconds: 500));
    for (var i = 1000; i < 1100; i++) {
      await Future.delayed(const Duration(seconds: 1));
      yield i;
    }
  }

  final c = 0.obs;
  final c2 = 0.obs;
  final _cache = AsyncCache<int>(const Duration(seconds: 1));
  final c3 = 0.obs;
  final ca = 0.obs;
  final cb = 0.obs;
  final cc = 0.obs;

  @override
  void initState() {
    super.initState();
    // 1st Stream
    tPeriod().forEach((event) {
      c.value = event;
    });
    // 2nd Stream StreamGroup
    StreamGroup.merge([tPeriod(), tPeriod2()]).forEach((element) {
      c2.value = element;
    });
    // 3rd Stream AsyncCache
    Stream.periodic(const Duration(milliseconds: 300), (i0) => i0++)
        .forEach((element) {
      // print(element);
      _cache
          .fetch(() async => DateTime.now().millisecondsSinceEpoch)
          .then((value) {
        c3.value = value;
        // _cache.invalidate();
        // print(value);
      });
    });
    // 4th Stream StreamQuesue
    var data = StreamQueue(tPeriod());
    data.next.then((value) => ca.value = value);
    data.next.then((value) => cb.value = value);
    data.next.then((value) => cc.value = value);
    // () async {
    //   for (var i = 0; i < 20; i++) {
    //     ca.value = await data.next;
    //     cb.value = await data.next;
    //     cc.value = await data.next;
    //   }
    // }();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => Column(
          children: [
            Center(
              child: Text("${c.value}"),
            ),
            Center(
              child: Text("StreamGroup: ${c2.value}"),
            ),
            Center(
              child: Text("AsyncCache: ${c3.value}"),
            ),
            Center(
              child: Text("StreamQueue: ${ca.value}+${cb.value}+${cc.value}"),
            ),
          ],
        ),
      ),
    );
  }
}
