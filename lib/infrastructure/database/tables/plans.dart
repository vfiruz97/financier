import 'package:drift/drift.dart';

class Plans extends Table {
  TextColumn get id => text().withLength(max: 40)();
  TextColumn get budgetId => text().customConstraint('NOT NULL REFERENCES budgets (id)')();
  RealColumn get incomeBalance => real()();
  RealColumn get expenseBalance => real()();
  IntColumn get currencyId => integer()();
  DateTimeColumn get startDate => dateTime()();
  DateTimeColumn get endDate => dateTime()();

  DateTimeColumn get createdAt => dateTime().withDefault(Constant(DateTime.now()))();
  DateTimeColumn get updatedAt => dateTime().withDefault(Constant(DateTime.now()))();

  @override
  Set<Column> get primaryKey => {id};
}
