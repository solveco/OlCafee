import '../database.dart';

class ReservetabelTable extends SupabaseTable<ReservetabelRow> {
  @override
  String get tableName => 'reservetabel';

  @override
  ReservetabelRow createRow(Map<String, dynamic> data) => ReservetabelRow(data);
}

class ReservetabelRow extends SupabaseDataRow {
  ReservetabelRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReservetabelTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get tabelnumber => getField<String>('tabelnumber');
  set tabelnumber(String? value) => setField<String>('tabelnumber', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  int? get numberofpeople => getField<int>('numberofpeople');
  set numberofpeople(int? value) => setField<int>('numberofpeople', value);

  DateTime? get datereserve => getField<DateTime>('datereserve');
  set datereserve(DateTime? value) => setField<DateTime>('datereserve', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int? get phone => getField<int>('phone');
  set phone(int? value) => setField<int>('phone', value);

  String? get userid => getField<String>('userid');
  set userid(String? value) => setField<String>('userid', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  bool? get confirm => getField<bool>('confirm');
  set confirm(bool? value) => setField<bool>('confirm', value);

  PostgresTime? get timereverse => getField<PostgresTime>('timereverse');
  set timereverse(PostgresTime? value) =>
      setField<PostgresTime>('timereverse', value);

  String? get revesretype => getField<String>('revesretype');
  set revesretype(String? value) => setField<String>('revesretype', value);

  bool? get opentabel => getField<bool>('opentabel');
  set opentabel(bool? value) => setField<bool>('opentabel', value);
}
