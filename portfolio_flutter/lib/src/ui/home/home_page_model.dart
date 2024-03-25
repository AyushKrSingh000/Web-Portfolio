import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_flutter/src/models/page_data.dart';

part 'home_page_model.freezed.dart';

final homePageProvider =
    StateNotifierProvider.autoDispose<HomePageModel, HomePageState>(
  (ref) => HomePageModel(),
);

class HomePageModel extends StateNotifier<HomePageState> {
  HomePageModel() : super(const HomePageState()) {
    init();
  }
  init() {}
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
