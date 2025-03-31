// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DisaccountinvoiceStruct extends BaseStruct {
  DisaccountinvoiceStruct({
    double? loyatalypointsvalue,
    double? additionaldisaccount,

    /// total invoice with loyalty disaccount
    double? totalinvoice,
  })  : _loyatalypointsvalue = loyatalypointsvalue,
        _additionaldisaccount = additionaldisaccount,
        _totalinvoice = totalinvoice;

  // "loyatalypointsvalue" field.
  double? _loyatalypointsvalue;
  double get loyatalypointsvalue => _loyatalypointsvalue ?? 0.0;
  set loyatalypointsvalue(double? val) => _loyatalypointsvalue = val;

  void incrementLoyatalypointsvalue(double amount) =>
      loyatalypointsvalue = loyatalypointsvalue + amount;

  bool hasLoyatalypointsvalue() => _loyatalypointsvalue != null;

  // "additionaldisaccount" field.
  double? _additionaldisaccount;
  double get additionaldisaccount => _additionaldisaccount ?? 0.0;
  set additionaldisaccount(double? val) => _additionaldisaccount = val;

  void incrementAdditionaldisaccount(double amount) =>
      additionaldisaccount = additionaldisaccount + amount;

  bool hasAdditionaldisaccount() => _additionaldisaccount != null;

  // "totalinvoice" field.
  double? _totalinvoice;
  double get totalinvoice => _totalinvoice ?? 0.0;
  set totalinvoice(double? val) => _totalinvoice = val;

  void incrementTotalinvoice(double amount) =>
      totalinvoice = totalinvoice + amount;

  bool hasTotalinvoice() => _totalinvoice != null;

  static DisaccountinvoiceStruct fromMap(Map<String, dynamic> data) =>
      DisaccountinvoiceStruct(
        loyatalypointsvalue: castToType<double>(data['loyatalypointsvalue']),
        additionaldisaccount: castToType<double>(data['additionaldisaccount']),
        totalinvoice: castToType<double>(data['totalinvoice']),
      );

  static DisaccountinvoiceStruct? maybeFromMap(dynamic data) => data is Map
      ? DisaccountinvoiceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'loyatalypointsvalue': _loyatalypointsvalue,
        'additionaldisaccount': _additionaldisaccount,
        'totalinvoice': _totalinvoice,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'loyatalypointsvalue': serializeParam(
          _loyatalypointsvalue,
          ParamType.double,
        ),
        'additionaldisaccount': serializeParam(
          _additionaldisaccount,
          ParamType.double,
        ),
        'totalinvoice': serializeParam(
          _totalinvoice,
          ParamType.double,
        ),
      }.withoutNulls;

  static DisaccountinvoiceStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DisaccountinvoiceStruct(
        loyatalypointsvalue: deserializeParam(
          data['loyatalypointsvalue'],
          ParamType.double,
          false,
        ),
        additionaldisaccount: deserializeParam(
          data['additionaldisaccount'],
          ParamType.double,
          false,
        ),
        totalinvoice: deserializeParam(
          data['totalinvoice'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'DisaccountinvoiceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DisaccountinvoiceStruct &&
        loyatalypointsvalue == other.loyatalypointsvalue &&
        additionaldisaccount == other.additionaldisaccount &&
        totalinvoice == other.totalinvoice;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([loyatalypointsvalue, additionaldisaccount, totalinvoice]);
}

DisaccountinvoiceStruct createDisaccountinvoiceStruct({
  double? loyatalypointsvalue,
  double? additionaldisaccount,
  double? totalinvoice,
}) =>
    DisaccountinvoiceStruct(
      loyatalypointsvalue: loyatalypointsvalue,
      additionaldisaccount: additionaldisaccount,
      totalinvoice: totalinvoice,
    );
