import 'package:flutter/cupertino.dart';

abstract class AbsN15 extends InheritedModel<int> {
  AbsN15({Key? key, required this.num, required this.child})
      : super(key: key, child: child);

  final int num;
  final Widget child;

  static AbsN15? of(BuildContext context) {
    // 此type必須不能為 AbsN15
    return context.dependOnInheritedWidgetOfExactType<N15InheritedModel>();
  }

  @override
  bool updateShouldNotify(AbsN15 oldWidget) {
    return true;
  }

  @override
  bool updateShouldNotifyDependent(
      covariant InheritedModel oldWidget, Set dependencies) {
    // TODO: implement updateShouldNotifyDependent
    throw UnimplementedError();
  }
}

class N15InheritedModel extends AbsN15 {
  N15InheritedModel({Key? key, required num, required child})
      : super(key: key, num: num, child: child);

  // final int num;
  // final Widget child;

  // static N15InheritedModel? of(BuildContext context) {
  //   return context.dependOnInheritedWidgetOfExactType<N15InheritedModel>();
  // }

  // @override
  // bool updateShouldNotify(N15InheritedModel oldWidget) {
  //   return true;
  // }

  // @override
  // bool updateShouldNotifyDependent(
  //     covariant InheritedModel oldWidget, Set dependencies) {
  //   // TODO: implement updateShouldNotifyDependent
  //   throw UnimplementedError();
  // }
}
