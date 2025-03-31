import '../database.dart';

class ProvidersTable extends SupabaseTable<ProvidersRow> {
  @override
  String get tableName => 'providers';

  @override
  ProvidersRow createRow(Map<String, dynamic> data) => ProvidersRow(data);
}

class ProvidersRow extends SupabaseDataRow {
  ProvidersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProvidersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get providername => getField<String>('providername');
  set providername(String? value) => setField<String>('providername', value);

  int? get invoicenumer => getField<int>('invoicenumer');
  set invoicenumer(int? value) => setField<int>('invoicenumer', value);

  double? get totslcost => getField<double>('totslcost');
  set totslcost(double? value) => setField<double>('totslcost', value);

  double? get remaincost => getField<double>('remaincost');
  set remaincost(double? value) => setField<double>('remaincost', value);
}
