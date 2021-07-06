import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'my_page.dart';

class PagesRetrieverCubit extends Cubit<List<MyPage>> {
  PagesRetrieverCubit() : super([]);

  bool shouldEmit = false;

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

  void push(RouteInformation info, {bool shouldEmit = false}) {
    final page = MyPage(info: info);
    state.add(page);
    this.shouldEmit = shouldEmit;
    emit(List.of(state));
  }

  MyPage pop({bool shouldEmit = false}) {
    final lastPage = state.removeLast();
    this.shouldEmit = shouldEmit;
    emit(List.of(state));
    return lastPage;
  }

  void renew(RouteInformation? info, {bool shouldEmit = false}) {
    state.clear();
    super.state.add(MyPage(info: info));
    this.shouldEmit = shouldEmit;
    emit(List.of(state));
  }
}
