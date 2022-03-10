import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N114TableScreen extends StatelessWidget {
  const N114TableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cDefaultColumnWidth = Rx<TableColumnWidth>(FixedColumnWidth(100));
    final cWidth = 100.0.obs; //For cColumnWidth
    final cColumnWidth = Rxn<Map<int, TableColumnWidth>>();
    final cAlignment = TableCellVerticalAlignment.middle.obs;
    final listAlignment = [
      TableCellVerticalAlignment.top,
      TableCellVerticalAlignment.middle,
      TableCellVerticalAlignment.bottom,
      TableCellVerticalAlignment.baseline,
      TableCellVerticalAlignment.fill,
    ];
    return Scaffold(
      appBar: AppBar(title: Text("Table")),
      body: Obx(
        () => Column(
          children: [
            ListTile(
              leading: Text("Alignment"),
              title: Row(
                children: [
                  ToggleButtons(
                    isSelected: List<bool>.generate(listAlignment.length,
                        (index) => cAlignment.value == listAlignment[index]),
                    children: [
                      Icon(Icons.arrow_upward),
                      Icon(Icons.center_focus_strong),
                      Icon(Icons.arrow_downward),
                      Icon(Icons.abc),
                      Icon(Icons.expand),
                    ],
                    onPressed: (ind) => cAlignment.value = listAlignment[ind],
                  ),
                  Text("${cAlignment.value}"),
                ],
              ),
            ),
            ListTile(
              leading: Text("defaultColumnWidth"),
              title: Wrap(
                children: [
                  ElevatedButton(
                    onPressed: () =>
                        cDefaultColumnWidth.value = FixedColumnWidth(100),
                    child: Text("Fixed(100)"),
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        cDefaultColumnWidth.value = FractionColumnWidth(.25),
                    child: Text("Fraction(.25)"),
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        cDefaultColumnWidth.value = FlexColumnWidth(.25),
                    child: Text("Flex(.25)"),
                  ),
                  ElevatedButton(
                    onPressed: () => cDefaultColumnWidth.value =
                        IntrinsicColumnWidth(flex: 1),
                    child: Text("Intrinsic"),
                  ),
                  Text("${cDefaultColumnWidth.value}"),
                ],
              ),
            ),
            ListTile(
              leading: Text("set width of the 2nd column"),
              title: Slider(
                value: cWidth.value,
                onChanged: (v) {
                  cWidth.value = v;
                  cColumnWidth.value =
                      (v == 50) ? null : {1: FixedColumnWidth(v)};
                },
                min: 50,
                max: 400,
              ),
            ),
            Expanded(
                child: Table(
              columnWidths: cColumnWidth.value,
              defaultColumnWidth: cDefaultColumnWidth.value,
              textBaseline: TextBaseline.alphabetic,
              defaultVerticalAlignment: cAlignment.value,
              children: [
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.blue[800],
                      width: 100,
                      height: 300,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.blue,
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.blue,
                      width: 100,
                      height: 100,
                    ),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.blue,
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.yellow,
                      width: 100,
                      height: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.blue,
                      width: 100,
                      height: 100,
                    ),
                  ),
                ]),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
