import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import '../../domain/core/value_objects.dart';
import '../../domain/financier/transaction_category/transaction_category.dart';
import 'daos/account_dao.dart';
import 'daos/budget_dao.dart';
import 'daos/plan_dao.dart';
import 'daos/transaction_category_dao.dart';
import 'daos/transaction_dao.dart';
import 'daos/user_dao.dart';
import 'tables/accounts.dart';
import 'tables/budgets.dart';
import 'tables/plans.dart';
import 'tables/transaction_categories.dart';
import 'tables/transactions.dart';
import 'tables/users.dart';
import '../../injection.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'financier.sqlite'));
    return NativeDatabase(file, logStatements: true);
  });
}

@DriftDatabase(
  tables: [
    Users,
    Budgets,
    Accounts,
    TransactionCategories,
    Transactions,
    Plans,
  ],
  daos: [
    UsersDao,
    BudgetsDao,
    AccountsDao,
    TransactionCategoriesDao,
    TransactionsDao,
    PlansDao,
  ],
)
@lazySingleton
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (Migrator m) async {
          final migration = await m.createAll();

          final categories = [
            TransactionCategoriesCompanion(
              id: Value(UniqueId().getOrCrash()),
              name: const Value('Home'),
              type: Value(TransactionCategoryType.expense.index),
              order: const Value(1),
            ),
            TransactionCategoriesCompanion(
              id: Value(UniqueId().getOrCrash()),
              name: const Value('Transport'),
              type: Value(TransactionCategoryType.expense.index),
              order: const Value(2),
            ),
            TransactionCategoriesCompanion(
              id: Value(UniqueId().getOrCrash()),
              name: const Value('Shoping'),
              type: Value(TransactionCategoryType.expense.index),
              order: const Value(3),
            ),
            TransactionCategoriesCompanion(
              id: Value(UniqueId().getOrCrash()),
              name: const Value('Healthcare'),
              type: Value(TransactionCategoryType.expense.index),
              order: const Value(4),
            ),
            TransactionCategoriesCompanion(
              id: Value(UniqueId().getOrCrash()),
              name: const Value('Purchases'),
              type: Value(TransactionCategoryType.expense.index),
              order: const Value(4),
            ),
            TransactionCategoriesCompanion(
              id: Value(UniqueId().getOrCrash()),
              name: const Value('Salary'),
              type: Value(TransactionCategoryType.income.index),
              order: const Value(1),
            ),
            TransactionCategoriesCompanion(
              id: Value(UniqueId().getOrCrash()),
              name: const Value('Others'),
              type: Value(TransactionCategoryType.income.index),
              order: const Value(2),
            ),
          ];

          final categoryDao = getIt<TransactionCategoriesDao>();
          for (final category in categories) {
            await categoryDao.addTransactionCategory(category);
          }

          return migration;
        },
        onUpgrade: (Migrator m, int from, int to) async {},
      );

  @override
  int get schemaVersion => 1;
}
