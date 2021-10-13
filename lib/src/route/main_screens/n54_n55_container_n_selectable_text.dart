import 'package:flutter/material.dart';

class N54N55ContainerNSelectableTextScreen extends StatelessWidget {
  const N54N55ContainerNSelectableTextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: SelectableText("Normal SelectableText Widget, " +
                "container## background color: blue(removed, since it will conflict with decoration)" +
                "padding: all:30" +
                "margin: all:40" +
                "decoration: yellow circle " +
                "alignment: topLeft" +
                "constraints: tightForFinite:width:200" +
                "transform:rX"),
            // color: Colors.blue,
            padding: EdgeInsets.all(30.0),
            margin: EdgeInsets.all(40.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.yellow,
            ),
            alignment: Alignment.topLeft,
            constraints: BoxConstraints.tightForFinite(
              width: 200,
            ),
            transform: Matrix4.rotationX(0.5)..setRotationZ(0.05),
          )),
          Container(
            height: 40,
            margin: EdgeInsets.all(60),
            child: SelectableText.rich(
              TextSpan(
                  text: "Rich SelectableText Widget, " + " style: color blue ",
                  children: [
                    TextSpan(
                        text: "showCursor: true ",
                        style: TextStyle(color: Colors.yellow)),
                    TextSpan(text: '\n'),
                    TextSpan(text: "cursorWidth,Color, and Radius "),
                    TextSpan(
                        text:
                            "toolbarOption: selectAll(Web version does not work), "),
                    TextSpan(text: "onTap to debugPrint, "),
                    TextSpan(
                        text:
                            "ScrollPhysics: ClampingScrollPhysics (I don't know how to use it correctly), "),
                  ]),
              style: TextStyle(color: Colors.blue),
              showCursor: true,
              cursorColor: Colors.green,
              cursorWidth: 5,
              cursorRadius: Radius.circular(5),
              toolbarOptions: ToolbarOptions(selectAll: true),
              onTap: () {
                debugPrint("I got it!");
              },
              scrollPhysics: ClampingScrollPhysics(),
            ),
          )
        ],
      ),
    );
  }
}
