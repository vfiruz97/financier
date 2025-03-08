import 'dart:async';

import 'package:bloc/bloc.dart';
import '../../../domain/core/value_objects.dart';
import '../../../domain/financier/plan/plan.dart';
import '../../../domain/financier/plan/plan_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'plan_create_event.dart';
part 'plan_create_state.dart';
part 'plan_create_bloc.freezed.dart';

@injectable
class PlanCreateBloc extends Bloc<PlanCreateEvent, PlanCreateState> {
  final IPlanFacade planFacade;
  PlanCreateBloc(this.planFacade) : super(PlanCreateState.initialize()) {
    on<_AddBudgetId>(_onAddBudgetId);
    on<_ChangeStartDate>(_onChangeStartDate);
    on<_ChangeEndDate>(_onChangeEndDate);
    on<_ChangeCurrencyId>(_onChangeCurrencyId);
    on<_ChangeIncomeBalance>(_onChangeIncomeBalance);
    on<_ChangeExpenseBalance>(_onChangeExpenseBalance);
    on<_Save>(_onSave);
  }

  FutureOr<void> _onAddBudgetId(_AddBudgetId event, Emitter<PlanCreateState> emit) {
    emit(state.copyWith(plan: state.plan.copyWith(budgetId: event.budgetId)));
  }

  FutureOr<void> _onChangeStartDate(_ChangeStartDate event, Emitter<PlanCreateState> emit) {
    emit(state.copyWith(plan: state.plan.copyWith(startDate: event.startDate)));
  }

  FutureOr<void> _onChangeEndDate(_ChangeEndDate event, Emitter<PlanCreateState> emit) {
    emit(state.copyWith(plan: state.plan.copyWith(endDate: event.endDate)));
  }

  FutureOr<void> _onChangeCurrencyId(_ChangeCurrencyId event, Emitter<PlanCreateState> emit) {
    emit(state.copyWith(plan: state.plan.copyWith(currencyId: CurrencyId(event.currencyId))));
  }

  FutureOr<void> _onChangeIncomeBalance(_ChangeIncomeBalance event, Emitter<PlanCreateState> emit) {
    emit(state.copyWith(plan: state.plan.copyWith(incomeBalance: Balance(event.balance))));
  }

  FutureOr<void> _onChangeExpenseBalance(_ChangeExpenseBalance event, Emitter<PlanCreateState> emit) {
    emit(state.copyWith(plan: state.plan.copyWith(expenseBalance: Balance(event.balance))));
  }

  FutureOr<void> _onSave(_, Emitter<PlanCreateState> emit) async {
    await planFacade.create(state.plan);
  }
}
