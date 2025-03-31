import '../database.dart';

class TabelsTable extends SupabaseTable<TabelsRow> {
  @override
  String get tableName => 'tabels';

  @override
  TabelsRow createRow(Map<String, dynamic> data) => TabelsRow(data);
}

class TabelsRow extends SupabaseDataRow {
  TabelsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TabelsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get number => getField<String>('number');
  set number(String? value) => setField<String>('number', value);

  int? get capacity => getField<int>('Capacity');
  set capacity(int? value) => setField<int>('Capacity', value);

  bool? get available => getField<bool>('Available');
  set available(bool? value) => setField<bool>('Available', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  DateTime? get datereverse => getField<DateTime>('datereverse');
  set datereverse(DateTime? value) => setField<DateTime>('datereverse', value);
}
