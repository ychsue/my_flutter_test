import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RouteParser extends RouteInformationParser<RouteInformation> {
  @override
  Future<RouteInformation> parseRouteInformation(
      RouteInformation routeInformation) {
    return SynchronousFuture(routeInformation);
  }

  @override
  RouteInformation? restoreRouteInformation(RouteInformation configuration) {
    return configuration;
  }
}
