import 'package:flutter/material.dart';

class N34MediaQueryScreen extends StatelessWidget {
  const N34MediaQueryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMediaQuery(context));
    var media = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Text('Width: ${media.size.width}'),
          Text('Height: ${media.size.height}'),
          Text('DevicePixelRatio: ${media.devicePixelRatio}'),
          Text('accessibleNavigation: ${media.accessibleNavigation}'),
          Text('alwaysUse24HourFormat: ${media.alwaysUse24HourFormat}'),
          Text('boldText: ${media.boldText}'),
          Text('disableAnimations: ${media.disableAnimations}'),
          Text('highContrast: ${media.highContrast}'),
          Text('invertColors: ${media.invertColors}'),
          Text('navigationMode: ${media.navigationMode}'),
          Text('orientation: ${media.orientation}'),
          Text('padding: ${media.padding}'),
          Text('platformBrightness: ${media.platformBrightness}'),
          Text('systemGestureInsets: ${media.systemGestureInsets}'),
          Text('textScaleFactor: ${media.textScaleFactor}'),
          Text('viewInsets: ${media.viewInsets}'),
          Text('viewPadding: ${media.viewPadding}'),
          Text('MQ::boldTextOverride: ${MediaQuery.boldTextOverride(context)}'),
          Text('MQ::highContrastOf: ${MediaQuery.highContrastOf(context)}'),
          Text(
              'MQ::platformBrightnessOf: ${MediaQuery.platformBrightnessOf(context)}'),
          Text(
              'MQ::textScaleFactorOf: ${MediaQuery.textScaleFactorOf(context)}'),
        ],
      ),
    );
  }
}
