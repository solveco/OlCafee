import '../database.dart';

class AdtabelTable extends SupabaseTable<AdtabelRow> {
  @override
  String get tableName => 'adtabel';

  @override
  AdtabelRow createRow(Map<String, dynamic> data) => AdtabelRow(data);
}

class AdtabelRow extends SupabaseDataRow {
  AdtabelRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AdtabelTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);
}
