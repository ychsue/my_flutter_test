import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class N31DraggableScreen extends StatelessWidget {
  const N31DraggableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _url = "";
    const url1 =
        "https://cdn.shopify.com/s/files/1/1902/7917/products/Tulip-Stresa-7_180x180_crop_center.jpg?v=1497183194";
    const url2 =
        "https://cdn.shopify.com/s/files/1/1902/7917/products/Tulip-Banja-Luka-1_180x180_crop_center.jpg?v=1496047867";
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Draggable(
                          data: url1,
                          feedback: Opacity(
                            child: Image.network(url1),
                            opacity: 0.8,
                          ),
                          child: Image.network(url1),
                          childWhenDragging: Opacity(
                            child: Image.network(url1),
                            opacity: 0.4,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => launch(url1),
                          child: Text("Source"),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Draggable(
                            data: url2,
                            feedback: Opacity(
                              child: Image.network(url2),
                              opacity: 0.4,
                            ),
                            child: Image.network(url2)),
                        ElevatedButton(
                          onPressed: () => launch(url2),
                          child: Text("Source"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 200,
              ),
              // 標的
              Center(
                child: DragTarget(
                  onWillAccept: (v) => (v is String) && v == url1,
                  onAccept: (v) {
                    _url = v as String;
                  },
                  builder: (ctx, candi, rej) {
                    Widget result = (_url != "")
                        ? Image.network(_url)
                        : Container(
                            color: Colors.yellow,
                            child: Text("hello"),
                            height: 200,
                            width: 200,
                          );
                    if (candi.length > 0)
                      result = Image.network(candi[0] as String);
                    if (rej.length > 0) {
                      _url = "";
                      result = Container(
                        color: Colors.greenAccent,
                        child: Text("Reject: $rej"),
                        height: 200,
                        width: 200,
                      );
                    }

                    return result;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
