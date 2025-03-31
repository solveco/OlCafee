// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// for reverse tabel
class TabelreversStruct extends BaseStruct {
  TabelreversStruct({
    String? number,
    int? capacity,
  })  : _number = number,
        _capacity = capacity;

  // "number" field.
  String? _number;
  String get number => _number ?? '';
  set number(String? val) => _number = val;

  bool hasNumber() => _number != null;

  // "capacity" field.
  int? _capacity;
  int get capacity => _capacity ?? 0;
  set capacity(int? val) => _capacity = val;

  void incrementCapacity(int amount) => capacity = capacity + amount;

  bool hasCapacity() => _capacity != null;

  static TabelreversStruct fromMap(Map<String, dynamic> data) =>
      TabelreversStruct(
        number: data['number'] as String?,
        capacity: castToType<int>(data['capacity']),
      );

  static TabelreversStruct? maybeFromMap(dynamic data) => data is Map
      ? TabelreversStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'number': _number,
        'capacity': _capacity,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'number': serializeParam(
          _number,
          ParamType.String,
        ),
        'capacity': serializeParam(
          _capacity,
          ParamType.int,
        ),
      }.withoutNulls;

  static TabelreversStruct fromSerializableMap(Map<String, dynamic> data) =>
      TabelreversStruct(
        number: deserializeParam(
          data['number'],
          ParamType.String,
          false,
        ),
        capacity: deserializeParam(
          data['capacity'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TabelreversStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TabelreversStruct &&
        number == other.number &&
        capacity == other.capacity;
  }

  @override
  int get hashCode => const ListEquality().hash([number, capacity]);
}

TabelreversStruct createTabelreversStruct({
  String? number,
  int? capacity,
}) =>
    TabelreversStruct(
      number: number,
      capacity: capacity,
    );
