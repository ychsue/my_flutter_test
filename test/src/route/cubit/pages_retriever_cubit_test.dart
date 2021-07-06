import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test2/src/route/cubit/my_page.dart';
import 'package:test2/src/route/cubit/pages_retriever_cubit.dart';

void main() {
  group('測試剛創造時:', () {
    test('get state', () {
      final cubit = PagesRetrieverCubit();
      expect(cubit.state.length, 1);
      expect(cubit.state[0].info.location, '/');
    });
    test('getCurrentPage', () {
      final cubit = PagesRetrieverCubit();
      expect(cubit.getCurrentPage().info.location, '/');
    });
  });

  group('測試push, pop, 與 renew:', () {
    test('push', () {
      final cubit = PagesRetrieverCubit();
      final subscription = cubit.stream.listen((event) {
        expect(event.length, 2);
      });
      cubit.push(RouteInformation(location: '/welcome'), shouldEmit: true);
      expect(cubit.state.length, 2);
      expect(cubit.state[0].info.location, '/');
      expect(cubit.state[1].info.location, '/welcome');
      Future.delayed(Duration.zero, () => subscription.cancel());
    });
    test('pop', () {
      final cubit = PagesRetrieverCubit();
      cubit.push(RouteInformation(location: '/welcome'));
      cubit.push(RouteInformation(location: '/abc')); //should be unknown
      final subscription = cubit.stream.listen((event) {
        expect(MyPage.location2Type(event[1].info.location), PageTypes.welcome);
        // expect(event.length, 2);
      });
      final last = cubit.pop(shouldEmit: true);
      Future.delayed(Duration.zero, () {
        subscription.cancel();
      });
      expect(cubit.state.length, 2);
      expect(MyPage.location2Type(last.info.location), PageTypes.unknown);
    });
    test('renew', () {
      final cubit = PagesRetrieverCubit();
      cubit.push(RouteInformation(location: '/welcome'));
      cubit.push(RouteInformation(location: '/abc')); //should be unknown
      final subscription = cubit.stream.listen((event) {
        expect(event.length, 1);
      });
      cubit.renew(RouteInformation(location: '/welcome'), shouldEmit: true);
      expect(cubit.state.length, 1);
      expect(MyPage.location2Type(cubit.state[0].info.location),
          PageTypes.welcome);

      cubit.renew(null, shouldEmit: true);
      expect(cubit.state.length, 1);
      expect(
          MyPage.location2Type(cubit.state[0].info.location), PageTypes.home);
      Future.delayed(Duration.zero, () => subscription.cancel());
    });
  });
}
