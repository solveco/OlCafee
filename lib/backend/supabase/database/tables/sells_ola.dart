import '../database.dart';

class SellsOlaTable extends SupabaseTable<SellsOlaRow> {
  @override
  String get tableName => 'sells_ola';

  @override
  SellsOlaRow createRow(Map<String, dynamic> data) => SellsOlaRow(data);
}

class SellsOlaRow extends SupabaseDataRow {
  SellsOlaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SellsOlaTable();

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

  int? get numberitem => getField<int>('numberitem');
  set numberitem(int? value) => setField<int>('numberitem', value);

  double? get disaccount => getField<double>('disaccount');
  set disaccount(double? value) => setField<double>('disaccount', value);

  double? get totalprice => getField<double>('totalprice');
  set totalprice(double? value) => setField<double>('totalprice', value);

  String? get tabelnumber => getField<String>('tabelnumber');
  set tabelnumber(String? value) => setField<String>('tabelnumber', value);

  double? get loyatalydisaccount => getField<double>('loyatalydisaccount');
  set loyatalydisaccount(double? value) =>
      setField<double>('loyatalydisaccount', value);

  double? get additionaldisaccount => getField<double>('additionaldisaccount');
  set additionaldisaccount(double? value) =>
      setField<double>('additionaldisaccount', value);

  String? get typeofaddtionaldisaccount =>
      getField<String>('typeofaddtionaldisaccount');
  set typeofaddtionaldisaccount(String? value) =>
      setField<String>('typeofaddtionaldisaccount', value);

  String? get invoiceno => getField<String>('invoiceno');
  set invoiceno(String? value) => setField<String>('invoiceno', value);
}
