import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio_flutter/src/constants/constants.dart';
import 'package:portfolio_flutter/src/logic/firebase_firestore.dart';

import 'package:portfolio_flutter/src/models/page_data.dart';

import '../../models/project_data.dart';
import '../../utils/json_utils.dart';

part 'home_page_model.freezed.dart';

final homePageProvider =
    StateNotifierProvider.autoDispose<HomePageModel, HomePageState>(
  (ref) => HomePageModel(ref: ref),
);

class HomePageModel extends StateNotifier<HomePageState> {
  final AutoDisposeStateNotifierProviderRef ref;
  HomePageModel({
    required this.ref,
  }) : super(const HomePageState());
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

  setName(String name) => state = state.copyWith(name: name);
  setEmail(String name) => state = state.copyWith(email: name);
  setSubject(String name) => state = state.copyWith(subject: name);
  setDesc(String name) => state = state.copyWith(content: name);
  sendContactDetails() async {
    if (state.name.trim().isEmpty) {
      return "Please enter your name";
    }
    if (state.email.trim().isEmpty) {
      return 'Please enter email';
    }
    const emailPattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp regex = RegExp(emailPattern);
    if (!regex.hasMatch(state.email)) {
      return 'Enter a valid email address';
    }

    if (state.subject.trim().isEmpty) {
      return "Please enter subject";
    }
    if (state.content.trim().isEmpty) {
      return "Please enter message";
    }

    try {
      final data = await ref
          .read(firebaseFirestoreProvider)
          .collection('emails')
          .where('email', isEqualTo: state.email)
          .orderBy('date', descending: true)
          .limit(1)
          .get();
      if (data.docs.isNotEmpty && data.docs.first.exists) {
        final dataa = data.docs.first.data();
        final time = timestampToDateTime(dataa['date']);
        if (time != null &&
            time.compareTo(DateTime.now().subtract(const Duration(days: 1))) >
                0) {
          return "You have already sent message using this email\nYou can again contact me after 24 hours";
        }
      }
      await ref.read(firebaseFirestoreProvider).collection('emails').add({
        "name": state.name,
        "email": state.email,
        "subjet": state.subject,
        "content": state.content,
        "date": DateTime.now(),
      });
      if (mounted) {
        state = state.copyWith(
          name: "",
          email: '',
          subject: '',
          content: '',
        );
      }

      return "";
    } on FirebaseException catch (e) {
      return e.message ?? "Something Went Wrong!!!";
    } catch (e) {
      return e.toString();
    }
  }

  Future<String> fetchProjects() async {
    state =
        state.copyWith(projectStatus: ProjectStatus.loading, projectErrMsg: "");
    try {
      state = state.copyWith(
        projects: projects,
        projectErrMsg: "",
        projectStatus: ProjectStatus.loaded,
      );
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
        pageName: 'home.html',
        pageIcon: "assets/images/html.png",
      )
    ])
    List<PageData> pages,
    @Default(ProjectStatus.initial) ProjectStatus projectStatus,
    @Default(null) List<ProjectData>? projects,
    @Default("") String projectErrMsg,
    @Default("") String name,
    @Default('') String email,
    @Default('') String subject,
    @Default('') String content,
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
