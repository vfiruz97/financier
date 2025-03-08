import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/core/value_objects.dart';
import '../../../domain/financier/budget/budget.dart';
import '../../../domain/financier/budget/budget_facade.dart';
import '../../../domain/financier/budget/budget_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'budget_create_event.dart';
part 'budget_create_state.dart';
part 'budget_create_bloc.freezed.dart';

@injectable
class BudgetCreateBloc extends Bloc<BudgetCreateEvent, BudgetCreateState> {
  final IBudgetFacade budgetFacade;

  BudgetCreateBloc(this.budgetFacade) : super(BudgetCreateState.initial()) {
    on<_ChangeName>(_onChangeName);
    on<_ToggleActivity>(_onToggleActivity);
    on<_AssignUserId>(_onAssignUserId);
    on<_Save>(_onSave);
  }

  FutureOr<void> _onChangeName(_ChangeName event, Emitter<BudgetCreateState> emit) {
    emit(state.copyWith(
      budget: state.budget.copyWith(name: Name(event.nameStr)),
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onToggleActivity(_ToggleActivity event, Emitter<BudgetCreateState> emit) {
    emit(state.copyWith(
      budget: state.budget.copyWith(active: !state.budget.active),
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onAssignUserId(_AssignUserId event, Emitter<BudgetCreateState> emit) {
    emit(state.copyWith(
      budget: state.budget.copyWith(userId: event.userIdStr),
      failureOrSuccessOption: none(),
    ));
  }

  FutureOr<void> _onSave(_Save event, Emitter<BudgetCreateState> emit) async {
    emit(state.copyWith(validateForm: true));

    final isNameValid = state.budget.name.isValid();
    if (isNameValid) {
      final respond = await budgetFacade.create(state.budget);
      emit(state.copyWith(failureOrSuccessOption: some(respond)));
    }
  }
}
