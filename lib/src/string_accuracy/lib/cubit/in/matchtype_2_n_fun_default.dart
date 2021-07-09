import '../../string_accuracy.dart';

double matchType2NFun(MatchType ele) {
  if (ele == MatchType.exactly) return 1;
  if (ele == MatchType.caseInsensitive) return 0.5;
  return 0;
}
