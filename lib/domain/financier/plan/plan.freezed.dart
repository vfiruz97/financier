// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Plan {
  UniqueId get id => throw _privateConstructorUsedError;
  Balance get incomeBalance => throw _privateConstructorUsedError;
  Balance get expenseBalance => throw _privateConstructorUsedError;
  String get budgetId => throw _privateConstructorUsedError;
  CurrencyId get currencyId => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Create a copy of Plan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanCopyWith<Plan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanCopyWith<$Res> {
  factory $PlanCopyWith(Plan value, $Res Function(Plan) then) =
      _$PlanCopyWithImpl<$Res, Plan>;
  @useResult
  $Res call(
      {UniqueId id,
      Balance incomeBalance,
      Balance expenseBalance,
      String budgetId,
      CurrencyId currencyId,
      DateTime startDate,
      DateTime endDate,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$PlanCopyWithImpl<$Res, $Val extends Plan>
    implements $PlanCopyWith<$Res> {
  _$PlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Plan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? incomeBalance = null,
    Object? expenseBalance = null,
    Object? budgetId = null,
    Object? currencyId = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      incomeBalance: null == incomeBalance
          ? _value.incomeBalance
          : incomeBalance // ignore: cast_nullable_to_non_nullable
              as Balance,
      expenseBalance: null == expenseBalance
          ? _value.expenseBalance
          : expenseBalance // ignore: cast_nullable_to_non_nullable
              as Balance,
      budgetId: null == budgetId
          ? _value.budgetId
          : budgetId // ignore: cast_nullable_to_non_nullable
              as String,
      currencyId: null == currencyId
          ? _value.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as CurrencyId,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlanImplCopyWith<$Res> implements $PlanCopyWith<$Res> {
  factory _$$PlanImplCopyWith(
          _$PlanImpl value, $Res Function(_$PlanImpl) then) =
      __$$PlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      Balance incomeBalance,
      Balance expenseBalance,
      String budgetId,
      CurrencyId currencyId,
      DateTime startDate,
      DateTime endDate,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$PlanImplCopyWithImpl<$Res>
    extends _$PlanCopyWithImpl<$Res, _$PlanImpl>
    implements _$$PlanImplCopyWith<$Res> {
  __$$PlanImplCopyWithImpl(_$PlanImpl _value, $Res Function(_$PlanImpl) _then)
      : super(_value, _then);

  /// Create a copy of Plan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? incomeBalance = null,
    Object? expenseBalance = null,
    Object? budgetId = null,
    Object? currencyId = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$PlanImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      incomeBalance: null == incomeBalance
          ? _value.incomeBalance
          : incomeBalance // ignore: cast_nullable_to_non_nullable
              as Balance,
      expenseBalance: null == expenseBalance
          ? _value.expenseBalance
          : expenseBalance // ignore: cast_nullable_to_non_nullable
              as Balance,
      budgetId: null == budgetId
          ? _value.budgetId
          : budgetId // ignore: cast_nullable_to_non_nullable
              as String,
      currencyId: null == currencyId
          ? _value.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as CurrencyId,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$PlanImpl extends _Plan {
  const _$PlanImpl(
      {required this.id,
      required this.incomeBalance,
      required this.expenseBalance,
      required this.budgetId,
      required this.currencyId,
      required this.startDate,
      required this.endDate,
      required this.createdAt,
      required this.updatedAt})
      : super._();

  @override
  final UniqueId id;
  @override
  final Balance incomeBalance;
  @override
  final Balance expenseBalance;
  @override
  final String budgetId;
  @override
  final CurrencyId currencyId;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Plan(id: $id, incomeBalance: $incomeBalance, expenseBalance: $expenseBalance, budgetId: $budgetId, currencyId: $currencyId, startDate: $startDate, endDate: $endDate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.incomeBalance, incomeBalance) ||
                other.incomeBalance == incomeBalance) &&
            (identical(other.expenseBalance, expenseBalance) ||
                other.expenseBalance == expenseBalance) &&
            (identical(other.budgetId, budgetId) ||
                other.budgetId == budgetId) &&
            (identical(other.currencyId, currencyId) ||
                other.currencyId == currencyId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      incomeBalance,
      expenseBalance,
      budgetId,
      currencyId,
      startDate,
      endDate,
      createdAt,
      updatedAt);

  /// Create a copy of Plan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanImplCopyWith<_$PlanImpl> get copyWith =>
      __$$PlanImplCopyWithImpl<_$PlanImpl>(this, _$identity);
}

abstract class _Plan extends Plan {
  const factory _Plan(
      {required final UniqueId id,
      required final Balance incomeBalance,
      required final Balance expenseBalance,
      required final String budgetId,
      required final CurrencyId currencyId,
      required final DateTime startDate,
      required final DateTime endDate,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$PlanImpl;
  const _Plan._() : super._();

  @override
  UniqueId get id;
  @override
  Balance get incomeBalance;
  @override
  Balance get expenseBalance;
  @override
  String get budgetId;
  @override
  CurrencyId get currencyId;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Plan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanImplCopyWith<_$PlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlanWithRelationship {
  Plan get plan => throw _privateConstructorUsedError;
  Budget? get budget => throw _privateConstructorUsedError;

  /// Create a copy of PlanWithRelationship
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanWithRelationshipCopyWith<PlanWithRelationship> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanWithRelationshipCopyWith<$Res> {
  factory $PlanWithRelationshipCopyWith(PlanWithRelationship value,
          $Res Function(PlanWithRelationship) then) =
      _$PlanWithRelationshipCopyWithImpl<$Res, PlanWithRelationship>;
  @useResult
  $Res call({Plan plan, Budget? budget});

  $PlanCopyWith<$Res> get plan;
  $BudgetCopyWith<$Res>? get budget;
}

/// @nodoc
class _$PlanWithRelationshipCopyWithImpl<$Res,
        $Val extends PlanWithRelationship>
    implements $PlanWithRelationshipCopyWith<$Res> {
  _$PlanWithRelationshipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlanWithRelationship
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plan = null,
    Object? budget = freezed,
  }) {
    return _then(_value.copyWith(
      plan: null == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as Plan,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as Budget?,
    ) as $Val);
  }

  /// Create a copy of PlanWithRelationship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlanCopyWith<$Res> get plan {
    return $PlanCopyWith<$Res>(_value.plan, (value) {
      return _then(_value.copyWith(plan: value) as $Val);
    });
  }

  /// Create a copy of PlanWithRelationship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BudgetCopyWith<$Res>? get budget {
    if (_value.budget == null) {
      return null;
    }

    return $BudgetCopyWith<$Res>(_value.budget!, (value) {
      return _then(_value.copyWith(budget: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlanWithRelationshipImplCopyWith<$Res>
    implements $PlanWithRelationshipCopyWith<$Res> {
  factory _$$PlanWithRelationshipImplCopyWith(_$PlanWithRelationshipImpl value,
          $Res Function(_$PlanWithRelationshipImpl) then) =
      __$$PlanWithRelationshipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Plan plan, Budget? budget});

  @override
  $PlanCopyWith<$Res> get plan;
  @override
  $BudgetCopyWith<$Res>? get budget;
}

/// @nodoc
class __$$PlanWithRelationshipImplCopyWithImpl<$Res>
    extends _$PlanWithRelationshipCopyWithImpl<$Res, _$PlanWithRelationshipImpl>
    implements _$$PlanWithRelationshipImplCopyWith<$Res> {
  __$$PlanWithRelationshipImplCopyWithImpl(_$PlanWithRelationshipImpl _value,
      $Res Function(_$PlanWithRelationshipImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanWithRelationship
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plan = null,
    Object? budget = freezed,
  }) {
    return _then(_$PlanWithRelationshipImpl(
      plan: null == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as Plan,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as Budget?,
    ));
  }
}

/// @nodoc

class _$PlanWithRelationshipImpl implements _PlanWithRelationship {
  const _$PlanWithRelationshipImpl({required this.plan, required this.budget});

  @override
  final Plan plan;
  @override
  final Budget? budget;

  @override
  String toString() {
    return 'PlanWithRelationship(plan: $plan, budget: $budget)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanWithRelationshipImpl &&
            (identical(other.plan, plan) || other.plan == plan) &&
            (identical(other.budget, budget) || other.budget == budget));
  }

  @override
  int get hashCode => Object.hash(runtimeType, plan, budget);

  /// Create a copy of PlanWithRelationship
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanWithRelationshipImplCopyWith<_$PlanWithRelationshipImpl>
      get copyWith =>
          __$$PlanWithRelationshipImplCopyWithImpl<_$PlanWithRelationshipImpl>(
              this, _$identity);
}

abstract class _PlanWithRelationship implements PlanWithRelationship {
  const factory _PlanWithRelationship(
      {required final Plan plan,
      required final Budget? budget}) = _$PlanWithRelationshipImpl;

  @override
  Plan get plan;
  @override
  Budget? get budget;

  /// Create a copy of PlanWithRelationship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanWithRelationshipImplCopyWith<_$PlanWithRelationshipImpl>
      get copyWith => throw _privateConstructorUsedError;
}
