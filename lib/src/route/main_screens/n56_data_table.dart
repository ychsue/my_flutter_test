import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N56DataTableScreen extends StatelessWidget {
  const N56DataTableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = [
      [1, "Alice", 170],
      [2, "Bob", 80],
      [3, "Clare", 90],
      [4, "David", 100],
    ].obs;
    final sortC = [true, true, true].obs;
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() => SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              sortColumnIndex: 2,
              sortAscending: sortC[2],
              columns: [
                DataColumn(
                    label: Text("Id"),
                    numeric: true,
                    tooltip: "Give me a number!"),
                DataColumn(label: Text("Name")),
                DataColumn(
                    label: Text("Grade"),
                    numeric: true,
                    tooltip: "你的成績",
                    onSort: (ind, isA) {
                      debugPrint("Index $ind: $isA");
                      sortC[2] = isA;
                      if (isA) {
                        c.sort((a, b) =>
                            ((a[ind] as num) - (b[ind] as num)).floor());
                      } else {
                        c.sort((a, b) =>
                            ((b[ind] as num) - (a[ind] as num)).floor());
                      }
                    }),
              ],
              rows: [
                for (var iRow in c)
                  DataRow(
                    cells: [
                      for (var item in iRow)
                        DataCell(
                          Text("$item"),
                        )
                    ],
                  )
              ],
            ),
          )),
    );
  }
}
