import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_flutter/src/models/page_data.dart';

part 'home_page_model.freezed.dart';

final homePageProvider =
    StateNotifierProvider.autoDispose<HomePageModel, HomePageState>(
  (ref) => HomePageModel(),
);

class HomePageModel extends StateNotifier<HomePageState> {
  HomePageModel() : super(const HomePageState());
  addPage(PageData data) {
    if (state.pages.indexWhere((element) => element.pageId == data.pageId) ==
        -1) {
      state = state.copyWith(pages: state.pages.toList()..add(data));
    }
    state = state.copyWith(selectedPage: data.pageId);
  }

  removePage(String id) {
    int newIndex = state.pages.indexWhere((e) => e.pageId == id);
    List<PageData> datas = state.pages.toList();
    datas.removeWhere((e) => e.pageId == id);
    if (newIndex != 0) {
      newIndex -= 1;
    }
    state = state.copyWith(
        pages: datas,
        selectedPage: state.selectedPage == id
            ? datas.isEmpty
                ? ""
                : datas[newIndex].pageId
            : state.selectedPage);
  }
}

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    @Default(HomePageStatus.initial) HomePageStatus status,
    @Default([
      PageData(
          pageId: "1",
          pageName: 'home.jsx',
          pageIcon: "assets/images/vscode.png")
    ])
    List<PageData> pages,
    @Default("1") String selectedPage,
  }) = _HomePageState;
}

enum HomePageStatus {
  initial,
  loading,
  loaded,
  error,
}
