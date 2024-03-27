// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomePageState {
  HomePageStatus get status => throw _privateConstructorUsedError;
  List<PageData> get pages => throw _privateConstructorUsedError;
  List<Projects>? get projects => throw _privateConstructorUsedError;
  ProjectStatus get projectStatus => throw _privateConstructorUsedError;
  String get projectErrMsg => throw _privateConstructorUsedError;
  String get selectedPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res, HomePageState>;
  @useResult
  $Res call(
      {HomePageStatus status,
      List<PageData> pages,
      List<Projects>? projects,
      ProjectStatus projectStatus,
      String projectErrMsg,
      String selectedPage});
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res, $Val extends HomePageState>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? pages = null,
    Object? projects = freezed,
    Object? projectStatus = null,
    Object? projectErrMsg = null,
    Object? selectedPage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomePageStatus,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<PageData>,
      projects: freezed == projects
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Projects>?,
      projectStatus: null == projectStatus
          ? _value.projectStatus
          : projectStatus // ignore: cast_nullable_to_non_nullable
              as ProjectStatus,
      projectErrMsg: null == projectErrMsg
          ? _value.projectErrMsg
          : projectErrMsg // ignore: cast_nullable_to_non_nullable
              as String,
      selectedPage: null == selectedPage
          ? _value.selectedPage
          : selectedPage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomePageStateImplCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$HomePageStateImplCopyWith(
          _$HomePageStateImpl value, $Res Function(_$HomePageStateImpl) then) =
      __$$HomePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HomePageStatus status,
      List<PageData> pages,
      List<Projects>? projects,
      ProjectStatus projectStatus,
      String projectErrMsg,
      String selectedPage});
}

/// @nodoc
class __$$HomePageStateImplCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$HomePageStateImpl>
    implements _$$HomePageStateImplCopyWith<$Res> {
  __$$HomePageStateImplCopyWithImpl(
      _$HomePageStateImpl _value, $Res Function(_$HomePageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? pages = null,
    Object? projects = freezed,
    Object? projectStatus = null,
    Object? projectErrMsg = null,
    Object? selectedPage = null,
  }) {
    return _then(_$HomePageStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomePageStatus,
      pages: null == pages
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<PageData>,
      projects: freezed == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Projects>?,
      projectStatus: null == projectStatus
          ? _value.projectStatus
          : projectStatus // ignore: cast_nullable_to_non_nullable
              as ProjectStatus,
      projectErrMsg: null == projectErrMsg
          ? _value.projectErrMsg
          : projectErrMsg // ignore: cast_nullable_to_non_nullable
              as String,
      selectedPage: null == selectedPage
          ? _value.selectedPage
          : selectedPage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomePageStateImpl implements _HomePageState {
  const _$HomePageStateImpl(
      {this.status = HomePageStatus.initial,
      final List<PageData> pages = const [
        PageData(
            pageId: "1",
            pageName: 'home.jsx',
            pageIcon: "assets/images/react.png")
      ],
      final List<Projects>? projects = null,
      this.projectStatus = ProjectStatus.initial,
      this.projectErrMsg = "",
      this.selectedPage = "1"})
      : _pages = pages,
        _projects = projects;

  @override
  @JsonKey()
  final HomePageStatus status;
  final List<PageData> _pages;
  @override
  @JsonKey()
  List<PageData> get pages {
    if (_pages is EqualUnmodifiableListView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pages);
  }

  final List<Projects>? _projects;
  @override
  @JsonKey()
  List<Projects>? get projects {
    final value = _projects;
    if (value == null) return null;
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final ProjectStatus projectStatus;
  @override
  @JsonKey()
  final String projectErrMsg;
  @override
  @JsonKey()
  final String selectedPage;

  @override
  String toString() {
    return 'HomePageState(status: $status, pages: $pages, projects: $projects, projectStatus: $projectStatus, projectErrMsg: $projectErrMsg, selectedPage: $selectedPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._pages, _pages) &&
            const DeepCollectionEquality().equals(other._projects, _projects) &&
            (identical(other.projectStatus, projectStatus) ||
                other.projectStatus == projectStatus) &&
            (identical(other.projectErrMsg, projectErrMsg) ||
                other.projectErrMsg == projectErrMsg) &&
            (identical(other.selectedPage, selectedPage) ||
                other.selectedPage == selectedPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_pages),
      const DeepCollectionEquality().hash(_projects),
      projectStatus,
      projectErrMsg,
      selectedPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      __$$HomePageStateImplCopyWithImpl<_$HomePageStateImpl>(this, _$identity);
}

abstract class _HomePageState implements HomePageState {
  const factory _HomePageState(
      {final HomePageStatus status,
      final List<PageData> pages,
      final List<Projects>? projects,
      final ProjectStatus projectStatus,
      final String projectErrMsg,
      final String selectedPage}) = _$HomePageStateImpl;

  @override
  HomePageStatus get status;
  @override
  List<PageData> get pages;
  @override
  List<Projects>? get projects;
  @override
  ProjectStatus get projectStatus;
  @override
  String get projectErrMsg;
  @override
  String get selectedPage;
  @override
  @JsonKey(ignore: true)
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
