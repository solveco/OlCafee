import '../database.dart';

class OltabelsTable extends SupabaseTable<OltabelsRow> {
  @override
  String get tableName => 'oltabels';

  @override
  OltabelsRow createRow(Map<String, dynamic> data) => OltabelsRow(data);
}

class OltabelsRow extends SupabaseDataRow {
  OltabelsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OltabelsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get tabelnumber => getField<String>('tabelnumber');
  set tabelnumber(String? value) => setField<String>('tabelnumber', value);
}
