// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_data_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LiveDataRecord> _$liveDataRecordSerializer =
    new _$LiveDataRecordSerializer();

class _$LiveDataRecordSerializer
    implements StructuredSerializer<LiveDataRecord> {
  @override
  final Iterable<Type> types = const [LiveDataRecord, _$LiveDataRecord];
  @override
  final String wireName = 'LiveDataRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LiveDataRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.ph;
    if (value != null) {
      result
        ..add('ph')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.temperature;
    if (value != null) {
      result
        ..add('temperature')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.turbidity;
    if (value != null) {
      result
        ..add('turbidity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.tds;
    if (value != null) {
      result
        ..add('tds')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.co2;
    if (value != null) {
      result
        ..add('co2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.o2;
    if (value != null) {
      result
        ..add('o2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  LiveDataRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LiveDataRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ph':
          result.ph = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'temperature':
          result.temperature = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'turbidity':
          result.turbidity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'tds':
          result.tds = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'co2':
          result.co2 = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'o2':
          result.o2 = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$LiveDataRecord extends LiveDataRecord {
  @override
  final double? ph;
  @override
  final double? temperature;
  @override
  final double? turbidity;
  @override
  final double? tds;
  @override
  final double? co2;
  @override
  final double? o2;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LiveDataRecord([void Function(LiveDataRecordBuilder)? updates]) =>
      (new LiveDataRecordBuilder()..update(updates))._build();

  _$LiveDataRecord._(
      {this.ph,
      this.temperature,
      this.turbidity,
      this.tds,
      this.co2,
      this.o2,
      this.ffRef})
      : super._();

  @override
  LiveDataRecord rebuild(void Function(LiveDataRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LiveDataRecordBuilder toBuilder() =>
      new LiveDataRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LiveDataRecord &&
        ph == other.ph &&
        temperature == other.temperature &&
        turbidity == other.turbidity &&
        tds == other.tds &&
        co2 == other.co2 &&
        o2 == other.o2 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ph.hashCode);
    _$hash = $jc(_$hash, temperature.hashCode);
    _$hash = $jc(_$hash, turbidity.hashCode);
    _$hash = $jc(_$hash, tds.hashCode);
    _$hash = $jc(_$hash, co2.hashCode);
    _$hash = $jc(_$hash, o2.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LiveDataRecord')
          ..add('ph', ph)
          ..add('temperature', temperature)
          ..add('turbidity', turbidity)
          ..add('tds', tds)
          ..add('co2', co2)
          ..add('o2', o2)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LiveDataRecordBuilder
    implements Builder<LiveDataRecord, LiveDataRecordBuilder> {
  _$LiveDataRecord? _$v;

  double? _ph;
  double? get ph => _$this._ph;
  set ph(double? ph) => _$this._ph = ph;

  double? _temperature;
  double? get temperature => _$this._temperature;
  set temperature(double? temperature) => _$this._temperature = temperature;

  double? _turbidity;
  double? get turbidity => _$this._turbidity;
  set turbidity(double? turbidity) => _$this._turbidity = turbidity;

  double? _tds;
  double? get tds => _$this._tds;
  set tds(double? tds) => _$this._tds = tds;

  double? _co2;
  double? get co2 => _$this._co2;
  set co2(double? co2) => _$this._co2 = co2;

  double? _o2;
  double? get o2 => _$this._o2;
  set o2(double? o2) => _$this._o2 = o2;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LiveDataRecordBuilder() {
    LiveDataRecord._initializeBuilder(this);
  }

  LiveDataRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ph = $v.ph;
      _temperature = $v.temperature;
      _turbidity = $v.turbidity;
      _tds = $v.tds;
      _co2 = $v.co2;
      _o2 = $v.o2;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LiveDataRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LiveDataRecord;
  }

  @override
  void update(void Function(LiveDataRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LiveDataRecord build() => _build();

  _$LiveDataRecord _build() {
    final _$result = _$v ??
        new _$LiveDataRecord._(
            ph: ph,
            temperature: temperature,
            turbidity: turbidity,
            tds: tds,
            co2: co2,
            o2: o2,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
