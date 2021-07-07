import 'package:flutter_test/flutter_test.dart';
import 'package:test2/src/string_accuracy/cubit/string_accuracy_cubit.dart';

void main() {
  group('測試string_accuracy_cubit:', () {
    test('輸入answer', () {
      final saCubit = StringAccuracyCubit();
      final subscription = saCubit.stream.listen((event) {
        expect(event.accuracy, 0);
      });
      saCubit.inputAndAnswer(answer: 'A test');
      Future.delayed(const Duration(milliseconds: 100), () {
        subscription.cancel();
      });
    });
    test('輸入answer & input', () {
      const accuracies = [2 / 7, 11 / 19];
      const types = [MatchType.exactly, MatchType.caseInsensitive];
      int i0 = 0;
      final saCubit = StringAccuracyCubit();
      final subscription = saCubit.stream.listen((event) {
        expect(event.matchAnswer[0], types[i0]);
        expect(event.accuracy, accuracies[i0]);
        i0++; // or closeTo(11 / 19, pow(10, -14))
      });
      saCubit.inputAndAnswer(answer: 'A test', input: 'A');
      saCubit.inputAndAnswer(input: 'a useful test');
      Future.delayed(const Duration(milliseconds: 100), () {
        subscription.cancel();
      });
    });
  });
}
