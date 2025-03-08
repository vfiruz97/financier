// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_create_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlanCreateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String budgetId) addBudgetId,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(DateTime endDate) changeEndDate,
    required TResult Function(int currencyId) changeCurrencyId,
    required TResult Function(double balance) changeIncomeBalance,
    required TResult Function(double balance) changeExpenseBalance,
    required TResult Function() save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String budgetId)? addBudgetId,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(DateTime endDate)? changeEndDate,
    TResult? Function(int currencyId)? changeCurrencyId,
    TResult? Function(double balance)? changeIncomeBalance,
    TResult? Function(double balance)? changeExpenseBalance,
    TResult? Function()? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String budgetId)? addBudgetId,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(DateTime endDate)? changeEndDate,
    TResult Function(int currencyId)? changeCurrencyId,
    TResult Function(double balance)? changeIncomeBalance,
    TResult Function(double balance)? changeExpenseBalance,
    TResult Function()? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddBudgetId value) addBudgetId,
    required TResult Function(_ChangeStartDate value) changeStartDate,
    required TResult Function(_ChangeEndDate value) changeEndDate,
    required TResult Function(_ChangeCurrencyId value) changeCurrencyId,
    required TResult Function(_ChangeIncomeBalance value) changeIncomeBalance,
    required TResult Function(_ChangeExpenseBalance value) changeExpenseBalance,
    required TResult Function(_Save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBudgetId value)? addBudgetId,
    TResult? Function(_ChangeStartDate value)? changeStartDate,
    TResult? Function(_ChangeEndDate value)? changeEndDate,
    TResult? Function(_ChangeCurrencyId value)? changeCurrencyId,
    TResult? Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult? Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult? Function(_Save value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBudgetId value)? addBudgetId,
    TResult Function(_ChangeStartDate value)? changeStartDate,
    TResult Function(_ChangeEndDate value)? changeEndDate,
    TResult Function(_ChangeCurrencyId value)? changeCurrencyId,
    TResult Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanCreateEventCopyWith<$Res> {
  factory $PlanCreateEventCopyWith(
          PlanCreateEvent value, $Res Function(PlanCreateEvent) then) =
      _$PlanCreateEventCopyWithImpl<$Res, PlanCreateEvent>;
}

/// @nodoc
class _$PlanCreateEventCopyWithImpl<$Res, $Val extends PlanCreateEvent>
    implements $PlanCreateEventCopyWith<$Res> {
  _$PlanCreateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlanCreateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddBudgetIdImplCopyWith<$Res> {
  factory _$$AddBudgetIdImplCopyWith(
          _$AddBudgetIdImpl value, $Res Function(_$AddBudgetIdImpl) then) =
      __$$AddBudgetIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String budgetId});
}

/// @nodoc
class __$$AddBudgetIdImplCopyWithImpl<$Res>
    extends _$PlanCreateEventCopyWithImpl<$Res, _$AddBudgetIdImpl>
    implements _$$AddBudgetIdImplCopyWith<$Res> {
  __$$AddBudgetIdImplCopyWithImpl(
      _$AddBudgetIdImpl _value, $Res Function(_$AddBudgetIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? budgetId = null,
  }) {
    return _then(_$AddBudgetIdImpl(
      null == budgetId
          ? _value.budgetId
          : budgetId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddBudgetIdImpl implements _AddBudgetId {
  const _$AddBudgetIdImpl(this.budgetId);

  @override
  final String budgetId;

  @override
  String toString() {
    return 'PlanCreateEvent.addBudgetId(budgetId: $budgetId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBudgetIdImpl &&
            (identical(other.budgetId, budgetId) ||
                other.budgetId == budgetId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, budgetId);

  /// Create a copy of PlanCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddBudgetIdImplCopyWith<_$AddBudgetIdImpl> get copyWith =>
      __$$AddBudgetIdImplCopyWithImpl<_$AddBudgetIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String budgetId) addBudgetId,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(DateTime endDate) changeEndDate,
    required TResult Function(int currencyId) changeCurrencyId,
    required TResult Function(double balance) changeIncomeBalance,
    required TResult Function(double balance) changeExpenseBalance,
    required TResult Function() save,
  }) {
    return addBudgetId(budgetId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String budgetId)? addBudgetId,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(DateTime endDate)? changeEndDate,
    TResult? Function(int currencyId)? changeCurrencyId,
    TResult? Function(double balance)? changeIncomeBalance,
    TResult? Function(double balance)? changeExpenseBalance,
    TResult? Function()? save,
  }) {
    return addBudgetId?.call(budgetId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String budgetId)? addBudgetId,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(DateTime endDate)? changeEndDate,
    TResult Function(int currencyId)? changeCurrencyId,
    TResult Function(double balance)? changeIncomeBalance,
    TResult Function(double balance)? changeExpenseBalance,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (addBudgetId != null) {
      return addBudgetId(budgetId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddBudgetId value) addBudgetId,
    required TResult Function(_ChangeStartDate value) changeStartDate,
    required TResult Function(_ChangeEndDate value) changeEndDate,
    required TResult Function(_ChangeCurrencyId value) changeCurrencyId,
    required TResult Function(_ChangeIncomeBalance value) changeIncomeBalance,
    required TResult Function(_ChangeExpenseBalance value) changeExpenseBalance,
    required TResult Function(_Save value) save,
  }) {
    return addBudgetId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBudgetId value)? addBudgetId,
    TResult? Function(_ChangeStartDate value)? changeStartDate,
    TResult? Function(_ChangeEndDate value)? changeEndDate,
    TResult? Function(_ChangeCurrencyId value)? changeCurrencyId,
    TResult? Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult? Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult? Function(_Save value)? save,
  }) {
    return addBudgetId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBudgetId value)? addBudgetId,
    TResult Function(_ChangeStartDate value)? changeStartDate,
    TResult Function(_ChangeEndDate value)? changeEndDate,
    TResult Function(_ChangeCurrencyId value)? changeCurrencyId,
    TResult Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (addBudgetId != null) {
      return addBudgetId(this);
    }
    return orElse();
  }
}

abstract class _AddBudgetId implements PlanCreateEvent {
  const factory _AddBudgetId(final String budgetId) = _$AddBudgetIdImpl;

  String get budgetId;

  /// Create a copy of PlanCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddBudgetIdImplCopyWith<_$AddBudgetIdImpl> get copyWith =>
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
    extends _$PlanCreateEventCopyWithImpl<$Res, _$ChangeStartDateImpl>
    implements _$$ChangeStartDateImplCopyWith<$Res> {
  __$$ChangeStartDateImplCopyWithImpl(
      _$ChangeStartDateImpl _value, $Res Function(_$ChangeStartDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanCreateEvent
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
    return 'PlanCreateEvent.changeStartDate(startDate: $startDate)';
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

  /// Create a copy of PlanCreateEvent
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
    required TResult Function(String budgetId) addBudgetId,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(DateTime endDate) changeEndDate,
    required TResult Function(int currencyId) changeCurrencyId,
    required TResult Function(double balance) changeIncomeBalance,
    required TResult Function(double balance) changeExpenseBalance,
    required TResult Function() save,
  }) {
    return changeStartDate(startDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String budgetId)? addBudgetId,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(DateTime endDate)? changeEndDate,
    TResult? Function(int currencyId)? changeCurrencyId,
    TResult? Function(double balance)? changeIncomeBalance,
    TResult? Function(double balance)? changeExpenseBalance,
    TResult? Function()? save,
  }) {
    return changeStartDate?.call(startDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String budgetId)? addBudgetId,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(DateTime endDate)? changeEndDate,
    TResult Function(int currencyId)? changeCurrencyId,
    TResult Function(double balance)? changeIncomeBalance,
    TResult Function(double balance)? changeExpenseBalance,
    TResult Function()? save,
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
    required TResult Function(_AddBudgetId value) addBudgetId,
    required TResult Function(_ChangeStartDate value) changeStartDate,
    required TResult Function(_ChangeEndDate value) changeEndDate,
    required TResult Function(_ChangeCurrencyId value) changeCurrencyId,
    required TResult Function(_ChangeIncomeBalance value) changeIncomeBalance,
    required TResult Function(_ChangeExpenseBalance value) changeExpenseBalance,
    required TResult Function(_Save value) save,
  }) {
    return changeStartDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBudgetId value)? addBudgetId,
    TResult? Function(_ChangeStartDate value)? changeStartDate,
    TResult? Function(_ChangeEndDate value)? changeEndDate,
    TResult? Function(_ChangeCurrencyId value)? changeCurrencyId,
    TResult? Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult? Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult? Function(_Save value)? save,
  }) {
    return changeStartDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBudgetId value)? addBudgetId,
    TResult Function(_ChangeStartDate value)? changeStartDate,
    TResult Function(_ChangeEndDate value)? changeEndDate,
    TResult Function(_ChangeCurrencyId value)? changeCurrencyId,
    TResult Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeStartDate != null) {
      return changeStartDate(this);
    }
    return orElse();
  }
}

abstract class _ChangeStartDate implements PlanCreateEvent {
  const factory _ChangeStartDate(final DateTime startDate) =
      _$ChangeStartDateImpl;

  DateTime get startDate;

  /// Create a copy of PlanCreateEvent
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
    extends _$PlanCreateEventCopyWithImpl<$Res, _$ChangeEndDateImpl>
    implements _$$ChangeEndDateImplCopyWith<$Res> {
  __$$ChangeEndDateImplCopyWithImpl(
      _$ChangeEndDateImpl _value, $Res Function(_$ChangeEndDateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanCreateEvent
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
    return 'PlanCreateEvent.changeEndDate(endDate: $endDate)';
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

  /// Create a copy of PlanCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeEndDateImplCopyWith<_$ChangeEndDateImpl> get copyWith =>
      __$$ChangeEndDateImplCopyWithImpl<_$ChangeEndDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String budgetId) addBudgetId,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(DateTime endDate) changeEndDate,
    required TResult Function(int currencyId) changeCurrencyId,
    required TResult Function(double balance) changeIncomeBalance,
    required TResult Function(double balance) changeExpenseBalance,
    required TResult Function() save,
  }) {
    return changeEndDate(endDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String budgetId)? addBudgetId,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(DateTime endDate)? changeEndDate,
    TResult? Function(int currencyId)? changeCurrencyId,
    TResult? Function(double balance)? changeIncomeBalance,
    TResult? Function(double balance)? changeExpenseBalance,
    TResult? Function()? save,
  }) {
    return changeEndDate?.call(endDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String budgetId)? addBudgetId,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(DateTime endDate)? changeEndDate,
    TResult Function(int currencyId)? changeCurrencyId,
    TResult Function(double balance)? changeIncomeBalance,
    TResult Function(double balance)? changeExpenseBalance,
    TResult Function()? save,
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
    required TResult Function(_AddBudgetId value) addBudgetId,
    required TResult Function(_ChangeStartDate value) changeStartDate,
    required TResult Function(_ChangeEndDate value) changeEndDate,
    required TResult Function(_ChangeCurrencyId value) changeCurrencyId,
    required TResult Function(_ChangeIncomeBalance value) changeIncomeBalance,
    required TResult Function(_ChangeExpenseBalance value) changeExpenseBalance,
    required TResult Function(_Save value) save,
  }) {
    return changeEndDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBudgetId value)? addBudgetId,
    TResult? Function(_ChangeStartDate value)? changeStartDate,
    TResult? Function(_ChangeEndDate value)? changeEndDate,
    TResult? Function(_ChangeCurrencyId value)? changeCurrencyId,
    TResult? Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult? Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult? Function(_Save value)? save,
  }) {
    return changeEndDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBudgetId value)? addBudgetId,
    TResult Function(_ChangeStartDate value)? changeStartDate,
    TResult Function(_ChangeEndDate value)? changeEndDate,
    TResult Function(_ChangeCurrencyId value)? changeCurrencyId,
    TResult Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeEndDate != null) {
      return changeEndDate(this);
    }
    return orElse();
  }
}

abstract class _ChangeEndDate implements PlanCreateEvent {
  const factory _ChangeEndDate(final DateTime endDate) = _$ChangeEndDateImpl;

  DateTime get endDate;

  /// Create a copy of PlanCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeEndDateImplCopyWith<_$ChangeEndDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeCurrencyIdImplCopyWith<$Res> {
  factory _$$ChangeCurrencyIdImplCopyWith(_$ChangeCurrencyIdImpl value,
          $Res Function(_$ChangeCurrencyIdImpl) then) =
      __$$ChangeCurrencyIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int currencyId});
}

/// @nodoc
class __$$ChangeCurrencyIdImplCopyWithImpl<$Res>
    extends _$PlanCreateEventCopyWithImpl<$Res, _$ChangeCurrencyIdImpl>
    implements _$$ChangeCurrencyIdImplCopyWith<$Res> {
  __$$ChangeCurrencyIdImplCopyWithImpl(_$ChangeCurrencyIdImpl _value,
      $Res Function(_$ChangeCurrencyIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyId = null,
  }) {
    return _then(_$ChangeCurrencyIdImpl(
      null == currencyId
          ? _value.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeCurrencyIdImpl implements _ChangeCurrencyId {
  const _$ChangeCurrencyIdImpl(this.currencyId);

  @override
  final int currencyId;

  @override
  String toString() {
    return 'PlanCreateEvent.changeCurrencyId(currencyId: $currencyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCurrencyIdImpl &&
            (identical(other.currencyId, currencyId) ||
                other.currencyId == currencyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currencyId);

  /// Create a copy of PlanCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCurrencyIdImplCopyWith<_$ChangeCurrencyIdImpl> get copyWith =>
      __$$ChangeCurrencyIdImplCopyWithImpl<_$ChangeCurrencyIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String budgetId) addBudgetId,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(DateTime endDate) changeEndDate,
    required TResult Function(int currencyId) changeCurrencyId,
    required TResult Function(double balance) changeIncomeBalance,
    required TResult Function(double balance) changeExpenseBalance,
    required TResult Function() save,
  }) {
    return changeCurrencyId(currencyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String budgetId)? addBudgetId,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(DateTime endDate)? changeEndDate,
    TResult? Function(int currencyId)? changeCurrencyId,
    TResult? Function(double balance)? changeIncomeBalance,
    TResult? Function(double balance)? changeExpenseBalance,
    TResult? Function()? save,
  }) {
    return changeCurrencyId?.call(currencyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String budgetId)? addBudgetId,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(DateTime endDate)? changeEndDate,
    TResult Function(int currencyId)? changeCurrencyId,
    TResult Function(double balance)? changeIncomeBalance,
    TResult Function(double balance)? changeExpenseBalance,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeCurrencyId != null) {
      return changeCurrencyId(currencyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddBudgetId value) addBudgetId,
    required TResult Function(_ChangeStartDate value) changeStartDate,
    required TResult Function(_ChangeEndDate value) changeEndDate,
    required TResult Function(_ChangeCurrencyId value) changeCurrencyId,
    required TResult Function(_ChangeIncomeBalance value) changeIncomeBalance,
    required TResult Function(_ChangeExpenseBalance value) changeExpenseBalance,
    required TResult Function(_Save value) save,
  }) {
    return changeCurrencyId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBudgetId value)? addBudgetId,
    TResult? Function(_ChangeStartDate value)? changeStartDate,
    TResult? Function(_ChangeEndDate value)? changeEndDate,
    TResult? Function(_ChangeCurrencyId value)? changeCurrencyId,
    TResult? Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult? Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult? Function(_Save value)? save,
  }) {
    return changeCurrencyId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBudgetId value)? addBudgetId,
    TResult Function(_ChangeStartDate value)? changeStartDate,
    TResult Function(_ChangeEndDate value)? changeEndDate,
    TResult Function(_ChangeCurrencyId value)? changeCurrencyId,
    TResult Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeCurrencyId != null) {
      return changeCurrencyId(this);
    }
    return orElse();
  }
}

abstract class _ChangeCurrencyId implements PlanCreateEvent {
  const factory _ChangeCurrencyId(final int currencyId) =
      _$ChangeCurrencyIdImpl;

  int get currencyId;

  /// Create a copy of PlanCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeCurrencyIdImplCopyWith<_$ChangeCurrencyIdImpl> get copyWith =>
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
    extends _$PlanCreateEventCopyWithImpl<$Res, _$ChangeIncomeBalanceImpl>
    implements _$$ChangeIncomeBalanceImplCopyWith<$Res> {
  __$$ChangeIncomeBalanceImplCopyWithImpl(_$ChangeIncomeBalanceImpl _value,
      $Res Function(_$ChangeIncomeBalanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanCreateEvent
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
    return 'PlanCreateEvent.changeIncomeBalance(balance: $balance)';
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

  /// Create a copy of PlanCreateEvent
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
    required TResult Function(String budgetId) addBudgetId,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(DateTime endDate) changeEndDate,
    required TResult Function(int currencyId) changeCurrencyId,
    required TResult Function(double balance) changeIncomeBalance,
    required TResult Function(double balance) changeExpenseBalance,
    required TResult Function() save,
  }) {
    return changeIncomeBalance(balance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String budgetId)? addBudgetId,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(DateTime endDate)? changeEndDate,
    TResult? Function(int currencyId)? changeCurrencyId,
    TResult? Function(double balance)? changeIncomeBalance,
    TResult? Function(double balance)? changeExpenseBalance,
    TResult? Function()? save,
  }) {
    return changeIncomeBalance?.call(balance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String budgetId)? addBudgetId,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(DateTime endDate)? changeEndDate,
    TResult Function(int currencyId)? changeCurrencyId,
    TResult Function(double balance)? changeIncomeBalance,
    TResult Function(double balance)? changeExpenseBalance,
    TResult Function()? save,
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
    required TResult Function(_AddBudgetId value) addBudgetId,
    required TResult Function(_ChangeStartDate value) changeStartDate,
    required TResult Function(_ChangeEndDate value) changeEndDate,
    required TResult Function(_ChangeCurrencyId value) changeCurrencyId,
    required TResult Function(_ChangeIncomeBalance value) changeIncomeBalance,
    required TResult Function(_ChangeExpenseBalance value) changeExpenseBalance,
    required TResult Function(_Save value) save,
  }) {
    return changeIncomeBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBudgetId value)? addBudgetId,
    TResult? Function(_ChangeStartDate value)? changeStartDate,
    TResult? Function(_ChangeEndDate value)? changeEndDate,
    TResult? Function(_ChangeCurrencyId value)? changeCurrencyId,
    TResult? Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult? Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult? Function(_Save value)? save,
  }) {
    return changeIncomeBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBudgetId value)? addBudgetId,
    TResult Function(_ChangeStartDate value)? changeStartDate,
    TResult Function(_ChangeEndDate value)? changeEndDate,
    TResult Function(_ChangeCurrencyId value)? changeCurrencyId,
    TResult Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeIncomeBalance != null) {
      return changeIncomeBalance(this);
    }
    return orElse();
  }
}

abstract class _ChangeIncomeBalance implements PlanCreateEvent {
  const factory _ChangeIncomeBalance(final double balance) =
      _$ChangeIncomeBalanceImpl;

  double get balance;

  /// Create a copy of PlanCreateEvent
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
    extends _$PlanCreateEventCopyWithImpl<$Res, _$ChangeExpenseBalanceImpl>
    implements _$$ChangeExpenseBalanceImplCopyWith<$Res> {
  __$$ChangeExpenseBalanceImplCopyWithImpl(_$ChangeExpenseBalanceImpl _value,
      $Res Function(_$ChangeExpenseBalanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanCreateEvent
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
    return 'PlanCreateEvent.changeExpenseBalance(balance: $balance)';
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

  /// Create a copy of PlanCreateEvent
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
    required TResult Function(String budgetId) addBudgetId,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(DateTime endDate) changeEndDate,
    required TResult Function(int currencyId) changeCurrencyId,
    required TResult Function(double balance) changeIncomeBalance,
    required TResult Function(double balance) changeExpenseBalance,
    required TResult Function() save,
  }) {
    return changeExpenseBalance(balance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String budgetId)? addBudgetId,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(DateTime endDate)? changeEndDate,
    TResult? Function(int currencyId)? changeCurrencyId,
    TResult? Function(double balance)? changeIncomeBalance,
    TResult? Function(double balance)? changeExpenseBalance,
    TResult? Function()? save,
  }) {
    return changeExpenseBalance?.call(balance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String budgetId)? addBudgetId,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(DateTime endDate)? changeEndDate,
    TResult Function(int currencyId)? changeCurrencyId,
    TResult Function(double balance)? changeIncomeBalance,
    TResult Function(double balance)? changeExpenseBalance,
    TResult Function()? save,
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
    required TResult Function(_AddBudgetId value) addBudgetId,
    required TResult Function(_ChangeStartDate value) changeStartDate,
    required TResult Function(_ChangeEndDate value) changeEndDate,
    required TResult Function(_ChangeCurrencyId value) changeCurrencyId,
    required TResult Function(_ChangeIncomeBalance value) changeIncomeBalance,
    required TResult Function(_ChangeExpenseBalance value) changeExpenseBalance,
    required TResult Function(_Save value) save,
  }) {
    return changeExpenseBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBudgetId value)? addBudgetId,
    TResult? Function(_ChangeStartDate value)? changeStartDate,
    TResult? Function(_ChangeEndDate value)? changeEndDate,
    TResult? Function(_ChangeCurrencyId value)? changeCurrencyId,
    TResult? Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult? Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult? Function(_Save value)? save,
  }) {
    return changeExpenseBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBudgetId value)? addBudgetId,
    TResult Function(_ChangeStartDate value)? changeStartDate,
    TResult Function(_ChangeEndDate value)? changeEndDate,
    TResult Function(_ChangeCurrencyId value)? changeCurrencyId,
    TResult Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeExpenseBalance != null) {
      return changeExpenseBalance(this);
    }
    return orElse();
  }
}

abstract class _ChangeExpenseBalance implements PlanCreateEvent {
  const factory _ChangeExpenseBalance(final double balance) =
      _$ChangeExpenseBalanceImpl;

  double get balance;

  /// Create a copy of PlanCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeExpenseBalanceImplCopyWith<_$ChangeExpenseBalanceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveImplCopyWith<$Res> {
  factory _$$SaveImplCopyWith(
          _$SaveImpl value, $Res Function(_$SaveImpl) then) =
      __$$SaveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveImplCopyWithImpl<$Res>
    extends _$PlanCreateEventCopyWithImpl<$Res, _$SaveImpl>
    implements _$$SaveImplCopyWith<$Res> {
  __$$SaveImplCopyWithImpl(_$SaveImpl _value, $Res Function(_$SaveImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanCreateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SaveImpl implements _Save {
  const _$SaveImpl();

  @override
  String toString() {
    return 'PlanCreateEvent.save()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String budgetId) addBudgetId,
    required TResult Function(DateTime startDate) changeStartDate,
    required TResult Function(DateTime endDate) changeEndDate,
    required TResult Function(int currencyId) changeCurrencyId,
    required TResult Function(double balance) changeIncomeBalance,
    required TResult Function(double balance) changeExpenseBalance,
    required TResult Function() save,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String budgetId)? addBudgetId,
    TResult? Function(DateTime startDate)? changeStartDate,
    TResult? Function(DateTime endDate)? changeEndDate,
    TResult? Function(int currencyId)? changeCurrencyId,
    TResult? Function(double balance)? changeIncomeBalance,
    TResult? Function(double balance)? changeExpenseBalance,
    TResult? Function()? save,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String budgetId)? addBudgetId,
    TResult Function(DateTime startDate)? changeStartDate,
    TResult Function(DateTime endDate)? changeEndDate,
    TResult Function(int currencyId)? changeCurrencyId,
    TResult Function(double balance)? changeIncomeBalance,
    TResult Function(double balance)? changeExpenseBalance,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddBudgetId value) addBudgetId,
    required TResult Function(_ChangeStartDate value) changeStartDate,
    required TResult Function(_ChangeEndDate value) changeEndDate,
    required TResult Function(_ChangeCurrencyId value) changeCurrencyId,
    required TResult Function(_ChangeIncomeBalance value) changeIncomeBalance,
    required TResult Function(_ChangeExpenseBalance value) changeExpenseBalance,
    required TResult Function(_Save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddBudgetId value)? addBudgetId,
    TResult? Function(_ChangeStartDate value)? changeStartDate,
    TResult? Function(_ChangeEndDate value)? changeEndDate,
    TResult? Function(_ChangeCurrencyId value)? changeCurrencyId,
    TResult? Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult? Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult? Function(_Save value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddBudgetId value)? addBudgetId,
    TResult Function(_ChangeStartDate value)? changeStartDate,
    TResult Function(_ChangeEndDate value)? changeEndDate,
    TResult Function(_ChangeCurrencyId value)? changeCurrencyId,
    TResult Function(_ChangeIncomeBalance value)? changeIncomeBalance,
    TResult Function(_ChangeExpenseBalance value)? changeExpenseBalance,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements PlanCreateEvent {
  const factory _Save() = _$SaveImpl;
}

/// @nodoc
mixin _$PlanCreateState {
  Plan get plan => throw _privateConstructorUsedError;

  /// Create a copy of PlanCreateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanCreateStateCopyWith<PlanCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanCreateStateCopyWith<$Res> {
  factory $PlanCreateStateCopyWith(
          PlanCreateState value, $Res Function(PlanCreateState) then) =
      _$PlanCreateStateCopyWithImpl<$Res, PlanCreateState>;
  @useResult
  $Res call({Plan plan});

  $PlanCopyWith<$Res> get plan;
}

/// @nodoc
class _$PlanCreateStateCopyWithImpl<$Res, $Val extends PlanCreateState>
    implements $PlanCreateStateCopyWith<$Res> {
  _$PlanCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlanCreateState
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

  /// Create a copy of PlanCreateState
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
abstract class _$$PlanCreateStateImplCopyWith<$Res>
    implements $PlanCreateStateCopyWith<$Res> {
  factory _$$PlanCreateStateImplCopyWith(_$PlanCreateStateImpl value,
          $Res Function(_$PlanCreateStateImpl) then) =
      __$$PlanCreateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Plan plan});

  @override
  $PlanCopyWith<$Res> get plan;
}

/// @nodoc
class __$$PlanCreateStateImplCopyWithImpl<$Res>
    extends _$PlanCreateStateCopyWithImpl<$Res, _$PlanCreateStateImpl>
    implements _$$PlanCreateStateImplCopyWith<$Res> {
  __$$PlanCreateStateImplCopyWithImpl(
      _$PlanCreateStateImpl _value, $Res Function(_$PlanCreateStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanCreateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plan = null,
  }) {
    return _then(_$PlanCreateStateImpl(
      plan: null == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as Plan,
    ));
  }
}

/// @nodoc

class _$PlanCreateStateImpl implements _PlanCreateState {
  const _$PlanCreateStateImpl({required this.plan});

  @override
  final Plan plan;

  @override
  String toString() {
    return 'PlanCreateState(plan: $plan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanCreateStateImpl &&
            (identical(other.plan, plan) || other.plan == plan));
  }

  @override
  int get hashCode => Object.hash(runtimeType, plan);

  /// Create a copy of PlanCreateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanCreateStateImplCopyWith<_$PlanCreateStateImpl> get copyWith =>
      __$$PlanCreateStateImplCopyWithImpl<_$PlanCreateStateImpl>(
          this, _$identity);
}

abstract class _PlanCreateState implements PlanCreateState {
  const factory _PlanCreateState({required final Plan plan}) =
      _$PlanCreateStateImpl;

  @override
  Plan get plan;

  /// Create a copy of PlanCreateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanCreateStateImplCopyWith<_$PlanCreateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
