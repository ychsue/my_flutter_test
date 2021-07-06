import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'string_accuracy_state.dart';

class StringAccuracyCubit extends Cubit<StringAccuracyState> {
  StringAccuracyCubit() : super(StringAccuracyInitial());
}
