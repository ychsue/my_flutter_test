import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test2/src/route/cubit/my_page.dart';
import 'package:test2/src/route/cubit/pages_retriever_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: BlocListener<PagesRetrieverCubit, List<MyPage>>(
        listener: (context, state) => {},
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () => context.read<PagesRetrieverCubit>().push(
                      MyPage.type2Info(PageTypes.welcome),
                      shouldEmit: true),
                  child: Text("Welcome")),
            ),
            TextButton(
                onPressed: () => context.read<PagesRetrieverCubit>().push(
                    MyPage.type2Info(PageTypes.unknown),
                    shouldEmit: true),
                child: Text("Unknown"))
          ],
        ),
      )
        
        
      ),
    );
  }
}
