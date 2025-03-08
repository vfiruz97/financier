// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import 'application/account/account_create/account_create_bloc.dart' as _i409;
import 'application/account/account_update/account_update_bloc.dart' as _i712;
import 'application/auth/auth/auth_bloc.dart' as _i110;
import 'application/auth/login/login_bloc.dart' as _i722;
import 'application/auth/register/register_bloc.dart' as _i1023;
import 'application/budget/budget_create/budget_create_bloc.dart' as _i383;
import 'application/budget/budget_update/budget_update_bloc.dart' as _i22;
import 'application/buttom_navigation/buttom_navigation_bloc.dart' as _i916;
import 'application/feedback/feedback_bloc.dart' as _i1018;
import 'application/ids/ids_bloc.dart' as _i923;
import 'application/message_notifier/message_notifier.dart' as _i628;
import 'application/notification/notification_service.dart' as _i260;
import 'application/plan/plan_create/plan_create_bloc.dart' as _i673;
import 'application/plan/plan_update/plan_update_bloc.dart' as _i779;
import 'application/settings/settings_controller.dart' as _i859;
import 'application/transaction/expense_transaction_create/expense_transaction_create_bloc.dart'
    as _i60;
import 'application/transaction/expense_transaction_update/expense_transaction_update_bloc.dart'
    as _i673;
import 'application/transaction/income_transaction_create/income_transaction_create_bloc.dart'
    as _i759;
import 'application/transaction/income_transaction_update/income_transaction_update_bloc.dart'
    as _i33;
import 'application/transaction/transfer_transaction_create/transfer_transaction_create_bloc.dart'
    as _i709;
import 'application/transaction/transfer_transaction_update/transfer_transaction_update_bloc.dart'
    as _i1067;
import 'application/transaction_category/transaction_category_create/transaction_category_create_bloc.dart'
    as _i313;
import 'application/transaction_category/transaction_category_update/transaction_category_update_bloc.dart'
    as _i678;
import 'domain/auth/auth_facade.dart' as _i909;
import 'domain/feedback/i_feed_back_repository.dart' as _i684;
import 'domain/financier/account/account_facade.dart' as _i773;
import 'domain/financier/budget/budget_facade.dart' as _i38;
import 'domain/financier/plan/plan_facade.dart' as _i987;
import 'domain/financier/transaction/transaction_facade.dart' as _i998;
import 'domain/financier/transaction_category/transaction_category_facade.dart'
    as _i129;
import 'domain/settings/i_settings.dart' as _i37;
import 'infrastructure/database/daos/account_dao.dart' as _i755;
import 'infrastructure/database/daos/budget_dao.dart' as _i898;
import 'infrastructure/database/daos/plan_dao.dart' as _i684;
import 'infrastructure/database/daos/transaction_category_dao.dart' as _i844;
import 'infrastructure/database/daos/transaction_dao.dart' as _i533;
import 'infrastructure/database/daos/user_dao.dart' as _i502;
import 'infrastructure/database/database.dart' as _i92;
import 'infrastructure/feedback/feedback_remote.dart' as _i835;
import 'infrastructure/feedback/feedback_repository.dart' as _i318;
import 'infrastructure/financier/account/account_facade.dart' as _i359;
import 'infrastructure/financier/auth/auth_facade.dart' as _i764;
import 'infrastructure/financier/auth/auth_locale.dart' as _i443;
import 'infrastructure/financier/budget/budget_facade.dart' as _i328;
import 'infrastructure/financier/plan/plan_facade.dart' as _i162;
import 'infrastructure/financier/transaction/transaction_facade.dart' as _i554;
import 'infrastructure/financier/transaction_category/transaction_category_facade.dart'
    as _i649;
import 'infrastructure/locale_database/locale_db.dart' as _i519;
import 'infrastructure/settings/settings_local.dart' as _i1035;
import 'infrastructure/settings/settings_repository.dart' as _i1038;
import 'injection.dart' as _i464;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final moduleInjection = _$ModuleInjection();
  await gh.factoryAsync<_i460.SharedPreferences>(
    () => moduleInjection.sharedPreferences,
    preResolve: true,
  );
  gh.factory<_i923.IdsBloc>(() => _i923.IdsBloc());
  gh.factory<_i916.ButtomNavigationBloc>(() => _i916.ButtomNavigationBloc());
  gh.singleton<_i260.NotificationService>(() => _i260.NotificationService());
  gh.singleton<_i628.MessageNotifier>(() => _i628.MessageNotifier());
  gh.lazySingleton<_i895.Connectivity>(() => moduleInjection.connectivity);
  gh.lazySingleton<_i844.TransactionCategoriesDao>(
    () => moduleInjection.transactionCategoriesDao,
  );
  gh.lazySingleton<_i502.UsersDao>(() => moduleInjection.usersDao);
  gh.lazySingleton<_i898.BudgetsDao>(() => moduleInjection.budgetsDao);
  gh.lazySingleton<_i755.AccountsDao>(() => moduleInjection.accountsDao);
  gh.lazySingleton<_i684.PlansDao>(() => moduleInjection.plansDao);
  gh.lazySingleton<_i533.TransactionsDao>(
    () => moduleInjection.transactionsDao,
  );
  gh.lazySingleton<_i92.AppDatabase>(() => _i92.AppDatabase());
  gh.singleton<_i773.IAccountFacade>(
    () => _i359.AccountFacade(accountsDao: gh<_i755.AccountsDao>()),
  );
  gh.singleton<_i129.ITransactionCategoryFacade>(
    () => _i649.TransactionCategoryFacade(gh<_i844.TransactionCategoriesDao>()),
  );
  gh.singleton<_i1035.ISettingsLocal>(
    () => _i1035.SettingsLocal(localDb: gh<_i460.SharedPreferences>()),
  );
  gh.singleton<_i835.IFeedbackRemote>(() => _i835.FeedbackRemote());
  gh.factory<_i712.AccountUpdateBloc>(
    () => _i712.AccountUpdateBloc(gh<_i773.IAccountFacade>()),
  );
  gh.factory<_i409.AccountCreateBloc>(
    () => _i409.AccountCreateBloc(gh<_i773.IAccountFacade>()),
  );
  gh.singleton<_i998.ITransactionFacade>(
    () => _i554.TransactionFacade(
      gh<_i533.TransactionsDao>(),
      gh<_i755.AccountsDao>(),
    ),
  );
  gh.factory<_i678.TransactionCategoryUpdateBloc>(
    () => _i678.TransactionCategoryUpdateBloc(
      gh<_i129.ITransactionCategoryFacade>(),
    ),
  );
  gh.factory<_i313.TransactionCategoryCreateBloc>(
    () => _i313.TransactionCategoryCreateBloc(
      gh<_i129.ITransactionCategoryFacade>(),
    ),
  );
  gh.singleton<_i37.ISettingsRepository>(
    () => _i1038.SettingsRepository(settingsLocal: gh<_i1035.ISettingsLocal>()),
  );
  gh.singleton<_i859.SettingsController>(
    () => _i859.SettingsController(
      settingsRepository: gh<_i37.ISettingsRepository>(),
    ),
  );
  gh.singleton<_i38.IBudgetFacade>(
    () => _i328.BudgetFacade(
      gh<_i898.BudgetsDao>(),
      gh<_i755.AccountsDao>(),
      gh<_i533.TransactionsDao>(),
      gh<_i684.PlansDao>(),
    ),
  );
  gh.singleton<_i987.IPlanFacade>(() => _i162.PlanFacade(gh<_i684.PlansDao>()));
  gh.singleton<_i684.IFeedbackRepository>(
    () => _i318.FeedbackRepository(
      gh<_i895.Connectivity>(),
      gh<_i628.MessageNotifier>(),
      gh<_i835.IFeedbackRemote>(),
    ),
  );
  gh.factory<_i22.BudgetUpdateBloc>(
    () => _i22.BudgetUpdateBloc(gh<_i38.IBudgetFacade>()),
  );
  gh.factory<_i383.BudgetCreateBloc>(
    () => _i383.BudgetCreateBloc(gh<_i38.IBudgetFacade>()),
  );
  gh.factory<_i60.ExpenseTransactionCreateBloc>(
    () => _i60.ExpenseTransactionCreateBloc(gh<_i998.ITransactionFacade>()),
  );
  gh.factory<_i1067.TransferTransactionUpdateBloc>(
    () => _i1067.TransferTransactionUpdateBloc(gh<_i998.ITransactionFacade>()),
  );
  gh.factory<_i759.IncomeTransactionCreateBloc>(
    () => _i759.IncomeTransactionCreateBloc(gh<_i998.ITransactionFacade>()),
  );
  gh.factory<_i33.IncomeTransactionUpdateBloc>(
    () => _i33.IncomeTransactionUpdateBloc(gh<_i998.ITransactionFacade>()),
  );
  gh.factory<_i673.ExpenseTransactionUpdateBloc>(
    () => _i673.ExpenseTransactionUpdateBloc(gh<_i998.ITransactionFacade>()),
  );
  gh.factory<_i709.TransferTransactionCreateBloc>(
    () => _i709.TransferTransactionCreateBloc(gh<_i998.ITransactionFacade>()),
  );
  gh.singleton<_i519.ILocalDb>(
    () => _i519.LocaleDb(gh<_i460.SharedPreferences>()),
  );
  gh.singleton<_i443.IAuthLocale>(() => _i443.AuthLocale(gh<_i519.ILocalDb>()));
  gh.singleton<_i909.IAuthFacade>(
    () => _i764.AuthFacade(
      gh<_i443.IAuthLocale>(),
      gh<_i502.UsersDao>(),
      gh<_i898.BudgetsDao>(),
    ),
  );
  gh.factory<_i673.PlanCreateBloc>(
    () => _i673.PlanCreateBloc(gh<_i987.IPlanFacade>()),
  );
  gh.factory<_i779.PlanUpdateBloc>(
    () => _i779.PlanUpdateBloc(gh<_i987.IPlanFacade>()),
  );
  gh.factory<_i110.AuthBloc>(() => _i110.AuthBloc(gh<_i909.IAuthFacade>()));
  gh.factory<_i1023.RegisterBloc>(
    () => _i1023.RegisterBloc(gh<_i909.IAuthFacade>()),
  );
  gh.factory<_i722.LoginBloc>(() => _i722.LoginBloc(gh<_i909.IAuthFacade>()));
  gh.factory<_i1018.FeedbackBloc>(
    () => _i1018.FeedbackBloc(
      gh<_i684.IFeedbackRepository>(),
      gh<_i110.AuthBloc>(),
    ),
  );
  return getIt;
}

class _$ModuleInjection extends _i464.ModuleInjection {}
