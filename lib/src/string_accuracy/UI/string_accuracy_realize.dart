import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test2/src/string_accuracy/cubit/string_accuracy_cubit.dart';

class StringAccuracyRealize extends StatelessWidget {
  StringAccuracyRealize({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  String? notEmptyValidator(String? value) {
    if (value == null || value.isEmpty) return 'Please enter some text';
    return null;
  }

// TODO
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            validator: notEmptyValidator,
            maxLines: 2,
            decoration: InputDecoration(
              labelText: 'Answer',
              labelStyle: TextStyle(
                  color: Colors.black87,
                  fontSize: 17,
                  fontFamily: 'AvenirLight'),
              suffix: GestureDetector(
                child: Text('The answer for comparison:'),
                onTap: () {
                  print('tapped');
                },
              ),
            ),
            onChanged: (str) {
              BlocProvider.of<StringAccuracyCubit>(context)
                  .inputAndAnswer(answer: str);
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Input',
            ),
            maxLines: 2,
            onChanged: (str) {
              BlocProvider.of<StringAccuracyCubit>(context)
                  .inputAndAnswer(input: str);
            },
          ),
          BlocBuilder<StringAccuracyCubit, StringAccuracyState>(
            builder: (ctx, stAcc) {
              return Text(stAcc.accuracy.toString());
            },
          ),
          BlocBuilder<StringAccuracyCubit, StringAccuracyState>(
            builder: (ctx, state) {
              return Wrap(
                children: [
                  for (var i = 0; i < state.answer.length; i++)
                    // TODO Based on https://github.com/felangel/bloc/issues/528
                    // it will make the widget tree redrawn, it looks like that I need to check it.
                    AnimatedContainer(
                      key: ValueKey(
                          state.matchAnswer[i].toString() + i.toString()),
                      width: 20,
                      height: 20,
                      duration: const Duration(milliseconds: 1000),
                      child: Center(
                          child: (state.matchAnswer[i] != MatchType.no)
                              ? Text(state.answer[i])
                              : Text("")),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: (state.matchAnswer[i] == MatchType.no)
                              ? Colors.red
                              : ((state.matchAnswer[i] ==
                                      MatchType.caseInsensitive)
                                  ? Colors.yellow
                                  : Colors.green),
                          width: 2,
                        ),
                        color: (state.matchAnswer[i] == MatchType.no)
                            ? Colors.red
                            : Colors.transparent,
                      ),
                    )
                ],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () => {
                if (_formKey.currentState!.validate())
                  {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Processing Data'),
                    ))
                  }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
