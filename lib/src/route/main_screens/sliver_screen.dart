import 'package:flutter/material.dart';
import 'dart:math' as math;

// Gotten from https://medium.com/flutter/slivers-demystified-6ff68ab0296f
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => math.max(minHeight, maxHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(
      child: child,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    //covariant???
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class SliverScreen extends StatelessWidget {
  const SliverScreen({Key? key}) : super(key: key);

  Color randomColor() {
    math.Random random = math.Random();
    return Color.fromARGB(
        255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
  }

  SliverPersistentHeader makeHeader(String headerText) {
    return SliverPersistentHeader(
        pinned: true,
        delegate: _SliverAppBarDelegate(
          minHeight: 60.0,
          maxHeight: 200.0,
          child: Container(
            color: randomColor(),
            child: Center(
              child: Text(headerText),
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: CustomScrollView(
          slivers: <Widget>[
            makeHeader('Header section 1'),
            SliverGrid.count(
              crossAxisCount: 3,
              children: [
                for (var i = 0; i < 9; i++)
                  Container(color: randomColor(), height: 150.0)
              ],
            ),
            makeHeader('Header section 2'),
            SliverFixedExtentList(
                delegate: SliverChildListDelegate([
                  for (var i = 0; i < 5; i++) Container(color: randomColor())
                ]),
                itemExtent: 150.0),
            makeHeader('Header section 3'),
            SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.teal[100 * (index % 9)],
                      child: new Text('grid item $index'),
                    );
                  },
                  childCount: 20,
                ),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200.0,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 4.0)),
            makeHeader('Header section 4'),
            SliverList(
                delegate: SliverChildListDelegate([
              for (var i = 0; i < 4; i++)
                Container(
                  color: randomColor(),
                  height: 150.0,
                )
            ]))
          ],
        ));
  }
}
