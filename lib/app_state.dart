import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _Sensor1prec = prefs.getString('ff_Sensor1prec') ?? _Sensor1prec;
    });
    _safeInit(() {
      _Sensor2prec = prefs.getString('ff_Sensor2prec') ?? _Sensor2prec;
    });
    _safeInit(() {
      _Sensor3prec = prefs.getString('ff_Sensor3prec') ?? _Sensor3prec;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _Sensor1prec = '';
  String get Sensor1prec => _Sensor1prec;
  set Sensor1prec(String _value) {
    _Sensor1prec = _value;
    prefs.setString('ff_Sensor1prec', _value);
  }

  String _Sensor2prec = '';
  String get Sensor2prec => _Sensor2prec;
  set Sensor2prec(String _value) {
    _Sensor2prec = _value;
    prefs.setString('ff_Sensor2prec', _value);
  }

  String _Sensor3prec = '';
  String get Sensor3prec => _Sensor3prec;
  set Sensor3prec(String _value) {
    _Sensor3prec = _value;
    prefs.setString('ff_Sensor3prec', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
