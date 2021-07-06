import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:test2/src/route/cubit/my_page.dart';
import 'package:test2/src/route/main_screens/home_screen.dart';
import 'package:test2/src/route/main_screens/unknown_screen.dart';
import 'package:test2/src/route/main_screens/welcome_screen.dart';

// https://stackoverflow.com/questions/56277477/unit-testing-in-flutter-passing-buildcontext
class MockBuildContext extends Mock implements BuildContext {}

void main() {
  group('測試type2Location', () {
    test('home', () {
      final String location = MyPage.type2Location(PageTypes.home);
      expect(location, '/');
    });
    test('welcome', () {
      final String location = MyPage.type2Location(PageTypes.welcome);
      expect(location, '/welcome');
    });
    test('unknown', () {
      final String location = MyPage.type2Location(PageTypes.unknown);
      expect(location, '/unknown');
    });
  });
  group('測試Location2Type', () {
    test('input null', () {
      expect(MyPage.location2Type(null), PageTypes.home);
    });
    test('input ""', () {
      expect(MyPage.location2Type(""), PageTypes.unknown);
    });
    test('input /abc', () {
      expect(MyPage.location2Type("/abc"), PageTypes.unknown);
    });
    test('welcome', () {
      expect(MyPage.location2Type("/welcome?abc"), PageTypes.welcome);
    });
    test('home', () {
      expect(MyPage.location2Type("/home"), PageTypes.home);
    });
    test('unknown', () {
      expect(MyPage.location2Type("/unknown"), PageTypes.unknown);
    });
  });
  group('測試MyPage', () {
    test('input Nothing', () {
      final page = MyPage();
      final context = MockBuildContext();
      var route = page.createRoute(context);
      expect(route.settings, page);
      var bpr = page.buildMyPageRoute(context);
      expect(bpr.runtimeType, HomeScreen);
    });
    test('input Welcome', () {
      final page = MyPage(info: RouteInformation(location: '/welcome'));
      final context = MockBuildContext();
      var bpr = page.buildMyPageRoute(context);
      expect(bpr.runtimeType, WelcomeScreen);
    });
    test('input home', () {
      final page = MyPage(info: RouteInformation(location: '/home'));
      final context = MockBuildContext();
      var bpr = page.buildMyPageRoute(context);
      expect(bpr.runtimeType, HomeScreen);
    });
    test('input randomly', () {
      final page = MyPage(info: RouteInformation(location: '/egafgdjfehgi'));
      final context = MockBuildContext();
      var bpr = page.buildMyPageRoute(context);
      expect(bpr.runtimeType, UnknownScreen);
    });
  });
}
