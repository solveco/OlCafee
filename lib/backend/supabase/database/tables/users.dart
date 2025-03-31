import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get firstname => getField<String>('firstname');
  set firstname(String? value) => setField<String>('firstname', value);

  int? get phone => getField<int>('phone');
  set phone(int? value) => setField<int>('phone', value);

  String? get lastname => getField<String>('lastname');
  set lastname(String? value) => setField<String>('lastname', value);

  String? get fullname => getField<String>('fullname');
  set fullname(String? value) => setField<String>('fullname', value);

  DateTime? get birth => getField<DateTime>('birth');
  set birth(DateTime? value) => setField<DateTime>('birth', value);

  String? get userid => getField<String>('userid');
  set userid(String? value) => setField<String>('userid', value);

  double? get loyatalypoints => getField<double>('loyatalypoints');
  set loyatalypoints(double? value) =>
      setField<double>('loyatalypoints', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get gender => getField<String>('gender');
  set gender(String? value) => setField<String>('gender', value);

  String? get tire => getField<String>('tire');
  set tire(String? value) => setField<String>('tire', value);

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);

  double? get disaccount => getField<double>('disaccount');
  set disaccount(double? value) => setField<double>('disaccount', value);

  String? get fcmToken => getField<String>('fcm_token');
  set fcmToken(String? value) => setField<String>('fcm_token', value);
}
