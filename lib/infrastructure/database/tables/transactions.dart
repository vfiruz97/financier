import 'package:drift/drift.dart';

class Transactions extends Table {
  TextColumn get id => text().withLength(max: 40)();
  TextColumn get accountId => text().customConstraint('NOT NULL REFERENCES accounts (id)')();
  TextColumn get categoryId => text().nullable()();
  RealColumn get balance => real()();
  IntColumn get type => integer()();
  TextColumn get description => text().nullable()();

  DateTimeColumn get createdAt => dateTime().withDefault(Constant(DateTime.now()))();
  DateTimeColumn get updatedAt => dateTime().withDefault(Constant(DateTime.now()))();

  @override
  Set<Column> get primaryKey => {id};
}
