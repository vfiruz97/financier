import 'package:drift/drift.dart';

class Users extends Table {
  TextColumn get id => text().withLength(max: 40)();
  TextColumn get name => text().withDefault(const Constant('Financier'))();
  TextColumn get email => text()();
  TextColumn get password => text()();

  DateTimeColumn get createdAt => dateTime().withDefault(Constant(DateTime.now()))();
  DateTimeColumn get updatedAt => dateTime().withDefault(Constant(DateTime.now()))();

  @override
  Set<Column> get primaryKey => {id};
}
