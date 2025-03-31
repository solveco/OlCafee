import '../database.dart';

class TaxTable extends SupabaseTable<TaxRow> {
  @override
  String get tableName => 'tax';

  @override
  TaxRow createRow(Map<String, dynamic> data) => TaxRow(data);
}

class TaxRow extends SupabaseDataRow {
  TaxRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaxTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nameoftax => getField<String>('nameoftax');
  set nameoftax(String? value) => setField<String>('nameoftax', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  double? get prcentage => getField<double>('prcentage');
  set prcentage(double? value) => setField<double>('prcentage', value);
}
