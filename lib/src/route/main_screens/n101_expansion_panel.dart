import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N101ExpansionPanelScren extends StatelessWidget {
  const N101ExpansionPanelScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cInd = 0.obs;
    final cdata = <EPData>[
      EPData(
          header: "The first header",
          content: "The first panel is opened.",
          openHeader: '1st: I\'m opened'),
      EPData(
        header: "第二個標頭",
        content: "第二個窗格打開了",
        openHeader: '2nd: 我打開了',
      ),
    ].obs;
    final cOpen = List<bool>.generate(cdata.length, (index) => false).obs;
    return Scaffold(
      appBar: AppBar(title: Text("ExpansionPanel and ExpansionPanelList")),
      body: Obx(
        () => SingleChildScrollView(
          child: ExpansionPanelList(
            dividerColor: Colors.redAccent,
            expansionCallback: (ind, isOpen) {
              cOpen[ind] = !isOpen;
            },
            children: cdata
                .map((ele) => ExpansionPanel(
                    headerBuilder: (context, isExpanded) =>
                        Text((isExpanded) ? ele.openHeader : ele.header),
                    body: Text(ele.content),
                    isExpanded: cOpen[cdata.indexOf(ele)]))
                .toList(),
          ),
        ),
      ),
    );
  }
}

class EPData {
  final String header;
  final String openHeader;
  final String content;
  EPData({
    required this.openHeader,
    required this.header,
    required this.content,
  });
}
