import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test2/src/route/cubit/pages_retriever_cubit.dart';
import 'package:test2/src/route/parser_and_delegate/my_route_delegate.dart';
import 'package:test2/src/route/parser_and_delegate/route_parser.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final PagesRetrieverCubit pagesRetriever = PagesRetrieverCubit();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return pagesRetriever;
      },
      child: MaterialApp.router(
          title: 'A test',
          routeInformationParser: RouteParser(),
          routerDelegate: MyRouteDelegate(pagesRetriever: pagesRetriever)),
    );
  }
}
