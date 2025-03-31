import '../database.dart';

class CostTable extends SupabaseTable<CostRow> {
  @override
  String get tableName => 'cost';

  @override
  CostRow createRow(Map<String, dynamic> data) => CostRow(data);
}

class CostRow extends SupabaseDataRow {
  CostRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CostTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  double? get totalprice => getField<double>('totalprice');
  set totalprice(double? value) => setField<double>('totalprice', value);

  String? get userid => getField<String>('userid');
  set userid(String? value) => setField<String>('userid', value);

  String? get provider => getField<String>('provider');
  set provider(String? value) => setField<String>('provider', value);

  int? get invoicenumber => getField<int>('invoicenumber');
  set invoicenumber(int? value) => setField<int>('invoicenumber', value);

  DateTime? get datetopaid => getField<DateTime>('datetopaid');
  set datetopaid(DateTime? value) => setField<DateTime>('datetopaid', value);

  DateTime? get invoicedate => getField<DateTime>('invoicedate');
  set invoicedate(DateTime? value) => setField<DateTime>('invoicedate', value);

  String? get phonenumber => getField<String>('phonenumber');
  set phonenumber(String? value) => setField<String>('phonenumber', value);
}
