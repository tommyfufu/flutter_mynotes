import 'package:flutter/material.dart';
import 'package:mynotes/services/cloud/cloud_storage_constants.dart';
import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

@immutable
class CloudNote {
  final String documnetId;
  final String ownerUserId;
  final String text;
  const CloudNote({
    required this.documnetId,
    required this.ownerUserId,
    required this.text,
  });

  CloudNote.fromSnapshot(QueryDocumentSnapshot<Map<String, dynamic>> snapshot)
      : documnetId = snapshot.id,
        ownerUserId = snapshot.data()[ownerUserIdFieldName],
        text = snapshot.data()[textFieldName] as String;
}
