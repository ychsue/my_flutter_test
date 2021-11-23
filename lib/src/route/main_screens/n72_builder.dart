import 'package:flutter/material.dart';

class N72BuilderScreen extends StatelessWidget {
  const N72BuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _key = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _key,
      appBar: AppBar(),
      body: Column(
        children: [
          Builder(
            builder: (ctx) => ElevatedButton(
              onPressed: () => showBottomSheet(
                context: ctx,
                builder: (context) =>
                    Container(margin: EdgeInsets.all(18), child: Text('hello')),
              ),
              child: Text("show bottom sheet by Builder"),
            ),
          ),
          AnotherWidget(scaffoldKey: _key),
          ByKey(scaffoldKey: _key),
        ],
      ),
    );
  }
}

class ByKey extends StatelessWidget {
  const ByKey({Key? key, required this.scaffoldKey}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
        child: Text("By Key"),
        onPressed: () {
          scaffoldKey.currentState
              ?.showBottomSheet((context) => FractionallySizedBox(
                    heightFactor: 0.5,
                    child: Container(
                      color: Colors.red,
                    ),
                  ));
          debugPrint("In By Key");
        },
      ),
    );
  }
}

class AnotherWidget extends StatelessWidget {
  const AnotherWidget({Key? key, required this.scaffoldKey}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
        child: Text("Another Widget"),
        onPressed: () {
          showBottomSheet(
              context: context,
              builder: (context) =>
                  Container(margin: EdgeInsets.all(18), child: Text("Hello!")));
          debugPrint("In Another Widget");
        },
      ),
    );
  }
}
