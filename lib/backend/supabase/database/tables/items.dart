import '../database.dart';

class ItemsTable extends SupabaseTable<ItemsRow> {
  @override
  String get tableName => 'items';

  @override
  ItemsRow createRow(Map<String, dynamic> data) => ItemsRow(data);
}

class ItemsRow extends SupabaseDataRow {
  ItemsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ItemsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get categories => getField<String>('categories');
  set categories(String? value) => setField<String>('categories', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  int? get nooforder => getField<int>('nooforder');
  set nooforder(int? value) => setField<int>('nooforder', value);

  String? get currency => getField<String>('currency');
  set currency(String? value) => setField<String>('currency', value);

  bool? get available => getField<bool>('available');
  set available(bool? value) => setField<bool>('available', value);
}
