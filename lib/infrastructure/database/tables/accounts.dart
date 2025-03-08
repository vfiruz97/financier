import 'package:drift/drift.dart';

class Accounts extends Table {
  TextColumn get id => text().withLength(max: 40)();
  TextColumn get name => text().withDefault(const Constant('Financier'))();
  TextColumn get budgetId => text().customConstraint('NOT NULL REFERENCES budgets (id)')();
  IntColumn get currencyId => integer()();
  RealColumn get balance => real()();
  IntColumn get iconAvatar => integer()();

  DateTimeColumn get deletedAt => dateTime().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(Constant(DateTime.now()))();
  DateTimeColumn get updatedAt => dateTime().withDefault(Constant(DateTime.now()))();

  @override
  Set<Column> get primaryKey => {id};
}
