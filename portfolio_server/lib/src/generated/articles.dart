/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Projects extends _i1.TableRow {
  Projects._({
    int? id,
    required this.projectName,
    required this.desc,
    required this.imageUrl,
    required this.techStacks,
    required this.sourceCode,
    required this.liveDemo,
    required this.isPublic,
  }) : super(id);

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

  static final t = ProjectsTable();

  static const db = ProjectsRepository._();

  String projectName;

  String desc;

  String imageUrl;

  List<String> techStacks;

  String sourceCode;

  String liveDemo;

  bool isPublic;

  @override
  _i1.Table get table => t;

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

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'projectName': projectName,
      'desc': desc,
      'imageUrl': imageUrl,
      'techStacks': techStacks,
      'sourceCode': sourceCode,
      'liveDemo': liveDemo,
      'isPublic': isPublic,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
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

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'projectName':
        projectName = value;
        return;
      case 'desc':
        desc = value;
        return;
      case 'imageUrl':
        imageUrl = value;
        return;
      case 'techStacks':
        techStacks = value;
        return;
      case 'sourceCode':
        sourceCode = value;
        return;
      case 'liveDemo':
        liveDemo = value;
        return;
      case 'isPublic':
        isPublic = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Projects>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProjectsTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Projects>(
      where: where != null ? where(Projects.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Projects?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProjectsTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Projects>(
      where: where != null ? where(Projects.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Projects?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Projects>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ProjectsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Projects>(
      where: where(Projects.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Projects row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Projects row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Projects row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProjectsTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Projects>(
      where: where != null ? where(Projects.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ProjectsInclude include() {
    return ProjectsInclude._();
  }

  static ProjectsIncludeList includeList({
    _i1.WhereExpressionBuilder<ProjectsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProjectsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProjectsTable>? orderByList,
    ProjectsInclude? include,
  }) {
    return ProjectsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Projects.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Projects.t),
      include: include,
    );
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

class ProjectsTable extends _i1.Table {
  ProjectsTable({super.tableRelation}) : super(tableName: 'projects') {
    projectName = _i1.ColumnString(
      'projectName',
      this,
    );
    desc = _i1.ColumnString(
      'desc',
      this,
    );
    imageUrl = _i1.ColumnString(
      'imageUrl',
      this,
    );
    techStacks = _i1.ColumnSerializable(
      'techStacks',
      this,
    );
    sourceCode = _i1.ColumnString(
      'sourceCode',
      this,
    );
    liveDemo = _i1.ColumnString(
      'liveDemo',
      this,
    );
    isPublic = _i1.ColumnBool(
      'isPublic',
      this,
    );
  }

  late final _i1.ColumnString projectName;

  late final _i1.ColumnString desc;

  late final _i1.ColumnString imageUrl;

  late final _i1.ColumnSerializable techStacks;

  late final _i1.ColumnString sourceCode;

  late final _i1.ColumnString liveDemo;

  late final _i1.ColumnBool isPublic;

  @override
  List<_i1.Column> get columns => [
        id,
        projectName,
        desc,
        imageUrl,
        techStacks,
        sourceCode,
        liveDemo,
        isPublic,
      ];
}

@Deprecated('Use ProjectsTable.t instead.')
ProjectsTable tProjects = ProjectsTable();

class ProjectsInclude extends _i1.IncludeObject {
  ProjectsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Projects.t;
}

class ProjectsIncludeList extends _i1.IncludeList {
  ProjectsIncludeList._({
    _i1.WhereExpressionBuilder<ProjectsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Projects.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Projects.t;
}

class ProjectsRepository {
  const ProjectsRepository._();

  Future<List<Projects>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProjectsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ProjectsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProjectsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Projects>(
      where: where?.call(Projects.t),
      orderBy: orderBy?.call(Projects.t),
      orderByList: orderByList?.call(Projects.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Projects?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProjectsTable>? where,
    int? offset,
    _i1.OrderByBuilder<ProjectsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ProjectsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Projects>(
      where: where?.call(Projects.t),
      orderBy: orderBy?.call(Projects.t),
      orderByList: orderByList?.call(Projects.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Projects?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Projects>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Projects>> insert(
    _i1.Session session,
    List<Projects> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Projects>(
      rows,
      transaction: transaction,
    );
  }

  Future<Projects> insertRow(
    _i1.Session session,
    Projects row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Projects>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Projects>> update(
    _i1.Session session,
    List<Projects> rows, {
    _i1.ColumnSelections<ProjectsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Projects>(
      rows,
      columns: columns?.call(Projects.t),
      transaction: transaction,
    );
  }

  Future<Projects> updateRow(
    _i1.Session session,
    Projects row, {
    _i1.ColumnSelections<ProjectsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Projects>(
      row,
      columns: columns?.call(Projects.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Projects> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Projects>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Projects row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Projects>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ProjectsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Projects>(
      where: where(Projects.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ProjectsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Projects>(
      where: where?.call(Projects.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
