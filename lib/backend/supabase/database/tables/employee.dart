import '../database.dart';

class EmployeeTable extends SupabaseTable<EmployeeRow> {
  @override
  String get tableName => 'employee';

  @override
  EmployeeRow createRow(Map<String, dynamic> data) => EmployeeRow(data);
}

class EmployeeRow extends SupabaseDataRow {
  EmployeeRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EmployeeTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get firestname => getField<String>('firestname');
  set firestname(String? value) => setField<String>('firestname', value);

  String? get lastname => getField<String>('lastname');
  set lastname(String? value) => setField<String>('lastname', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get role => getField<String>('role');
  set role(String? value) => setField<String>('role', value);

  double? get phone => getField<double>('phone');
  set phone(double? value) => setField<double>('phone', value);

  String? get fullName => getField<String>('full name');
  set fullName(String? value) => setField<String>('full name', value);

  String? get position => getField<String>('position');
  set position(String? value) => setField<String>('position', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get gender => getField<String>('gender');
  set gender(String? value) => setField<String>('gender', value);

  String? get userid => getField<String>('userid');
  set userid(String? value) => setField<String>('userid', value);
}
