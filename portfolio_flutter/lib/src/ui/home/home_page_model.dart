import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_client/portfolio_client.dart';
import 'package:portfolio_flutter/main.dart';
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

  Future<String> fetchProjects() async {
    state =
        state.copyWith(projectStatus: ProjectStatus.loading, projectErrMsg: "");
    try {
      final res = await client.projects.getProjects();
      state = state.copyWith(
          projects: res,
          projectErrMsg: "",
          projectStatus: ProjectStatus.loaded);
      return "";
    } on Exception catch (e) {
      state = state.copyWith(
          projectStatus: ProjectStatus.error, projectErrMsg: e.toString());
      return e.toString();
    } catch (e) {
      state = state.copyWith(
          projectStatus: ProjectStatus.error, projectErrMsg: e.toString());
      return e.toString();
    }
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
          pageIcon: "assets/images/react.png")
    ])
    List<PageData> pages,
    @Default(null) List<Projects>? projects,
    @Default(ProjectStatus.initial) ProjectStatus projectStatus,
    @Default("") String projectErrMsg,
    @Default("1") String selectedPage,
  }) = _HomePageState;
}

enum HomePageStatus {
  initial,
  loading,
  loaded,
  error,
}

enum ProjectStatus {
  initial,
  loading,
  loaded,
  error;
  // final bool canBuildForAndroid;
}
