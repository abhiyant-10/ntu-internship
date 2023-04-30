import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'live_data_record.g.dart';

abstract class LiveDataRecord
    implements Built<LiveDataRecord, LiveDataRecordBuilder> {
  static Serializer<LiveDataRecord> get serializer =>
      _$liveDataRecordSerializer;

  double? get ph;

  double? get temperature;

  double? get turbidity;

  double? get tds;

  double? get co2;

  double? get o2;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LiveDataRecordBuilder builder) => builder
    ..ph = 0.0
    ..temperature = 0.0
    ..turbidity = 0.0
    ..tds = 0.0
    ..co2 = 0.0
    ..o2 = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('live_data');

  static Stream<LiveDataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LiveDataRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LiveDataRecord._();
  factory LiveDataRecord([void Function(LiveDataRecordBuilder) updates]) =
      _$LiveDataRecord;

  static LiveDataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLiveDataRecordData({
  double? ph,
  double? temperature,
  double? turbidity,
  double? tds,
  double? co2,
  double? o2,
}) {
  final firestoreData = serializers.toFirestore(
    LiveDataRecord.serializer,
    LiveDataRecord(
      (l) => l
        ..ph = ph
        ..temperature = temperature
        ..turbidity = turbidity
        ..tds = tds
        ..co2 = co2
        ..o2 = o2,
    ),
  );

  return firestoreData;
}
