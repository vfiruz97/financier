import 'dart:async';

import 'package:bloc/bloc.dart';
import '../../../domain/core/value_objects.dart';
import '../../../domain/financier/plan/plan.dart';
import '../../../domain/financier/plan/plan_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'plan_update_event.dart';
part 'plan_update_state.dart';
part 'plan_update_bloc.freezed.dart';

@injectable
class PlanUpdateBloc extends Bloc<PlanUpdateEvent, PlanUpdateState> {
  final IPlanFacade planFacade;
  PlanUpdateBloc(this.planFacade) : super(PlanUpdateState.initial()) {
    on<_AddPlan>(_onAddPlan);
    on<_ChangeStartDate>(_onChangeStartDate);
    on<_ChangeEndDate>(_onChangeEndDate);
    on<_ChangeIncomeBalance>(_onChangeIncomeBalance);
    on<_ChangeExpenseBalance>(_onChangeExpenseBalance);
    on<_Update>(_onUpdate);
    on<_Delete>(_onDelete);
  }

  FutureOr<void> _onAddPlan(_AddPlan event, Emitter<PlanUpdateState> emit) {
    emit(state.copyWith(plan: event.plan));
  }

  FutureOr<void> _onChangeStartDate(_ChangeStartDate event, Emitter<PlanUpdateState> emit) {
    emit(state.copyWith(plan: state.plan.copyWith(startDate: event.startDate)));
  }

  FutureOr<void> _onChangeEndDate(_ChangeEndDate event, Emitter<PlanUpdateState> emit) {
    emit(state.copyWith(plan: state.plan.copyWith(endDate: event.endDate)));
  }

  FutureOr<void> _onChangeIncomeBalance(_ChangeIncomeBalance event, Emitter<PlanUpdateState> emit) {
    emit(state.copyWith(plan: state.plan.copyWith(incomeBalance: Balance(event.balance))));
  }

  FutureOr<void> _onChangeExpenseBalance(_ChangeExpenseBalance event, Emitter<PlanUpdateState> emit) {
    emit(state.copyWith(plan: state.plan.copyWith(expenseBalance: Balance(event.balance))));
  }

  FutureOr<void> _onUpdate(_Update event, Emitter<PlanUpdateState> emit) async {
    await planFacade.update(state.plan);
  }

  FutureOr<void> _onDelete(_Delete event, Emitter<PlanUpdateState> emit) async {
    await planFacade.delete(state.plan);
  }
}
