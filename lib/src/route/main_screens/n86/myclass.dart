import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'myclass.freezed.dart';
part 'myclass.g.dart';

@Freezed()
class MyClass with _$MyClass {
  factory MyClass({String? a, int? b}) = _MyClass;
}

@Freezed()
class Union with _$Union {
  const factory Union(int value) = Data;
  const factory Union.loading() = Loading;
  const factory Union.error([String? message]) = ErrorDetails;
  const factory Union.complex(int a, String b) = Complex;

  factory Union.fromJson(Map<String, Object?> json) => _$UnionFromJson(json);
}

@Freezed()
class SharedProperty with _$SharedProperty {
  factory SharedProperty.person({
    String? name,
    int? age,
  }) = SharedProperty0;

  factory SharedProperty.city({
    String? name,
    int? population,
  }) = SharedProperty1;
}
