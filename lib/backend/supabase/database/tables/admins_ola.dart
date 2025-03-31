import '../database.dart';

class AdminsOlaTable extends SupabaseTable<AdminsOlaRow> {
  @override
  String get tableName => 'admins_ola';

  @override
  AdminsOlaRow createRow(Map<String, dynamic> data) => AdminsOlaRow(data);
}

class AdminsOlaRow extends SupabaseDataRow {
  AdminsOlaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AdminsOlaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get password => getField<String>('password');
  set password(String? value) => setField<String>('password', value);
}
