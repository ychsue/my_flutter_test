import 'dart:math';

import '../../string_accuracy.dart';
import 'accuracy_fun.dart';
import 'matchtype_2_n_fun_default.dart';

StringAccuracyState inputAndAnswerFun(
    {required String input,
    required String answer,
    double Function(MatchType)? matchType2N}) {
  List<MatchType> matchInput;
  List<MatchType> matchAnswer;
  List<List<int>> roadMap = const [];
  double accuracy = 0;
  matchType2N ??= matchType2NFun;

  late StringAccuracyState result;

  if (input.length * answer.length == 0) {
    matchInput = (input.length == 0)
        ? const []
        : List.generate(input.length, (index) => MatchType.no);
    matchAnswer = (answer.length == 0)
        ? const []
        : List.generate(answer.length, (index) => MatchType.no);
  } else {
    // 1. Get the roadMap
    roadMap = List.generate(
        input.length + 1, (index) => List.filled(answer.length + 1, 0));
    for (var i0 = 1; i0 < input.length + 1; i0++) {
      for (var i1 = 1; i1 < answer.length + 1; i1++) {
        // Ignore the case of a character
        final isTheSame =
            input[i0 - 1].toLowerCase() == answer[i1 - 1].toLowerCase();
        final nMatch = (isTheSame)
            ? (roadMap[i0 - 1][i1 - 1] + 1)
            : max(roadMap[i0 - 1][i1], roadMap[i0][i1 - 1]);
        roadMap[i0][i1] = nMatch;
      }
    }
    // 2. Get matchInput and matchAnswer;
    matchInput = List.filled(input.length, MatchType.no);
    matchAnswer = List.filled(answer.length, MatchType.no);
    int iInputCheck = input.length - 1;
    int iAnswerCheck = answer.length - 1;
    do {
      final c = roadMap[iInputCheck + 1][iAnswerCheck + 1];
      final l = roadMap[iInputCheck + 1][iAnswerCheck];
      final u = roadMap[iInputCheck][iAnswerCheck + 1];
      final d = roadMap[iInputCheck][iAnswerCheck];
      if (c == l) {
        matchAnswer[iAnswerCheck] = MatchType.no;
        --iAnswerCheck;
      } else if (c == u) {
        matchInput[iInputCheck] = MatchType.no;
        --iInputCheck;
      } else if (c == (d + 1)) {
        final isTheSame = answer[iAnswerCheck] == input[iInputCheck];
        final theType =
            (isTheSame) ? MatchType.exactly : MatchType.caseInsensitive;
        matchAnswer[iAnswerCheck] = theType;
        matchInput[iInputCheck] = theType;
        --iAnswerCheck;
        --iInputCheck;
      }
    } while ((iInputCheck >= 0) && (iAnswerCheck >= 0));

    // 3. Calculate accuracy and output result
    accuracy = accuracyFun(null,
        matchAnswer: matchAnswer,
        matchInput: matchInput,
        matchType2N: matchType2N);
  }

  result = StringAccuracyState(
      input: input,
      answer: answer,
      matchInput: matchInput,
      matchAnswer: matchAnswer,
      roadMap: roadMap,
      accuracy: accuracy);

  return result;
}
