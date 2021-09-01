import 'package:flutter/material.dart';

class InfoIW extends InheritedWidget {
  InfoIW({Key? key, required this.child, score})
      : _score = score,
        super(key: key, child: child);

  final int _score;
  int get score => this._score;

  final Widget child;

  static InfoIW? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InfoIW>();
  }

  @override
  bool updateShouldNotify(InfoIW oldWidget) {
    return (oldWidget._score != _score);
  }
}
