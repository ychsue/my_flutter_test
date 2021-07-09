import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test2/src/string_accuracy/lib/string_accuracy.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: BlocProvider(
          create: (_) => StringAccuracyCubit(),
          child: StringAccuracyRealize(),
        ),
      ),
    );
  }
}
