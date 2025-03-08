import 'package:connectivity_plus/connectivity_plus.dart';
import 'infrastructure/database/daos/budget_dao.dart';
import 'infrastructure/database/daos/plan_dao.dart';
import 'infrastructure/database/daos/transaction_dao.dart';
import 'infrastructure/database/database.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'infrastructure/database/daos/account_dao.dart';
import 'infrastructure/database/daos/transaction_category_dao.dart';
import 'infrastructure/database/daos/user_dao.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
@module
abstract class ModuleInjection {
  @preResolve
  Future<SharedPreferences> get sharedPreferences => SharedPreferences.getInstance();

  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @lazySingleton
  TransactionCategoriesDao get transactionCategoriesDao => getIt<AppDatabase>().transactionCategoriesDao;
  @lazySingleton
  UsersDao get usersDao => getIt<AppDatabase>().usersDao;
  @lazySingleton
  BudgetsDao get budgetsDao => getIt<AppDatabase>().budgetsDao;
  @lazySingleton
  AccountsDao get accountsDao => getIt<AppDatabase>().accountsDao;
  @lazySingleton
  PlansDao get plansDao => getIt<AppDatabase>().plansDao;
  @lazySingleton
  TransactionsDao get transactionsDao => getIt<AppDatabase>().transactionsDao;
}

Future<void> configureDependencies() => $initGetIt(getIt);
