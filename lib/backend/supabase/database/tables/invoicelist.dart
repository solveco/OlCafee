import '../database.dart';

class InvoicelistTable extends SupabaseTable<InvoicelistRow> {
  @override
  String get tableName => 'invoicelist';

  @override
  InvoicelistRow createRow(Map<String, dynamic> data) => InvoicelistRow(data);
}

class InvoicelistRow extends SupabaseDataRow {
  InvoicelistRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InvoicelistTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get invoice => getField<String>('invoice');
  set invoice(String? value) => setField<String>('invoice', value);

  double? get total => getField<double>('total');
  set total(double? value) => setField<double>('total', value);

  String? get tabelnumber => getField<String>('tabelnumber');
  set tabelnumber(String? value) => setField<String>('tabelnumber', value);

  String? get userid => getField<String>('userid');
  set userid(String? value) => setField<String>('userid', value);
}
