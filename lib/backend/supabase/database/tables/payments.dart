import '../database.dart';

class PaymentsTable extends SupabaseTable<PaymentsRow> {
  @override
  String get tableName => 'payments';

  @override
  PaymentsRow createRow(Map<String, dynamic> data) => PaymentsRow(data);
}

class PaymentsRow extends SupabaseDataRow {
  PaymentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PaymentsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get providername => getField<String>('providername');
  set providername(String? value) => setField<String>('providername', value);

  int? get invoicenumber => getField<int>('invoicenumber');
  set invoicenumber(int? value) => setField<int>('invoicenumber', value);

  double? get payment => getField<double>('payment');
  set payment(double? value) => setField<double>('payment', value);
}
