import '../database.dart';

class EvaluationTable extends SupabaseTable<EvaluationRow> {
  @override
  String get tableName => 'evaluation';

  @override
  EvaluationRow createRow(Map<String, dynamic> data) => EvaluationRow(data);
}

class EvaluationRow extends SupabaseDataRow {
  EvaluationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EvaluationTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userid => getField<String>('userid');
  set userid(String? value) => setField<String>('userid', value);

  String? get comment => getField<String>('comment');
  set comment(String? value) => setField<String>('comment', value);

  int? get rate => getField<int>('rate');
  set rate(int? value) => setField<int>('rate', value);
}
