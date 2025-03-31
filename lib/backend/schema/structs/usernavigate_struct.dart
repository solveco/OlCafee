// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsernavigateStruct extends BaseStruct {
  UsernavigateStruct({
    String? role,
    String? pos,
  })  : _role = role,
        _pos = pos;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;

  bool hasRole() => _role != null;

  // "pos" field.
  String? _pos;
  String get pos => _pos ?? '';
  set pos(String? val) => _pos = val;

  bool hasPos() => _pos != null;

  static UsernavigateStruct fromMap(Map<String, dynamic> data) =>
      UsernavigateStruct(
        role: data['role'] as String?,
        pos: data['pos'] as String?,
      );

  static UsernavigateStruct? maybeFromMap(dynamic data) => data is Map
      ? UsernavigateStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'role': _role,
        'pos': _pos,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'pos': serializeParam(
          _pos,
          ParamType.String,
        ),
      }.withoutNulls;

  static UsernavigateStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsernavigateStruct(
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        pos: deserializeParam(
          data['pos'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UsernavigateStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsernavigateStruct &&
        role == other.role &&
        pos == other.pos;
  }

  @override
  int get hashCode => const ListEquality().hash([role, pos]);
}

UsernavigateStruct createUsernavigateStruct({
  String? role,
  String? pos,
}) =>
    UsernavigateStruct(
      role: role,
      pos: pos,
    );
