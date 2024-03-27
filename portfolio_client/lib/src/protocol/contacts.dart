/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Contacts extends _i1.SerializableEntity {
  Contacts._({
    this.id,
    required this.contactId,
    required this.name,
    required this.email,
    required this.subject,
    required this.content,
    required this.contactDate,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String contactId;

  String name;

  String email;

  String subject;

  String content;

  DateTime contactDate;

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
