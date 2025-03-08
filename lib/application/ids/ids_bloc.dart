import 'dart:async';

import 'package:bloc/bloc.dart';
import '../../infrastructure/database/daos/account_dao.dart';
import '../../infrastructure/database/daos/budget_dao.dart';
import '../../infrastructure/database/database.dart';
import '../../injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'ids_event.dart';
part 'ids_state.dart';
part 'ids_bloc.freezed.dart';

@injectable
class IdsBloc extends Bloc<IdsEvent, IdsState> {
  IdsBloc() : super(IdsState.initial()) {
    on<_Started>(_onStarted);
    on<_RefreshActiveBudgetId>(_onRefreshActiveBudgetId);
    on<_RefreshAccountIds>(_onRefreshAccountIds);
  }

  FutureOr<void> _onStarted(_Started event, Emitter<IdsState> emit) async {
    emit(state.copyWith(userId: event.userId));

    final budget = await getIt<BudgetsDao>().getActiveBudget(event.userId);
    emit(state.copyWith(activeBudget: budget));
    if (budget != null) {
      final accounts = (await getIt<AccountsDao>().getAllByBudgetId(budget.id));
      emit(state.copyWith(accounts: accounts.isEmpty ? null : accounts));
    } else {
      emit(state.copyWith(activeBudget: null, accounts: null));
    }
  }

  FutureOr<void> _onRefreshActiveBudgetId(_RefreshActiveBudgetId event, Emitter<IdsState> emit) async {
    if (state.userId != null) {
      final budget = await getIt<BudgetsDao>().getActiveBudget(state.userId!);
      emit(state.copyWith(activeBudget: budget));
      if (budget != null) {
        final accounts = (await getIt<AccountsDao>().getAllByBudgetId(budget.id));
        emit(state.copyWith(accounts: accounts.isEmpty ? null : accounts));
      } else {
        emit(state.copyWith(activeBudget: null, accounts: null));
      }
    }
  }

  FutureOr<void> _onRefreshAccountIds(_RefreshAccountIds event, Emitter<IdsState> emit) async {
    final activeBudgetId = state.activeBudgetId;
    if (activeBudgetId != null) {
      final accounts = (await getIt<AccountsDao>().getAllByBudgetId(activeBudgetId));
      emit(state.copyWith(accounts: accounts.isEmpty ? null : accounts));
    }
  }
}
