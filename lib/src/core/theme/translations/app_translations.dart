import 'package:get/get.dart';
import 'package:test2/src/core/theme/translations/en_us.dart';
import 'package:test2/src/core/theme/translations/zh_tw.dart';

abstract class TransString {
  static const EN_US = 'en_US';
  static const ZH_TW = 'zh_TW';
}

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys =>
      {TransString.EN_US: en_US, TransString.ZH_TW: zh_TW};
}
