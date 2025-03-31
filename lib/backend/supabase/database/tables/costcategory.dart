import '../database.dart';

class CostcategoryTable extends SupabaseTable<CostcategoryRow> {
  @override
  String get tableName => 'costcategory';

  @override
  CostcategoryRow createRow(Map<String, dynamic> data) => CostcategoryRow(data);
}

class CostcategoryRow extends SupabaseDataRow {
  CostcategoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CostcategoryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
