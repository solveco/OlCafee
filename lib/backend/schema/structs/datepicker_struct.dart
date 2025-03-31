// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DatepickerStruct extends BaseStruct {
  DatepickerStruct({
    DateTime? datefrom,
    DateTime? dateto,
    String? category,
    String? oreder,
  })  : _datefrom = datefrom,
        _dateto = dateto,
        _category = category,
        _oreder = oreder;

  // "datefrom" field.
  DateTime? _datefrom;
  DateTime? get datefrom => _datefrom;
  set datefrom(DateTime? val) => _datefrom = val;

  bool hasDatefrom() => _datefrom != null;

  // "dateto" field.
  DateTime? _dateto;
  DateTime? get dateto => _dateto;
  set dateto(DateTime? val) => _dateto = val;

  bool hasDateto() => _dateto != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "oreder" field.
  String? _oreder;
  String get oreder => _oreder ?? '';
  set oreder(String? val) => _oreder = val;

  bool hasOreder() => _oreder != null;

  static DatepickerStruct fromMap(Map<String, dynamic> data) =>
      DatepickerStruct(
        datefrom: data['datefrom'] as DateTime?,
        dateto: data['dateto'] as DateTime?,
        category: data['category'] as String?,
        oreder: data['oreder'] as String?,
      );

  static DatepickerStruct? maybeFromMap(dynamic data) => data is Map
      ? DatepickerStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'datefrom': _datefrom,
        'dateto': _dateto,
        'category': _category,
        'oreder': _oreder,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'datefrom': serializeParam(
          _datefrom,
          ParamType.DateTime,
        ),
        'dateto': serializeParam(
          _dateto,
          ParamType.DateTime,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'oreder': serializeParam(
          _oreder,
          ParamType.String,
        ),
      }.withoutNulls;

  static DatepickerStruct fromSerializableMap(Map<String, dynamic> data) =>
      DatepickerStruct(
        datefrom: deserializeParam(
          data['datefrom'],
          ParamType.DateTime,
          false,
        ),
        dateto: deserializeParam(
          data['dateto'],
          ParamType.DateTime,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        oreder: deserializeParam(
          data['oreder'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DatepickerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DatepickerStruct &&
        datefrom == other.datefrom &&
        dateto == other.dateto &&
        category == other.category &&
        oreder == other.oreder;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([datefrom, dateto, category, oreder]);
}

DatepickerStruct createDatepickerStruct({
  DateTime? datefrom,
  DateTime? dateto,
  String? category,
  String? oreder,
}) =>
    DatepickerStruct(
      datefrom: datefrom,
      dateto: dateto,
      category: category,
      oreder: oreder,
    );
