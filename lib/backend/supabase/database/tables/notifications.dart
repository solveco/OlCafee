import '../database.dart';

class NotificationsTable extends SupabaseTable<NotificationsRow> {
  @override
  String get tableName => 'notifications';

  @override
  NotificationsRow createRow(Map<String, dynamic> data) =>
      NotificationsRow(data);
}

class NotificationsRow extends SupabaseDataRow {
  NotificationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NotificationsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get senderid => getField<String>('senderid');
  set senderid(String? value) => setField<String>('senderid', value);

  String? get receverid => getField<String>('receverid');
  set receverid(String? value) => setField<String>('receverid', value);

  String? get boady => getField<String>('boady');
  set boady(String? value) => setField<String>('boady', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  bool? get isRead => getField<bool>('is_read');
  set isRead(bool? value) => setField<bool>('is_read', value);
}
