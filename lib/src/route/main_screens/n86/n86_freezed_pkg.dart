import 'package:flutter/material.dart';
import 'package:test2/src/route/main_screens/n86/myclass.dart';
import 'package:get/get.dart';

class N86FreezedPackage extends StatelessWidget {
  const N86FreezedPackage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = MyClass(a: '42', b: 42).obs;
    final ca = '42'.obs;
    final cb = 42.obs;

    final cUnion = Union(42);

    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => ListView(
          children: [
            ListTile(
              leading: Text("MyClass' Values"),
              title: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('String: '),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      onChanged: (value) {
                        ca.value = value;
                        c.value = MyClass(
                            a: (value == '') ? null : value, b: cb.value);
                      },
                    ),
                  ),
                  Text('int: '),
                  SizedBox(
                    width: 100,
                    child: TextField(
                      onChanged: (value) {
                        cb.value = int.parse(value);
                        c.value = MyClass(
                            a: ca.value, b: (value == '') ? null : cb.value);
                      },
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(':: clone a:null'),
              leading: Text("${c.value.copyWith(a: null)}"),
            ),
            ListTile(
              leading: Text("${c.value.copyWith()}"),
              title: Text(':: clone'),
            ),
            ListTile(
              leading: Text("${c.value == MyClass(a: ca.value, b: 42)}"),
              title: Text(':: override == 且 b=42 時true'),
            ),
            ListTile(
              leading: Text("${cUnion.when(
                (value) => '$value',
                loading: () => 'loading',
                error: (msg) => 'Error: $msg',
                complex: (a, b) => "complex $a $b",
              )}"),
              title: Text(':: union.when 只要全非null即可'),
            ),
            ListTile(
              leading: Text("${cUnion.maybeWhen(
                null,
                loading: () => 'loading',
                orElse: () => 44,
              )}"),
              title: Text(':: union.maybeWhen 類似上面的，但只要有不是null的即可'),
            ),
            ListTile(
              leading: Text("${cUnion.map(
                (Data value) {
                  print('Data ${value.toJson()}');
                  return '$value';
                },
                loading: (Loading value) {
                  // print('Loading ${value.toJson()}');
                  return 'loading';
                },
                error: (ErrorDetails msg) {
                  // print('Msg ${msg.toJson()}');
                  return 'Error: $msg';
                },
                complex: (Complex value) {
                  print('Complex ${value.toJson()}');
                  return "complex ${value.a} ${value.b}";
                },
              )}"),
              title: Text(':: union.map 像when'),
            ),
            ListTile(
              leading: Text(
                  "${const Union(42)}, loading: ${const Union.loading()}, error: ${const Union.error('Failed to fetch')}"),
              title: Text(':: Union, loading(), error()'),
            ),
            ListTile(
              leading: Text(
                  "${(SharedProperty.person(name: "Remi", age: 24)).name}"),
              title: Text(':: SharedProperty.person.name'),
            ),
            ListTile(
              leading: Text(
                  "${(SharedProperty.city(name: "London", population: 24)).name}"),
              title: Text(':: SharedProperty.city.name'),
            ),
          ],
        ),
      ),
    );
  }
}
