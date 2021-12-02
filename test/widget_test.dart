// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:test2/src/app.dart';
import 'package:test2/src/route/main_screens/home_screen.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app());

    // Verify that our counter starts at 0.
    expect(find.byType(HomeScreen), findsOneWidget);

    //   // Tap the '+' icon and trigger a frame.
    // final txtFinder = find.text('Unknown');
    // final txtbtnFinder =
    //     find.ancestor(of: txtFinder, matching: find.byType(TextButton));
    // await tester.tap(txtbtnFinder);
    // await tester.pump(const Duration(milliseconds: 3000));
    // //   // Verify that our counter has incremented.
    // expect(find.byType(UnknownScreen), findsOneWidget);
    //   expect(find.text('0'), findsNothing);
    //   expect(find.text('1'), findsOneWidget);
  });
}
