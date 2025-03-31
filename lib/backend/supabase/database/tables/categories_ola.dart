import '../database.dart';

class CategoriesOlaTable extends SupabaseTable<CategoriesOlaRow> {
  @override
  String get tableName => 'categories_ola';

  @override
  CategoriesOlaRow createRow(Map<String, dynamic> data) =>
      CategoriesOlaRow(data);
}

class CategoriesOlaRow extends SupabaseDataRow {
  CategoriesOlaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CategoriesOlaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);
}
