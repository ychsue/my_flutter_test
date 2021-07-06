import 'dart:async';
// import 'package:rxdart/rxdart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test2/src/route/cubit/my_page.dart';
import 'package:test2/src/route/cubit/pages_retriever_cubit.dart';

class MyRouteDelegate extends RouterDelegate<RouteInformation>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<RouteInformation> {
  PagesRetrieverCubit pagesRetriever;
  late final StreamSubscription<List<MyPage>> listenPageRetriever;

  MyRouteDelegate({required this.pagesRetriever})
      : this.navigatorKey = GlobalKey<NavigatorState>() {
    this.listenPageRetriever = pagesRetriever.stream
        // .sampleTime(const Duration(milliseconds: 10000))
        .listen((event) {
      if (pagesRetriever.shouldEmit) {
        // pagesRetriever.shouldEmit = false; //會無法運作
        notifyListeners();
        debugPrint(event.toString());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: pagesRetriever.state,
      onPopPage: (route, result) {
        if (route.didPop(result)) {
          pagesRetriever.pop(shouldEmit: true);
          return true;
        }
        return false;
      },
    );
  }

  @override
  RouteInformation? get currentConfiguration =>
      pagesRetriever.getCurrentPage().info;

  @override
  final GlobalKey<NavigatorState> navigatorKey;

  @override
  Future<void> setNewRoutePath(RouteInformation configuration) async {
    return pagesRetriever.renew(configuration, shouldEmit: false);
  }

  @override
  void dispose() {
    listenPageRetriever.cancel();
    super.dispose();
  }
}
