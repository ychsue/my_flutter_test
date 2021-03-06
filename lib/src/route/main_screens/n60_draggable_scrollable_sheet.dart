import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class N60DraggableScrollableSheetScreen extends StatelessWidget {
  const N60DraggableScrollableSheetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final urlString =
        'https://images.unsplash.com/photo-1531306728370-e2ebd9d7bb99?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80';
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
                top: 0,
                bottom: 150,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.amber,
                  child: Image.network(
                    urlString,
                    fit: BoxFit.fill,
                  ),
                )),
            DraggableScrollableSheet(
                maxChildSize: 0.6,
                builder: (ctx, scCtrler) => Container(
                      color: Colors.red,
                      child: ListView.builder(
                        controller: scCtrler,
                        itemCount: 20,
                        itemBuilder: (ctxlv, ind) => ListTile(
                          title: (ind == 1)
                              ? ElevatedButton(
                                  onPressed: () => launch(urlString),
                                  child: Text("Source of the Image"),
                                )
                              : Text('Item $ind'),
                        ),
                      ),
                    )),
          ],
        ),
      ),
    );
  }
}
