import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'my_page.dart';

class PagesRetrieverCubit extends Cubit<List<MyPage>> {
  PagesRetrieverCubit() : super([]);

  @override
  List<MyPage> get state {
    List<MyPage> pages;
    if (super.state.length == 0) {
      pages = super.state..add(MyPage());
      emit(pages); //Update the state
    } else {
      pages = super.state;
    }
    return pages;
  }

  MyPage getCurrentPage() => state.last;

  void push(RouteInformation info) {
    final page = MyPage(info: info);
    state.add(page);
    emit(state);
  }

  MyPage pop() {
    final lastPage = state.removeLast();
    emit(state);
    return lastPage;
  }

  void renew(RouteInformation? info) {
    state.clear();
    super.state.add(MyPage(info: info));
    emit(state);
  }
}
