import '../database.dart';

class OrderOlaTable extends SupabaseTable<OrderOlaRow> {
  @override
  String get tableName => 'order_ola';

  @override
  OrderOlaRow createRow(Map<String, dynamic> data) => OrderOlaRow(data);
}

class OrderOlaRow extends SupabaseDataRow {
  OrderOlaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrderOlaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  String? get currency => getField<String>('currency');
  set currency(String? value) => setField<String>('currency', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get tabelnumber => getField<String>('tabelnumber');
  set tabelnumber(String? value) => setField<String>('tabelnumber', value);

  String? get addons => getField<String>('addons');
  set addons(String? value) => setField<String>('addons', value);

  double? get disaccount => getField<double>('disaccount');
  set disaccount(double? value) => setField<double>('disaccount', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  bool? get approved => getField<bool>('approved');
  set approved(bool? value) => setField<bool>('approved', value);

  double? get totalcost => getField<double>('totalcost');
  set totalcost(double? value) => setField<double>('totalcost', value);

  bool? get done => getField<bool>('done');
  set done(bool? value) => setField<bool>('done', value);
}
