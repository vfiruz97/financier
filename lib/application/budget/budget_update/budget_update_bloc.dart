import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/core/value_objects.dart';
import '../../../domain/financier/budget/budget.dart';
import '../../../domain/financier/budget/budget_facade.dart';
import '../../../domain/financier/budget/budget_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'budget_update_event.dart';
part 'budget_update_state.dart';
part 'budget_update_bloc.freezed.dart';

@injectable
class BudgetUpdateBloc extends Bloc<BudgetUpdateEvent, BudgetUpdateState> {
  final IBudgetFacade budgetFacade;
  BudgetUpdateBloc(this.budgetFacade) : super(BudgetUpdateState.initial()) {
    on<_ChangeName>(_onChangeName);
    on<_ToggleActivity>(_onToggleActivity);
    on<_AssignBudget>(_onAssignBudget);
    on<_Save>(_onSave);
    on<_Delete>(_onDelete);
  }

  FutureOr<void> _onChangeName(_ChangeName event, Emitter<BudgetUpdateState> emit) {
    emit(state.copyWith(
      budget: state.budget.copyWith(name: Name(event.nameStr)),
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onToggleActivity(_ToggleActivity event, Emitter<BudgetUpdateState> emit) {
    emit(state.copyWith(
      budget: state.budget.copyWith(active: !state.budget.active),
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onAssignBudget(_AssignBudget event, Emitter<BudgetUpdateState> emit) {
    emit(state.copyWith(budget: event.budget, failureOrSuccessOption: none()));
  }

  FutureOr<void> _onSave(_Save event, Emitter<BudgetUpdateState> emit) async {
    emit(state.copyWith(validateForm: true));

    final isNameValid = state.budget.name.isValid();
    if (isNameValid) {
      final respond = await budgetFacade.update(state.budget);
      emit(state.copyWith(failureOrSuccessOption: some(respond)));
    }
  }

  FutureOr<void> _onDelete(_Delete event, Emitter<BudgetUpdateState> emit) async {
    await budgetFacade.delete(state.budget);
    emit(state.copyWith(failureOrSuccessOption: some(right(unit))));
  }
}
