import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MyCollectionRecord extends FirestoreRecord {
  MyCollectionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CONDUCTIVITY" field.
  double? _conductivity;
  double get conductivity => _conductivity ?? 0.0;
  bool hasConductivity() => _conductivity != null;

  // "O2" field.
  double? _o2;
  double get o2 => _o2 ?? 0.0;
  bool hasO2() => _o2 != null;

  // "PH" field.
  double? _ph;
  double get ph => _ph ?? 0.0;
  bool hasPh() => _ph != null;

  // "TDS" field.
  double? _tds;
  double get tds => _tds ?? 0.0;
  bool hasTds() => _tds != null;

  // "TEMPERATURE" field.
  double? _temperature;
  double get temperature => _temperature ?? 0.0;
  bool hasTemperature() => _temperature != null;

  // "TURBIDITY" field.
  double? _turbidity;
  double get turbidity => _turbidity ?? 0.0;
  bool hasTurbidity() => _turbidity != null;

  // "DATE" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "TIME" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "ID" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  void _initializeFields() {
    _conductivity = castToType<double>(snapshotData['CONDUCTIVITY']);
    _o2 = castToType<double>(snapshotData['O2']);
    _ph = castToType<double>(snapshotData['PH']);
    _tds = castToType<double>(snapshotData['TDS']);
    _temperature = castToType<double>(snapshotData['TEMPERATURE']);
    _turbidity = castToType<double>(snapshotData['TURBIDITY']);
    _date = snapshotData['DATE'] as String?;
    _time = snapshotData['TIME'] as String?;
    _id = snapshotData['ID'] as int?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('my_collection');

  static Stream<MyCollectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MyCollectionRecord.fromSnapshot(s));

  static Future<MyCollectionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MyCollectionRecord.fromSnapshot(s));

  static MyCollectionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MyCollectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MyCollectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MyCollectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MyCollectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MyCollectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMyCollectionRecordData({
  double? conductivity,
  double? o2,
  double? ph,
  double? tds,
  double? temperature,
  double? turbidity,
  String? date,
  String? time,
  int? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CONDUCTIVITY': conductivity,
      'O2': o2,
      'PH': ph,
      'TDS': tds,
      'TEMPERATURE': temperature,
      'TURBIDITY': turbidity,
      'DATE': date,
      'TIME': time,
      'ID': id,
    }.withoutNulls,
  );

  return firestoreData;
}
