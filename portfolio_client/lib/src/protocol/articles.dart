/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Projects extends _i1.SerializableEntity {
  Projects._({
    this.id,
    required this.projectName,
    required this.desc,
    required this.imageUrl,
    required this.techStacks,
    required this.sourceCode,
    required this.liveDemo,
    required this.isPublic,
  });

  factory Projects({
    int? id,
    required String projectName,
    required String desc,
    required String imageUrl,
    required List<String> techStacks,
    required String sourceCode,
    required String liveDemo,
    required bool isPublic,
  }) = _ProjectsImpl;

  factory Projects.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Projects(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      projectName: serializationManager
          .deserialize<String>(jsonSerialization['projectName']),
      desc: serializationManager.deserialize<String>(jsonSerialization['desc']),
      imageUrl: serializationManager
          .deserialize<String>(jsonSerialization['imageUrl']),
      techStacks: serializationManager
          .deserialize<List<String>>(jsonSerialization['techStacks']),
      sourceCode: serializationManager
          .deserialize<String>(jsonSerialization['sourceCode']),
      liveDemo: serializationManager
          .deserialize<String>(jsonSerialization['liveDemo']),
      isPublic:
          serializationManager.deserialize<bool>(jsonSerialization['isPublic']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String projectName;

  String desc;

  String imageUrl;

  List<String> techStacks;

  String sourceCode;

  String liveDemo;

  bool isPublic;

  Projects copyWith({
    int? id,
    String? projectName,
    String? desc,
    String? imageUrl,
    List<String>? techStacks,
    String? sourceCode,
    String? liveDemo,
    bool? isPublic,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'projectName': projectName,
      'desc': desc,
      'imageUrl': imageUrl,
      'techStacks': techStacks.toJson(),
      'sourceCode': sourceCode,
      'liveDemo': liveDemo,
      'isPublic': isPublic,
    };
  }
}

class _Undefined {}

class _ProjectsImpl extends Projects {
  _ProjectsImpl({
    int? id,
    required String projectName,
    required String desc,
    required String imageUrl,
    required List<String> techStacks,
    required String sourceCode,
    required String liveDemo,
    required bool isPublic,
  }) : super._(
          id: id,
          projectName: projectName,
          desc: desc,
          imageUrl: imageUrl,
          techStacks: techStacks,
          sourceCode: sourceCode,
          liveDemo: liveDemo,
          isPublic: isPublic,
        );

  @override
  Projects copyWith({
    Object? id = _Undefined,
    String? projectName,
    String? desc,
    String? imageUrl,
    List<String>? techStacks,
    String? sourceCode,
    String? liveDemo,
    bool? isPublic,
  }) {
    return Projects(
      id: id is int? ? id : this.id,
      projectName: projectName ?? this.projectName,
      desc: desc ?? this.desc,
      imageUrl: imageUrl ?? this.imageUrl,
      techStacks: techStacks ?? this.techStacks.clone(),
      sourceCode: sourceCode ?? this.sourceCode,
      liveDemo: liveDemo ?? this.liveDemo,
      isPublic: isPublic ?? this.isPublic,
    );
  }
}
