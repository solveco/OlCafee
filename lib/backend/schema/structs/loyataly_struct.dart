// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoyatalyStruct extends BaseStruct {
  LoyatalyStruct({
    double? points,
    double? disaccount,
  })  : _points = points,
        _disaccount = disaccount;

  // "points" field.
  double? _points;
  double get points => _points ?? 0.0;
  set points(double? val) => _points = val;

  void incrementPoints(double amount) => points = points + amount;

  bool hasPoints() => _points != null;

  // "disaccount" field.
  double? _disaccount;
  double get disaccount => _disaccount ?? 0.0;
  set disaccount(double? val) => _disaccount = val;

  void incrementDisaccount(double amount) => disaccount = disaccount + amount;

  bool hasDisaccount() => _disaccount != null;

  static LoyatalyStruct fromMap(Map<String, dynamic> data) => LoyatalyStruct(
        points: castToType<double>(data['points']),
        disaccount: castToType<double>(data['disaccount']),
      );

  static LoyatalyStruct? maybeFromMap(dynamic data) =>
      data is Map ? LoyatalyStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'points': _points,
        'disaccount': _disaccount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'points': serializeParam(
          _points,
          ParamType.double,
        ),
        'disaccount': serializeParam(
          _disaccount,
          ParamType.double,
        ),
      }.withoutNulls;

  static LoyatalyStruct fromSerializableMap(Map<String, dynamic> data) =>
      LoyatalyStruct(
        points: deserializeParam(
          data['points'],
          ParamType.double,
          false,
        ),
        disaccount: deserializeParam(
          data['disaccount'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'LoyatalyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LoyatalyStruct &&
        points == other.points &&
        disaccount == other.disaccount;
  }

  @override
  int get hashCode => const ListEquality().hash([points, disaccount]);
}

LoyatalyStruct createLoyatalyStruct({
  double? points,
  double? disaccount,
}) =>
    LoyatalyStruct(
      points: points,
      disaccount: disaccount,
    );
