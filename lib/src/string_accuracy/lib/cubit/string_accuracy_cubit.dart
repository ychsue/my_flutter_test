import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:test2/src/string_accuracy/lib/cubit/in/accuracy_fun.dart';
import 'package:test2/src/string_accuracy/lib/cubit/in/matchtype_2_n_fun_default.dart';

import 'in/input_and_answer_fun.dart';

part 'string_accuracy_state.dart';

class StringAccuracyCubit extends Cubit<StringAccuracyState> {
  StringAccuracyCubit() : super(StringAccuracyInitial());

  /// [MatchType] -> N (1, 0, 0.5) or you can define it by yourself.
  double Function(MatchType) matchType2N = matchType2NFun;

  /// request: by providing [input] and [answer] to get the result
  StringAccuracyState inputAndAnswer(
      {String? input,
      String? answer,
      double Function(MatchType)? matchType2NFun}) {
    // Using original values if the values does not input
    input ??= state.input;
    answer ??= state.answer;
    matchType2NFun ??= matchType2N;
    if (state.input == input && state.answer == answer) return state;

    final result = inputAndAnswerFun(
        input: input, answer: answer, matchType2N: matchType2N);
    emit(result);
    return result;
  }

  /// request: the [accuracy] based on the matching between [answer] and [input]
  double get accuracy => accuracyFun(this);
}
