import 'package:drift/drift.dart';

class Budgets extends Table {
  TextColumn get id => text().withLength(max: 40)();
  TextColumn get name => text().withDefault(const Constant('Financier'))();
  TextColumn get userId => text().customConstraint('NOT NULL REFERENCES users (id)')();
  BoolColumn get active => boolean().withDefault(const Constant(true))();

  DateTimeColumn get createdAt => dateTime().withDefault(Constant(DateTime.now()))();
  DateTimeColumn get updatedAt => dateTime().withDefault(Constant(DateTime.now()))();

  @override
  Set<Column> get primaryKey => {id};
}
