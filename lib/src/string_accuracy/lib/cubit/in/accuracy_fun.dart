import '../../string_accuracy.dart';
import 'matchtype_2_n_fun_default.dart';

/// calculate the accuracy based on matchAnswer and matchInput
///
/// providing [from] or providing [matchAnswer] & [matchInput] or both
double accuracyFun(StringAccuracyCubit? from,
    {List<MatchType>? matchAnswer,
    List<MatchType>? matchInput,
    double Function(MatchType)? matchType2N}) {
  /// either providing [from] or {[matchAnswer],...}
  /// at least one of them.
  if (from == null &&
      (matchAnswer == null ||
          matchInput == null ||
          (matchAnswer.length == 0 && matchInput.length == 0))) {
    return 0;
  }
  matchAnswer ??= from!.state.matchAnswer;
  matchInput ??= from!.state.matchInput;
  matchType2N ??= (from != null) ? from.matchType2N : matchType2NFun;

  double n = 0;

  matchAnswer.forEach((ele) {
    n = n + matchType2N!(ele);
  });
  matchInput.forEach((ele) {
    n = n + matchType2N!(ele);
  });

  return n / (matchAnswer.length + matchInput.length);
}
