// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Account {
  UniqueId get id => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  String get budgetId => throw _privateConstructorUsedError;
  CurrencyId get currencyId => throw _privateConstructorUsedError;
  Balance get balance => throw _privateConstructorUsedError;
  IconAvatar get iconAvatar => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call(
      {UniqueId id,
      Name name,
      String budgetId,
      CurrencyId currencyId,
      Balance balance,
      IconAvatar iconAvatar,
      DateTime? deletedAt,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res, $Val extends Account>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? budgetId = null,
    Object? currencyId = null,
    Object? balance = null,
    Object? iconAvatar = null,
    Object? deletedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      budgetId: null == budgetId
          ? _value.budgetId
          : budgetId // ignore: cast_nullable_to_non_nullable
              as String,
      currencyId: null == currencyId
          ? _value.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as CurrencyId,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as Balance,
      iconAvatar: null == iconAvatar
          ? _value.iconAvatar
          : iconAvatar // ignore: cast_nullable_to_non_nullable
              as IconAvatar,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$$AccountImplCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$AccountImplCopyWith(
          _$AccountImpl value, $Res Function(_$AccountImpl) then) =
      __$$AccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      Name name,
      String budgetId,
      CurrencyId currencyId,
      Balance balance,
      IconAvatar iconAvatar,
      DateTime? deletedAt,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$AccountImplCopyWithImpl<$Res>
    extends _$AccountCopyWithImpl<$Res, _$AccountImpl>
    implements _$$AccountImplCopyWith<$Res> {
  __$$AccountImplCopyWithImpl(
      _$AccountImpl _value, $Res Function(_$AccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? budgetId = null,
    Object? currencyId = null,
    Object? balance = null,
    Object? iconAvatar = null,
    Object? deletedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$AccountImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      budgetId: null == budgetId
          ? _value.budgetId
          : budgetId // ignore: cast_nullable_to_non_nullable
              as String,
      currencyId: null == currencyId
          ? _value.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as CurrencyId,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as Balance,
      iconAvatar: null == iconAvatar
          ? _value.iconAvatar
          : iconAvatar // ignore: cast_nullable_to_non_nullable
              as IconAvatar,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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

class _$AccountImpl implements _Account {
  const _$AccountImpl(
      {required this.id,
      required this.name,
      required this.budgetId,
      required this.currencyId,
      required this.balance,
      required this.iconAvatar,
      required this.deletedAt,
      required this.createdAt,
      required this.updatedAt});

  @override
  final UniqueId id;
  @override
  final Name name;
  @override
  final String budgetId;
  @override
  final CurrencyId currencyId;
  @override
  final Balance balance;
  @override
  final IconAvatar iconAvatar;
  @override
  final DateTime? deletedAt;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Account(id: $id, name: $name, budgetId: $budgetId, currencyId: $currencyId, balance: $balance, iconAvatar: $iconAvatar, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.budgetId, budgetId) ||
                other.budgetId == budgetId) &&
            (identical(other.currencyId, currencyId) ||
                other.currencyId == currencyId) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.iconAvatar, iconAvatar) ||
                other.iconAvatar == iconAvatar) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, budgetId, currencyId,
      balance, iconAvatar, deletedAt, createdAt, updatedAt);

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      __$$AccountImplCopyWithImpl<_$AccountImpl>(this, _$identity);
}

abstract class _Account implements Account {
  const factory _Account(
      {required final UniqueId id,
      required final Name name,
      required final String budgetId,
      required final CurrencyId currencyId,
      required final Balance balance,
      required final IconAvatar iconAvatar,
      required final DateTime? deletedAt,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$AccountImpl;

  @override
  UniqueId get id;
  @override
  Name get name;
  @override
  String get budgetId;
  @override
  CurrencyId get currencyId;
  @override
  Balance get balance;
  @override
  IconAvatar get iconAvatar;
  @override
  DateTime? get deletedAt;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountWithRelationship {
  Account get account => throw _privateConstructorUsedError;
  Budget? get budget => throw _privateConstructorUsedError;

  /// Create a copy of AccountWithRelationship
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountWithRelationshipCopyWith<AccountWithRelationship> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountWithRelationshipCopyWith<$Res> {
  factory $AccountWithRelationshipCopyWith(AccountWithRelationship value,
          $Res Function(AccountWithRelationship) then) =
      _$AccountWithRelationshipCopyWithImpl<$Res, AccountWithRelationship>;
  @useResult
  $Res call({Account account, Budget? budget});

  $AccountCopyWith<$Res> get account;
  $BudgetCopyWith<$Res>? get budget;
}

/// @nodoc
class _$AccountWithRelationshipCopyWithImpl<$Res,
        $Val extends AccountWithRelationship>
    implements $AccountWithRelationshipCopyWith<$Res> {
  _$AccountWithRelationshipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountWithRelationship
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? budget = freezed,
  }) {
    return _then(_value.copyWith(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as Budget?,
    ) as $Val);
  }

  /// Create a copy of AccountWithRelationship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }

  /// Create a copy of AccountWithRelationship
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
abstract class _$$AccountWithRelationshipImplCopyWith<$Res>
    implements $AccountWithRelationshipCopyWith<$Res> {
  factory _$$AccountWithRelationshipImplCopyWith(
          _$AccountWithRelationshipImpl value,
          $Res Function(_$AccountWithRelationshipImpl) then) =
      __$$AccountWithRelationshipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Account account, Budget? budget});

  @override
  $AccountCopyWith<$Res> get account;
  @override
  $BudgetCopyWith<$Res>? get budget;
}

/// @nodoc
class __$$AccountWithRelationshipImplCopyWithImpl<$Res>
    extends _$AccountWithRelationshipCopyWithImpl<$Res,
        _$AccountWithRelationshipImpl>
    implements _$$AccountWithRelationshipImplCopyWith<$Res> {
  __$$AccountWithRelationshipImplCopyWithImpl(
      _$AccountWithRelationshipImpl _value,
      $Res Function(_$AccountWithRelationshipImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountWithRelationship
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? budget = freezed,
  }) {
    return _then(_$AccountWithRelationshipImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      budget: freezed == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as Budget?,
    ));
  }
}

/// @nodoc

class _$AccountWithRelationshipImpl implements _AccountWithRelationship {
  const _$AccountWithRelationshipImpl(
      {required this.account, required this.budget});

  @override
  final Account account;
  @override
  final Budget? budget;

  @override
  String toString() {
    return 'AccountWithRelationship(account: $account, budget: $budget)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountWithRelationshipImpl &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.budget, budget) || other.budget == budget));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account, budget);

  /// Create a copy of AccountWithRelationship
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountWithRelationshipImplCopyWith<_$AccountWithRelationshipImpl>
      get copyWith => __$$AccountWithRelationshipImplCopyWithImpl<
          _$AccountWithRelationshipImpl>(this, _$identity);
}

abstract class _AccountWithRelationship implements AccountWithRelationship {
  const factory _AccountWithRelationship(
      {required final Account account,
      required final Budget? budget}) = _$AccountWithRelationshipImpl;

  @override
  Account get account;
  @override
  Budget? get budget;

  /// Create a copy of AccountWithRelationship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountWithRelationshipImplCopyWith<_$AccountWithRelationshipImpl>
      get copyWith => throw _privateConstructorUsedError;
}
