// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlanUpdateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Plan plan) addPlan,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(DateTime endDate) changeEndDate,
    required TResult Function(double balance) changeIncomeBalance,
    required TResult Function(double balance) changeExpenseBalance,
    required TResult Function() update,
    required TResult Function() delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Plan plan)? addPlan,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(DateTime endDate)? changeEndDate,
    TResult? Function(double balance)? changeIncomeBalance,
    TResult? Function(double balance)? changeExpenseBalance,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Plan plan)? addPlan,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(DateTime endDate)? changeEndDate,
    TResult Function(double balance)? changeIncomeBalance,
    TResult Function(double balance)? changeExpenseBalance,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPlan value) addPlan,
    required TResult Function(_ChangeStartDate value) changeStartDate,
    required TResult Function(_ChangeEndDate value) changeEndDate,
    required TResult Function(_ChangeIncomeBalance value) changeIncomeBalance,
    required TResult Function(_ChangeExpenseBalance value) changeExpenseBalance,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddPlan value)? addPlan,
    TResult? Function(_ChangeStartDate value)? changeStartDate,
    TResult? Function(_ChangeEndDate value)? changeEndDate,
    TResult? Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult? Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPlan value)? addPlan,
    TResult Function(_ChangeStartDate value)? changeStartDate,
    TResult Function(_ChangeEndDate value)? changeEndDate,
    TResult Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanUpdateEventCopyWith<$Res> {
  factory $PlanUpdateEventCopyWith(
          PlanUpdateEvent value, $Res Function(PlanUpdateEvent) then) =
      _$PlanUpdateEventCopyWithImpl<$Res, PlanUpdateEvent>;
}

/// @nodoc
class _$PlanUpdateEventCopyWithImpl<$Res, $Val extends PlanUpdateEvent>
    implements $PlanUpdateEventCopyWith<$Res> {
  _$PlanUpdateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlanUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddPlanImplCopyWith<$Res> {
  factory _$$AddPlanImplCopyWith(
          _$AddPlanImpl value, $Res Function(_$AddPlanImpl) then) =
      __$$AddPlanImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Plan plan});

  $PlanCopyWith<$Res> get plan;
}

/// @nodoc
class __$$AddPlanImplCopyWithImpl<$Res>
    extends _$PlanUpdateEventCopyWithImpl<$Res, _$AddPlanImpl>
    implements _$$AddPlanImplCopyWith<$Res> {
  __$$AddPlanImplCopyWithImpl(
      _$AddPlanImpl _value, $Res Function(_$AddPlanImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plan = null,
  }) {
    return _then(_$AddPlanImpl(
      null == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as Plan,
    ));
  }

  /// Create a copy of PlanUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlanCopyWith<$Res> get plan {
    return $PlanCopyWith<$Res>(_value.plan, (value) {
      return _then(_value.copyWith(plan: value));
    });
  }
}

/// @nodoc

class _$AddPlanImpl implements _AddPlan {
  const _$AddPlanImpl(this.plan);

  @override
  final Plan plan;

  @override
  String toString() {
    return 'PlanUpdateEvent.addPlan(plan: $plan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPlanImpl &&
            (identical(other.plan, plan) || other.plan == plan));
  }

  @override
  int get hashCode => Object.hash(runtimeType, plan);

  /// Create a copy of PlanUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPlanImplCopyWith<_$AddPlanImpl> get copyWith =>
      __$$AddPlanImplCopyWithImpl<_$AddPlanImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Plan plan) addPlan,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(DateTime endDate) changeEndDate,
    required TResult Function(double balance) changeIncomeBalance,
    required TResult Function(double balance) changeExpenseBalance,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return addPlan(plan);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Plan plan)? addPlan,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(DateTime endDate)? changeEndDate,
    TResult? Function(double balance)? changeIncomeBalance,
    TResult? Function(double balance)? changeExpenseBalance,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) {
    return addPlan?.call(plan);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Plan plan)? addPlan,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(DateTime endDate)? changeEndDate,
    TResult Function(double balance)? changeIncomeBalance,
    TResult Function(double balance)? changeExpenseBalance,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (addPlan != null) {
      return addPlan(plan);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPlan value) addPlan,
    required TResult Function(_ChangeStartDate value) changeStartDate,
    required TResult Function(_ChangeEndDate value) changeEndDate,
    required TResult Function(_ChangeIncomeBalance value) changeIncomeBalance,
    required TResult Function(_ChangeExpenseBalance value) changeExpenseBalance,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return addPlan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddPlan value)? addPlan,
    TResult? Function(_ChangeStartDate value)? changeStartDate,
    TResult? Function(_ChangeEndDate value)? changeEndDate,
    TResult? Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult? Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return addPlan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPlan value)? addPlan,
    TResult Function(_ChangeStartDate value)? changeStartDate,
    TResult Function(_ChangeEndDate value)? changeEndDate,
    TResult Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (addPlan != null) {
      return addPlan(this);
    }
    return orElse();
  }
}

abstract class _AddPlan implements PlanUpdateEvent {
  const factory _AddPlan(final Plan plan) = _$AddPlanImpl;

  Plan get plan;

  /// Create a copy of PlanUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddPlanImplCopyWith<_$AddPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeStartDateImplCopyWith<$Res> {
  factory _$$ChangeStartDateImplCopyWith(_$ChangeStartDateImpl value,
          $Res Function(_$ChangeStartDateImpl) then) =
      __$$ChangeStartDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime startDate});
}

/// @nodoc
class __$$ChangeStartDateImplCopyWithImpl<$Res>
    extends _$PlanUpdateEventCopyWithImpl<$Res, _$ChangeStartDateImpl>
    implements _$$ChangeStartDateImplCopyWith<$Res> {
  __$$ChangeStartDateImplCopyWithImpl(
      _$ChangeStartDateImpl _value, $Res Function(_$ChangeStartDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
  }) {
    return _then(_$ChangeStartDateImpl(
      null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ChangeStartDateImpl implements _ChangeStartDate {
  const _$ChangeStartDateImpl(this.startDate);

  @override
  final DateTime startDate;

  @override
  String toString() {
    return 'PlanUpdateEvent.changeStartDate(startDate: $startDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeStartDateImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate);

  /// Create a copy of PlanUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeStartDateImplCopyWith<_$ChangeStartDateImpl> get copyWith =>
      __$$ChangeStartDateImplCopyWithImpl<_$ChangeStartDateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Plan plan) addPlan,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(DateTime endDate) changeEndDate,
    required TResult Function(double balance) changeIncomeBalance,
    required TResult Function(double balance) changeExpenseBalance,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return changeStartDate(startDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Plan plan)? addPlan,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(DateTime endDate)? changeEndDate,
    TResult? Function(double balance)? changeIncomeBalance,
    TResult? Function(double balance)? changeExpenseBalance,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) {
    return changeStartDate?.call(startDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Plan plan)? addPlan,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(DateTime endDate)? changeEndDate,
    TResult Function(double balance)? changeIncomeBalance,
    TResult Function(double balance)? changeExpenseBalance,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (changeStartDate != null) {
      return changeStartDate(startDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPlan value) addPlan,
    required TResult Function(_ChangeStartDate value) changeStartDate,
    required TResult Function(_ChangeEndDate value) changeEndDate,
    required TResult Function(_ChangeIncomeBalance value) changeIncomeBalance,
    required TResult Function(_ChangeExpenseBalance value) changeExpenseBalance,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return changeStartDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddPlan value)? addPlan,
    TResult? Function(_ChangeStartDate value)? changeStartDate,
    TResult? Function(_ChangeEndDate value)? changeEndDate,
    TResult? Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult? Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return changeStartDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPlan value)? addPlan,
    TResult Function(_ChangeStartDate value)? changeStartDate,
    TResult Function(_ChangeEndDate value)? changeEndDate,
    TResult Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (changeStartDate != null) {
      return changeStartDate(this);
    }
    return orElse();
  }
}

abstract class _ChangeStartDate implements PlanUpdateEvent {
  const factory _ChangeStartDate(final DateTime startDate) =
      _$ChangeStartDateImpl;

  DateTime get startDate;

  /// Create a copy of PlanUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeStartDateImplCopyWith<_$ChangeStartDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeEndDateImplCopyWith<$Res> {
  factory _$$ChangeEndDateImplCopyWith(
          _$ChangeEndDateImpl value, $Res Function(_$ChangeEndDateImpl) then) =
      __$$ChangeEndDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime endDate});
}

/// @nodoc
class __$$ChangeEndDateImplCopyWithImpl<$Res>
    extends _$PlanUpdateEventCopyWithImpl<$Res, _$ChangeEndDateImpl>
    implements _$$ChangeEndDateImplCopyWith<$Res> {
  __$$ChangeEndDateImplCopyWithImpl(
      _$ChangeEndDateImpl _value, $Res Function(_$ChangeEndDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endDate = null,
  }) {
    return _then(_$ChangeEndDateImpl(
      null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ChangeEndDateImpl implements _ChangeEndDate {
  const _$ChangeEndDateImpl(this.endDate);

  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'PlanUpdateEvent.changeEndDate(endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeEndDateImpl &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, endDate);

  /// Create a copy of PlanUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeEndDateImplCopyWith<_$ChangeEndDateImpl> get copyWith =>
      __$$ChangeEndDateImplCopyWithImpl<_$ChangeEndDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Plan plan) addPlan,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(DateTime endDate) changeEndDate,
    required TResult Function(double balance) changeIncomeBalance,
    required TResult Function(double balance) changeExpenseBalance,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return changeEndDate(endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Plan plan)? addPlan,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(DateTime endDate)? changeEndDate,
    TResult? Function(double balance)? changeIncomeBalance,
    TResult? Function(double balance)? changeExpenseBalance,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) {
    return changeEndDate?.call(endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Plan plan)? addPlan,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(DateTime endDate)? changeEndDate,
    TResult Function(double balance)? changeIncomeBalance,
    TResult Function(double balance)? changeExpenseBalance,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (changeEndDate != null) {
      return changeEndDate(endDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPlan value) addPlan,
    required TResult Function(_ChangeStartDate value) changeStartDate,
    required TResult Function(_ChangeEndDate value) changeEndDate,
    required TResult Function(_ChangeIncomeBalance value) changeIncomeBalance,
    required TResult Function(_ChangeExpenseBalance value) changeExpenseBalance,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return changeEndDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddPlan value)? addPlan,
    TResult? Function(_ChangeStartDate value)? changeStartDate,
    TResult? Function(_ChangeEndDate value)? changeEndDate,
    TResult? Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult? Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return changeEndDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPlan value)? addPlan,
    TResult Function(_ChangeStartDate value)? changeStartDate,
    TResult Function(_ChangeEndDate value)? changeEndDate,
    TResult Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (changeEndDate != null) {
      return changeEndDate(this);
    }
    return orElse();
  }
}

abstract class _ChangeEndDate implements PlanUpdateEvent {
  const factory _ChangeEndDate(final DateTime endDate) = _$ChangeEndDateImpl;

  DateTime get endDate;

  /// Create a copy of PlanUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeEndDateImplCopyWith<_$ChangeEndDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeIncomeBalanceImplCopyWith<$Res> {
  factory _$$ChangeIncomeBalanceImplCopyWith(_$ChangeIncomeBalanceImpl value,
          $Res Function(_$ChangeIncomeBalanceImpl) then) =
      __$$ChangeIncomeBalanceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double balance});
}

/// @nodoc
class __$$ChangeIncomeBalanceImplCopyWithImpl<$Res>
    extends _$PlanUpdateEventCopyWithImpl<$Res, _$ChangeIncomeBalanceImpl>
    implements _$$ChangeIncomeBalanceImplCopyWith<$Res> {
  __$$ChangeIncomeBalanceImplCopyWithImpl(_$ChangeIncomeBalanceImpl _value,
      $Res Function(_$ChangeIncomeBalanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
  }) {
    return _then(_$ChangeIncomeBalanceImpl(
      null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ChangeIncomeBalanceImpl implements _ChangeIncomeBalance {
  const _$ChangeIncomeBalanceImpl(this.balance);

  @override
  final double balance;

  @override
  String toString() {
    return 'PlanUpdateEvent.changeIncomeBalance(balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeIncomeBalanceImpl &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balance);

  /// Create a copy of PlanUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeIncomeBalanceImplCopyWith<_$ChangeIncomeBalanceImpl> get copyWith =>
      __$$ChangeIncomeBalanceImplCopyWithImpl<_$ChangeIncomeBalanceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Plan plan) addPlan,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(DateTime endDate) changeEndDate,
    required TResult Function(double balance) changeIncomeBalance,
    required TResult Function(double balance) changeExpenseBalance,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return changeIncomeBalance(balance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Plan plan)? addPlan,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(DateTime endDate)? changeEndDate,
    TResult? Function(double balance)? changeIncomeBalance,
    TResult? Function(double balance)? changeExpenseBalance,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) {
    return changeIncomeBalance?.call(balance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Plan plan)? addPlan,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(DateTime endDate)? changeEndDate,
    TResult Function(double balance)? changeIncomeBalance,
    TResult Function(double balance)? changeExpenseBalance,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (changeIncomeBalance != null) {
      return changeIncomeBalance(balance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPlan value) addPlan,
    required TResult Function(_ChangeStartDate value) changeStartDate,
    required TResult Function(_ChangeEndDate value) changeEndDate,
    required TResult Function(_ChangeIncomeBalance value) changeIncomeBalance,
    required TResult Function(_ChangeExpenseBalance value) changeExpenseBalance,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return changeIncomeBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddPlan value)? addPlan,
    TResult? Function(_ChangeStartDate value)? changeStartDate,
    TResult? Function(_ChangeEndDate value)? changeEndDate,
    TResult? Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult? Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return changeIncomeBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPlan value)? addPlan,
    TResult Function(_ChangeStartDate value)? changeStartDate,
    TResult Function(_ChangeEndDate value)? changeEndDate,
    TResult Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (changeIncomeBalance != null) {
      return changeIncomeBalance(this);
    }
    return orElse();
  }
}

abstract class _ChangeIncomeBalance implements PlanUpdateEvent {
  const factory _ChangeIncomeBalance(final double balance) =
      _$ChangeIncomeBalanceImpl;

  double get balance;

  /// Create a copy of PlanUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeIncomeBalanceImplCopyWith<_$ChangeIncomeBalanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeExpenseBalanceImplCopyWith<$Res> {
  factory _$$ChangeExpenseBalanceImplCopyWith(_$ChangeExpenseBalanceImpl value,
          $Res Function(_$ChangeExpenseBalanceImpl) then) =
      __$$ChangeExpenseBalanceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double balance});
}

/// @nodoc
class __$$ChangeExpenseBalanceImplCopyWithImpl<$Res>
    extends _$PlanUpdateEventCopyWithImpl<$Res, _$ChangeExpenseBalanceImpl>
    implements _$$ChangeExpenseBalanceImplCopyWith<$Res> {
  __$$ChangeExpenseBalanceImplCopyWithImpl(_$ChangeExpenseBalanceImpl _value,
      $Res Function(_$ChangeExpenseBalanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
  }) {
    return _then(_$ChangeExpenseBalanceImpl(
      null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ChangeExpenseBalanceImpl implements _ChangeExpenseBalance {
  const _$ChangeExpenseBalanceImpl(this.balance);

  @override
  final double balance;

  @override
  String toString() {
    return 'PlanUpdateEvent.changeExpenseBalance(balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeExpenseBalanceImpl &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balance);

  /// Create a copy of PlanUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeExpenseBalanceImplCopyWith<_$ChangeExpenseBalanceImpl>
      get copyWith =>
          __$$ChangeExpenseBalanceImplCopyWithImpl<_$ChangeExpenseBalanceImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Plan plan) addPlan,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(DateTime endDate) changeEndDate,
    required TResult Function(double balance) changeIncomeBalance,
    required TResult Function(double balance) changeExpenseBalance,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return changeExpenseBalance(balance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Plan plan)? addPlan,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(DateTime endDate)? changeEndDate,
    TResult? Function(double balance)? changeIncomeBalance,
    TResult? Function(double balance)? changeExpenseBalance,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) {
    return changeExpenseBalance?.call(balance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Plan plan)? addPlan,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(DateTime endDate)? changeEndDate,
    TResult Function(double balance)? changeIncomeBalance,
    TResult Function(double balance)? changeExpenseBalance,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (changeExpenseBalance != null) {
      return changeExpenseBalance(balance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPlan value) addPlan,
    required TResult Function(_ChangeStartDate value) changeStartDate,
    required TResult Function(_ChangeEndDate value) changeEndDate,
    required TResult Function(_ChangeIncomeBalance value) changeIncomeBalance,
    required TResult Function(_ChangeExpenseBalance value) changeExpenseBalance,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return changeExpenseBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddPlan value)? addPlan,
    TResult? Function(_ChangeStartDate value)? changeStartDate,
    TResult? Function(_ChangeEndDate value)? changeEndDate,
    TResult? Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult? Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return changeExpenseBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPlan value)? addPlan,
    TResult Function(_ChangeStartDate value)? changeStartDate,
    TResult Function(_ChangeEndDate value)? changeEndDate,
    TResult Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (changeExpenseBalance != null) {
      return changeExpenseBalance(this);
    }
    return orElse();
  }
}

abstract class _ChangeExpenseBalance implements PlanUpdateEvent {
  const factory _ChangeExpenseBalance(final double balance) =
      _$ChangeExpenseBalanceImpl;

  double get balance;

  /// Create a copy of PlanUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeExpenseBalanceImplCopyWith<_$ChangeExpenseBalanceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$PlanUpdateEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateImpl implements _Update {
  const _$UpdateImpl();

  @override
  String toString() {
    return 'PlanUpdateEvent.update()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Plan plan) addPlan,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(DateTime endDate) changeEndDate,
    required TResult Function(double balance) changeIncomeBalance,
    required TResult Function(double balance) changeExpenseBalance,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Plan plan)? addPlan,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(DateTime endDate)? changeEndDate,
    TResult? Function(double balance)? changeIncomeBalance,
    TResult? Function(double balance)? changeExpenseBalance,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Plan plan)? addPlan,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(DateTime endDate)? changeEndDate,
    TResult Function(double balance)? changeIncomeBalance,
    TResult Function(double balance)? changeExpenseBalance,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPlan value) addPlan,
    required TResult Function(_ChangeStartDate value) changeStartDate,
    required TResult Function(_ChangeEndDate value) changeEndDate,
    required TResult Function(_ChangeIncomeBalance value) changeIncomeBalance,
    required TResult Function(_ChangeExpenseBalance value) changeExpenseBalance,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddPlan value)? addPlan,
    TResult? Function(_ChangeStartDate value)? changeStartDate,
    TResult? Function(_ChangeEndDate value)? changeEndDate,
    TResult? Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult? Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPlan value)? addPlan,
    TResult Function(_ChangeStartDate value)? changeStartDate,
    TResult Function(_ChangeEndDate value)? changeEndDate,
    TResult Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements PlanUpdateEvent {
  const factory _Update() = _$UpdateImpl;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$PlanUpdateEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl();

  @override
  String toString() {
    return 'PlanUpdateEvent.delete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Plan plan) addPlan,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(DateTime endDate) changeEndDate,
    required TResult Function(double balance) changeIncomeBalance,
    required TResult Function(double balance) changeExpenseBalance,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Plan plan)? addPlan,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(DateTime endDate)? changeEndDate,
    TResult? Function(double balance)? changeIncomeBalance,
    TResult? Function(double balance)? changeExpenseBalance,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Plan plan)? addPlan,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(DateTime endDate)? changeEndDate,
    TResult Function(double balance)? changeIncomeBalance,
    TResult Function(double balance)? changeExpenseBalance,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddPlan value) addPlan,
    required TResult Function(_ChangeStartDate value) changeStartDate,
    required TResult Function(_ChangeEndDate value) changeEndDate,
    required TResult Function(_ChangeIncomeBalance value) changeIncomeBalance,
    required TResult Function(_ChangeExpenseBalance value) changeExpenseBalance,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddPlan value)? addPlan,
    TResult? Function(_ChangeStartDate value)? changeStartDate,
    TResult? Function(_ChangeEndDate value)? changeEndDate,
    TResult? Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult? Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddPlan value)? addPlan,
    TResult Function(_ChangeStartDate value)? changeStartDate,
    TResult Function(_ChangeEndDate value)? changeEndDate,
    TResult Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements PlanUpdateEvent {
  const factory _Delete() = _$DeleteImpl;
}

/// @nodoc
mixin _$PlanUpdateState {
  Plan get plan => throw _privateConstructorUsedError;

  /// Create a copy of PlanUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanUpdateStateCopyWith<PlanUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanUpdateStateCopyWith<$Res> {
  factory $PlanUpdateStateCopyWith(
          PlanUpdateState value, $Res Function(PlanUpdateState) then) =
      _$PlanUpdateStateCopyWithImpl<$Res, PlanUpdateState>;
  @useResult
  $Res call({Plan plan});

  $PlanCopyWith<$Res> get plan;
}

/// @nodoc
class _$PlanUpdateStateCopyWithImpl<$Res, $Val extends PlanUpdateState>
    implements $PlanUpdateStateCopyWith<$Res> {
  _$PlanUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlanUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plan = null,
  }) {
    return _then(_value.copyWith(
      plan: null == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as Plan,
    ) as $Val);
  }

  /// Create a copy of PlanUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlanCopyWith<$Res> get plan {
    return $PlanCopyWith<$Res>(_value.plan, (value) {
      return _then(_value.copyWith(plan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlanUpdateStateImplCopyWith<$Res>
    implements $PlanUpdateStateCopyWith<$Res> {
  factory _$$PlanUpdateStateImplCopyWith(_$PlanUpdateStateImpl value,
          $Res Function(_$PlanUpdateStateImpl) then) =
      __$$PlanUpdateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Plan plan});

  @override
  $PlanCopyWith<$Res> get plan;
}

/// @nodoc
class __$$PlanUpdateStateImplCopyWithImpl<$Res>
    extends _$PlanUpdateStateCopyWithImpl<$Res, _$PlanUpdateStateImpl>
    implements _$$PlanUpdateStateImplCopyWith<$Res> {
  __$$PlanUpdateStateImplCopyWithImpl(
      _$PlanUpdateStateImpl _value, $Res Function(_$PlanUpdateStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plan = null,
  }) {
    return _then(_$PlanUpdateStateImpl(
      plan: null == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as Plan,
    ));
  }
}

/// @nodoc

class _$PlanUpdateStateImpl implements _PlanUpdateState {
  const _$PlanUpdateStateImpl({required this.plan});

  @override
  final Plan plan;

  @override
  String toString() {
    return 'PlanUpdateState(plan: $plan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanUpdateStateImpl &&
            (identical(other.plan, plan) || other.plan == plan));
  }

  @override
  int get hashCode => Object.hash(runtimeType, plan);

  /// Create a copy of PlanUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanUpdateStateImplCopyWith<_$PlanUpdateStateImpl> get copyWith =>
      __$$PlanUpdateStateImplCopyWithImpl<_$PlanUpdateStateImpl>(
          this, _$identity);
}

abstract class _PlanUpdateState implements PlanUpdateState {
  const factory _PlanUpdateState({required final Plan plan}) =
      _$PlanUpdateStateImpl;

  @override
  Plan get plan;

  /// Create a copy of PlanUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanUpdateStateImplCopyWith<_$PlanUpdateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
