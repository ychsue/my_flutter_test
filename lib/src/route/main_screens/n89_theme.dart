import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class N89ThemeScreen extends StatelessWidget {
  const N89ThemeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = 0.obs;
    return Theme(
      data: Theme.of(context).copyWith(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.orange,
        ),
        scaffoldBackgroundColor: Colors.orange[100],
        textTheme: GoogleFonts.emilysCandyTextTheme(),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("THEME TEST"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Obx(
            () => Text(
              "This is a test. The value is ${c.value}",
            ),
          ),
        ),
        floatingActionButton:
            IconButton(onPressed: () => c.value++, icon: Icon(Icons.plus_one)),
      ),
    );
  }
}
