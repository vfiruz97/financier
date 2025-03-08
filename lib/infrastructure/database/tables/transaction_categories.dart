import 'package:drift/drift.dart';

@DataClassName('TransactionCategory')
class TransactionCategories extends Table {
  TextColumn get id => text().withLength(max: 40)();
  TextColumn get name => text()();
  IntColumn get type => integer()();
  IntColumn get order => integer()();

  DateTimeColumn get deleteAt => dateTime().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(Constant(DateTime.now()))();
  DateTimeColumn? get updatedAt => dateTime().withDefault(Constant(DateTime.now()))();

  @override
  Set<Column> get primaryKey => {id};
}
