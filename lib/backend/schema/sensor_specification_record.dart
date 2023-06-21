import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SensorSpecificationRecord extends FirestoreRecord {
  SensorSpecificationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Spec_value" field.
  String? _specValue;
  String get specValue => _specValue ?? '';
  bool hasSpecValue() => _specValue != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _specValue = snapshotData['Spec_value'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sensor_specification');

  static Stream<SensorSpecificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SensorSpecificationRecord.fromSnapshot(s));

  static Future<SensorSpecificationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SensorSpecificationRecord.fromSnapshot(s));

  static SensorSpecificationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SensorSpecificationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SensorSpecificationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SensorSpecificationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SensorSpecificationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SensorSpecificationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSensorSpecificationRecordData({
  String? name,
  String? specValue,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'Spec_value': specValue,
    }.withoutNulls,
  );

  return firestoreData;
}
