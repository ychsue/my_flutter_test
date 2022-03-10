import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class N106GetItPkg extends StatefulWidget {
  N106GetItPkg({Key? key}) : super(key: key);
  // You can register a Mock one, or change its initial value
  final data = GetIt.I.registerSingleton<Data>(Data(age: 15, name: "Sam"));

  @override
  State<N106GetItPkg> createState() => _N106GetItPkgState();
}

class _N106GetItPkgState extends State<N106GetItPkg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Package GetIt")),
      body: Column(
        children: [
          ListTile(
            leading: Text("Name: "),
            title: TextField(
              onChanged: (value) {
                setState(() {
                  GetIt.I.get<Data>().name = value;
                });
              },
            ),
          ),
          ListTile(
            leading: Text("Age: "),
            title: TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  GetIt.I.get<Data>().age = int.parse(value);
                });
              },
            ),
          ),
          Text(
              "name: ${GetIt.I.get<Data>().name}, age: ${GetIt.I.get<Data>().age}"),
        ],
      ),
    );
  }
}

class Data {
  String name;
  int age;
  Data({
    required this.name,
    required this.age,
  });
}
