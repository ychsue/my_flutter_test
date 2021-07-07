import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'string_accuracy_state.dart';

class StringAccuracyCubit extends Cubit<StringAccuracyState> {
  StringAccuracyCubit() : super(StringAccuracyInitial());

// Request

  StringAccuracyState inputAndAnswer({String? input, String? answer}) {
    // Using original values if the values does not input
    input ??= state.input;
    answer ??= state.answer;
    if (state.input == input && state.answer == answer) return state;

    List<MatchType> matchInput;
    List<MatchType> matchAnswer;
    List<List<int>> roadMap = const [];
    double accuracy = 0;
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
          input.length + 1, (index) => List.filled(answer!.length + 1, 0));
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
      accuracy = this.accuracy(
          matchAnswer: matchAnswer,
          matchInput: matchInput,
          inputLength: input.length,
          answerLength: answer.length);
    }

    result = StringAccuracyState(
        input: input,
        answer: answer,
        matchInput: matchInput,
        matchAnswer: matchAnswer,
        roadMap: roadMap,
        accuracy: accuracy);

    emit(result);
    return result;
  }

  double accuracy(
      {List<MatchType>? matchAnswer,
      List<MatchType>? matchInput,
      int? inputLength,
      int? answerLength}) {
    matchAnswer ??= state.matchAnswer;
    matchInput ??= state.matchInput;
    inputLength ??= state.input.length;
    answerLength ??= state.answer.length;

    double n = 0;

    double toN(MatchType ele) {
      if (ele == MatchType.exactly) return 1;
      if (ele == MatchType.caseInsensitive) return 0.5;
      return 0;
    }

    matchAnswer.forEach((ele) {
      n = n + toN(ele);
    });
    matchInput.forEach((ele) {
      n = n + toN(ele);
    });

    return n / (inputLength + answerLength);
  }
}
