/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'contacts.dart' as _i2;
import 'project_list.dart' as _i3;
import 'projects.dart' as _i4;
import 'protocol.dart' as _i5;
import 'package:portfolio_client/src/protocol/projects.dart' as _i6;
export 'contacts.dart';
export 'project_list.dart';
export 'projects.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Contacts) {
      return _i2.Contacts.fromJson(data, this) as T;
    }
    if (t == _i3.ProjectList) {
      return _i3.ProjectList.fromJson(data, this) as T;
    }
    if (t == _i4.Projects) {
      return _i4.Projects.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Contacts?>()) {
      return (data != null ? _i2.Contacts.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.ProjectList?>()) {
      return (data != null ? _i3.ProjectList.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Projects?>()) {
      return (data != null ? _i4.Projects.fromJson(data, this) : null) as T;
    }
    if (t == List<_i5.Projects>) {
      return (data as List).map((e) => deserialize<_i5.Projects>(e)).toList()
          as dynamic;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList()
          as dynamic;
    }
    if (t == List<_i6.Projects>) {
      return (data as List).map((e) => deserialize<_i6.Projects>(e)).toList()
          as dynamic;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    if (data is _i2.Contacts) {
      return 'Contacts';
    }
    if (data is _i3.ProjectList) {
      return 'ProjectList';
    }
    if (data is _i4.Projects) {
      return 'Projects';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'] == 'Contacts') {
      return deserialize<_i2.Contacts>(data['data']);
    }
    if (data['className'] == 'ProjectList') {
      return deserialize<_i3.ProjectList>(data['data']);
    }
    if (data['className'] == 'Projects') {
      return deserialize<_i4.Projects>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
