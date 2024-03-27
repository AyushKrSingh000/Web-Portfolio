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

abstract class Contacts extends _i1.TableRow {
  Contacts._({
    int? id,
    required this.contactId,
    required this.name,
    required this.email,
    required this.subject,
    required this.content,
    required this.contactDate,
  }) : super(id);

  factory Contacts({
    int? id,
    required String contactId,
    required String name,
    required String email,
    required String subject,
    required String content,
    required DateTime contactDate,
  }) = _ContactsImpl;

  factory Contacts.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Contacts(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      contactId: serializationManager
          .deserialize<String>(jsonSerialization['contactId']),
      name: serializationManager.deserialize<String>(jsonSerialization['name']),
      email:
          serializationManager.deserialize<String>(jsonSerialization['email']),
      subject: serializationManager
          .deserialize<String>(jsonSerialization['subject']),
      content: serializationManager
          .deserialize<String>(jsonSerialization['content']),
      contactDate: serializationManager
          .deserialize<DateTime>(jsonSerialization['contactDate']),
    );
  }

  static final t = ContactsTable();

  static const db = ContactsRepository._();

  String contactId;

  String name;

  String email;

  String subject;

  String content;

  DateTime contactDate;

  @override
  _i1.Table get table => t;

  Contacts copyWith({
    int? id,
    String? contactId,
    String? name,
    String? email,
    String? subject,
    String? content,
    DateTime? contactDate,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'contactId': contactId,
      'name': name,
      'email': email,
      'subject': subject,
      'content': content,
      'contactDate': contactDate.toJson(),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'contactId': contactId,
      'name': name,
      'email': email,
      'subject': subject,
      'content': content,
      'contactDate': contactDate,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'contactId': contactId,
      'name': name,
      'email': email,
      'subject': subject,
      'content': content,
      'contactDate': contactDate.toJson(),
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
      case 'contactId':
        contactId = value;
        return;
      case 'name':
        name = value;
        return;
      case 'email':
        email = value;
        return;
      case 'subject':
        subject = value;
        return;
      case 'content':
        content = value;
        return;
      case 'contactDate':
        contactDate = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Contacts>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ContactsTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Contacts>(
      where: where != null ? where(Contacts.t) : null,
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
  static Future<Contacts?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ContactsTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Contacts>(
      where: where != null ? where(Contacts.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Contacts?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Contacts>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ContactsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Contacts>(
      where: where(Contacts.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Contacts row, {
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
    Contacts row, {
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
    Contacts row, {
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
    _i1.WhereExpressionBuilder<ContactsTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Contacts>(
      where: where != null ? where(Contacts.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static ContactsInclude include() {
    return ContactsInclude._();
  }

  static ContactsIncludeList includeList({
    _i1.WhereExpressionBuilder<ContactsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ContactsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ContactsTable>? orderByList,
    ContactsInclude? include,
  }) {
    return ContactsIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Contacts.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Contacts.t),
      include: include,
    );
  }
}

class _Undefined {}

class _ContactsImpl extends Contacts {
  _ContactsImpl({
    int? id,
    required String contactId,
    required String name,
    required String email,
    required String subject,
    required String content,
    required DateTime contactDate,
  }) : super._(
          id: id,
          contactId: contactId,
          name: name,
          email: email,
          subject: subject,
          content: content,
          contactDate: contactDate,
        );

  @override
  Contacts copyWith({
    Object? id = _Undefined,
    String? contactId,
    String? name,
    String? email,
    String? subject,
    String? content,
    DateTime? contactDate,
  }) {
    return Contacts(
      id: id is int? ? id : this.id,
      contactId: contactId ?? this.contactId,
      name: name ?? this.name,
      email: email ?? this.email,
      subject: subject ?? this.subject,
      content: content ?? this.content,
      contactDate: contactDate ?? this.contactDate,
    );
  }
}

class ContactsTable extends _i1.Table {
  ContactsTable({super.tableRelation}) : super(tableName: 'contacts') {
    contactId = _i1.ColumnString(
      'contactId',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
    subject = _i1.ColumnString(
      'subject',
      this,
    );
    content = _i1.ColumnString(
      'content',
      this,
    );
    contactDate = _i1.ColumnDateTime(
      'contactDate',
      this,
    );
  }

  late final _i1.ColumnString contactId;

  late final _i1.ColumnString name;

  late final _i1.ColumnString email;

  late final _i1.ColumnString subject;

  late final _i1.ColumnString content;

  late final _i1.ColumnDateTime contactDate;

  @override
  List<_i1.Column> get columns => [
        id,
        contactId,
        name,
        email,
        subject,
        content,
        contactDate,
      ];
}

@Deprecated('Use ContactsTable.t instead.')
ContactsTable tContacts = ContactsTable();

class ContactsInclude extends _i1.IncludeObject {
  ContactsInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Contacts.t;
}

class ContactsIncludeList extends _i1.IncludeList {
  ContactsIncludeList._({
    _i1.WhereExpressionBuilder<ContactsTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Contacts.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Contacts.t;
}

class ContactsRepository {
  const ContactsRepository._();

  Future<List<Contacts>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ContactsTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ContactsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ContactsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Contacts>(
      where: where?.call(Contacts.t),
      orderBy: orderBy?.call(Contacts.t),
      orderByList: orderByList?.call(Contacts.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Contacts?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ContactsTable>? where,
    int? offset,
    _i1.OrderByBuilder<ContactsTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ContactsTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Contacts>(
      where: where?.call(Contacts.t),
      orderBy: orderBy?.call(Contacts.t),
      orderByList: orderByList?.call(Contacts.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Contacts?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Contacts>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Contacts>> insert(
    _i1.Session session,
    List<Contacts> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Contacts>(
      rows,
      transaction: transaction,
    );
  }

  Future<Contacts> insertRow(
    _i1.Session session,
    Contacts row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Contacts>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Contacts>> update(
    _i1.Session session,
    List<Contacts> rows, {
    _i1.ColumnSelections<ContactsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Contacts>(
      rows,
      columns: columns?.call(Contacts.t),
      transaction: transaction,
    );
  }

  Future<Contacts> updateRow(
    _i1.Session session,
    Contacts row, {
    _i1.ColumnSelections<ContactsTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Contacts>(
      row,
      columns: columns?.call(Contacts.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Contacts> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Contacts>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Contacts row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Contacts>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ContactsTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Contacts>(
      where: where(Contacts.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ContactsTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Contacts>(
      where: where?.call(Contacts.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
