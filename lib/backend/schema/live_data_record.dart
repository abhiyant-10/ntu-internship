import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LiveDataRecord extends FirestoreRecord {
  LiveDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ph" field.
  double? _ph;
  double get ph => _ph ?? 0.0;
  bool hasPh() => _ph != null;

  // "temperature" field.
  double? _temperature;
  double get temperature => _temperature ?? 0.0;
  bool hasTemperature() => _temperature != null;

  // "turbidity" field.
  double? _turbidity;
  double get turbidity => _turbidity ?? 0.0;
  bool hasTurbidity() => _turbidity != null;

  // "tds" field.
  double? _tds;
  double get tds => _tds ?? 0.0;
  bool hasTds() => _tds != null;

  // "co2" field.
  double? _co2;
  double get co2 => _co2 ?? 0.0;
  bool hasCo2() => _co2 != null;

  // "o2" field.
  double? _o2;
  double get o2 => _o2 ?? 0.0;
  bool hasO2() => _o2 != null;

  void _initializeFields() {
    _ph = castToType<double>(snapshotData['ph']);
    _temperature = castToType<double>(snapshotData['temperature']);
    _turbidity = castToType<double>(snapshotData['turbidity']);
    _tds = castToType<double>(snapshotData['tds']);
    _co2 = castToType<double>(snapshotData['co2']);
    _o2 = castToType<double>(snapshotData['o2']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('live_data');

  static Stream<LiveDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LiveDataRecord.fromSnapshot(s));

  static Future<LiveDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LiveDataRecord.fromSnapshot(s));

  static LiveDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LiveDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LiveDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LiveDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LiveDataRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createLiveDataRecordData({
  double? ph,
  double? temperature,
  double? turbidity,
  double? tds,
  double? co2,
  double? o2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ph': ph,
      'temperature': temperature,
      'turbidity': turbidity,
      'tds': tds,
      'co2': co2,
      'o2': o2,
    }.withoutNulls,
  );

  return firestoreData;
}
