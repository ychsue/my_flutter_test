part of 'string_accuracy_cubit.dart';

enum MatchType { no, exactly, caseInsensitive }

@immutable
class StringAccuracyState {
  final String input; //the user's input to match the answer
  final String answer;
  final List<MatchType> matchInput; // false: doesn't match, true: match
  final List<MatchType> matchAnswer;
  final List<List<int>> roadMap;
  final double accuracy; // \sum(matchInput,matchAnswer)/(n1+n2)

  StringAccuracyState(
      {this.input = "",
      this.answer = "",
      this.matchInput = const [],
      this.matchAnswer = const [],
      this.accuracy = 0,
      this.roadMap = const []});

  StringAccuracyState.of(StringAccuracyState state)
      : this.input = state.input,
        this.answer = state.answer,
        this.matchInput = state.matchInput,
        this.matchAnswer = state.matchAnswer,
        this.accuracy = state.accuracy,
        this.roadMap = state.roadMap;
}

class StringAccuracyInitial extends StringAccuracyState {
  StringAccuracyInitial() : super();
}
