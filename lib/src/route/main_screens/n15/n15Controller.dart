import 'package:get/get.dart';

class N15Controller extends GetxController {
  N15Controller();

  final _num = 0.obs;
  set num(value) => this._num.value = value;
  get num => this._num.value;
}
