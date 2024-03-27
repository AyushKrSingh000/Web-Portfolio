/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class ProjectList extends _i1.SerializableEntity {
  ProjectList._({required this.projects});

  factory ProjectList({required List<_i2.Projects> projects}) =
      _ProjectListImpl;

  factory ProjectList.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ProjectList(
        projects: serializationManager
            .deserialize<List<_i2.Projects>>(jsonSerialization['projects']));
  }

  List<_i2.Projects> projects;

  ProjectList copyWith({List<_i2.Projects>? projects});
  @override
  Map<String, dynamic> toJson() {
    return {'projects': projects.toJson(valueToJson: (v) => v.toJson())};
  }

  @override
  Map<String, dynamic> allToJson() {
    return {'projects': projects.toJson(valueToJson: (v) => v.allToJson())};
  }
}

class _ProjectListImpl extends ProjectList {
  _ProjectListImpl({required List<_i2.Projects> projects})
      : super._(projects: projects);

  @override
  ProjectList copyWith({List<_i2.Projects>? projects}) {
    return ProjectList(projects: projects ?? this.projects.clone());
  }
}
