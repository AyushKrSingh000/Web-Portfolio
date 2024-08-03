import 'package:cloud_firestore/cloud_firestore.dart';

dateTimeToIso8601DateString(DateTime value) => value.toIso8601String();

iso8601StringToDateTime(String value) => DateTime.parse(value);

DateTime? timestampToDateTime(Timestamp? timestamp) => timestamp == null
    ? null
    : DateTime.fromMillisecondsSinceEpoch(timestamp.millisecondsSinceEpoch);

Timestamp? dateTimeToTimestamp(DateTime? dateTime) =>
    dateTime == null ? null : Timestamp.fromDate(dateTime);
