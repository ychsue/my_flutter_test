import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:html/parser.dart' as parser;

/// Take a look at [this Medium's Article](https://medium.com/flutter-community/parsing-html-in-dart-with-html-package-cd43c29cc460)
///
class N94HTMLPackage extends StatelessWidget {
  N94HTMLPackage({Key? key}) : super(key: key);

  final stHtml =
      "<body>Hello world! <a href=\"www.html5rocks.com\">HTML5 rocks!".obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HTML parser")),
      body: Obx(
        () => Column(
          children: [
            Expanded(
                child: TextFormField(
              maxLines: 1000,
              minLines: 1,
              onChanged: (v) => stHtml.value = v,
              initialValue: stHtml.value,
            )),
            ElevatedButton(
              onPressed: () {
                final doc = parser.parse(stHtml.value);
                final data = doc.body?.querySelectorAll('a');
                Get.snackbar(
                    "querySelectorAll('a')",
                    "length: ${data?.length}" +
                        "\n" +
                        "[0].innerHtml: ${data?[0].innerHtml}");
              },
              child: Text("querySelectorAll('a')"),
            ),
          ],
        ),
      ),
    );
  }
}
