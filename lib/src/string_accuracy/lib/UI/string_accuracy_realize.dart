import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../string_accuracy.dart';

class StringAccuracyRealize extends StatelessWidget {
  StringAccuracyRealize({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  String? notEmptyValidator(String? value) {
    if (value == null || value.isEmpty) return 'Please enter some text';
    return null;
  }

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
              return ListTile(
                leading: Text("accuracy"),
                title: Text(stAcc.accuracy.toString()),
                trailing: Icon(Icons.remove_red_eye),
              );
            },
          ),
          BlocBuilder<StringAccuracyCubit, StringAccuracyState>(
            builder: (ctx, state) {
              return Visibility(
                visible: state.answer.length > 3,
                child: Wrap(
                  children: [
                    for (var i = 0; i < state.answer.length; i++)
                      AnimatedContainer(
                        // key: ValueKey(
                        //     state.matchAnswer[i].toString() + i.toString()),
                        width: 40 * 1.5,
                        height: 40 * 1.5,
                        duration: const Duration(milliseconds: 500),
                        child: Center(
                            child: (state.matchAnswer[i] != MatchType.no)
                                ? Text(
                                    state.answer[i],
                                    style: TextStyle(
                                        fontSize: 40,
                                        textBaseline: TextBaseline.alphabetic),
                                  )
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
                ),
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
