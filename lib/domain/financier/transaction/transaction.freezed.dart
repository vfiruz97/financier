// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Transaction {
  UniqueId get id => throw _privateConstructorUsedError;
  String get accountId => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  Balance get balance => throw _privateConstructorUsedError;
  TransactionType get type => throw _privateConstructorUsedError;
  Description? get description => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {UniqueId id,
      String accountId,
      String? categoryId,
      Balance balance,
      TransactionType type,
      Description? description,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountId = null,
    Object? categoryId = freezed,
    Object? balance = null,
    Object? type = null,
    Object? description = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as Balance,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description?,
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
abstract class _$$TransactionImplCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$TransactionImplCopyWith(
          _$TransactionImpl value, $Res Function(_$TransactionImpl) then) =
      __$$TransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      String accountId,
      String? categoryId,
      Balance balance,
      TransactionType type,
      Description? description,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$TransactionImplCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$TransactionImpl>
    implements _$$TransactionImplCopyWith<$Res> {
  __$$TransactionImplCopyWithImpl(
      _$TransactionImpl _value, $Res Function(_$TransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountId = null,
    Object? categoryId = freezed,
    Object? balance = null,
    Object? type = null,
    Object? description = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$TransactionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as Balance,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description?,
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

class _$TransactionImpl extends _Transaction {
  const _$TransactionImpl(
      {required this.id,
      required this.accountId,
      required this.categoryId,
      required this.balance,
      required this.type,
      required this.description,
      required this.createdAt,
      required this.updatedAt})
      : super._();

  @override
  final UniqueId id;
  @override
  final String accountId;
  @override
  final String? categoryId;
  @override
  final Balance balance;
  @override
  final TransactionType type;
  @override
  final Description? description;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Transaction(id: $id, accountId: $accountId, categoryId: $categoryId, balance: $balance, type: $type, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, accountId, categoryId,
      balance, type, description, createdAt, updatedAt);

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      __$$TransactionImplCopyWithImpl<_$TransactionImpl>(this, _$identity);
}

abstract class _Transaction extends Transaction {
  const factory _Transaction(
      {required final UniqueId id,
      required final String accountId,
      required final String? categoryId,
      required final Balance balance,
      required final TransactionType type,
      required final Description? description,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$TransactionImpl;
  const _Transaction._() : super._();

  @override
  UniqueId get id;
  @override
  String get accountId;
  @override
  String? get categoryId;
  @override
  Balance get balance;
  @override
  TransactionType get type;
  @override
  Description? get description;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionWithRelationship {
  Transaction get transaction => throw _privateConstructorUsedError;
  Account? get account => throw _privateConstructorUsedError;
  TransactionCategory? get category => throw _privateConstructorUsedError;

  /// Create a copy of TransactionWithRelationship
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionWithRelationshipCopyWith<TransactionWithRelationship>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionWithRelationshipCopyWith<$Res> {
  factory $TransactionWithRelationshipCopyWith(
          TransactionWithRelationship value,
          $Res Function(TransactionWithRelationship) then) =
      _$TransactionWithRelationshipCopyWithImpl<$Res,
          TransactionWithRelationship>;
  @useResult
  $Res call(
      {Transaction transaction,
      Account? account,
      TransactionCategory? category});

  $TransactionCopyWith<$Res> get transaction;
  $AccountCopyWith<$Res>? get account;
  $TransactionCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$TransactionWithRelationshipCopyWithImpl<$Res,
        $Val extends TransactionWithRelationship>
    implements $TransactionWithRelationshipCopyWith<$Res> {
  _$TransactionWithRelationshipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionWithRelationship
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
    Object? account = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as TransactionCategory?,
    ) as $Val);
  }

  /// Create a copy of TransactionWithRelationship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res> get transaction {
    return $TransactionCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value) as $Val);
    });
  }

  /// Create a copy of TransactionWithRelationship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res>? get account {
    if (_value.account == null) {
      return null;
    }

    return $AccountCopyWith<$Res>(_value.account!, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }

  /// Create a copy of TransactionWithRelationship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionCategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $TransactionCategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionWithRelationshipImplCopyWith<$Res>
    implements $TransactionWithRelationshipCopyWith<$Res> {
  factory _$$TransactionWithRelationshipImplCopyWith(
          _$TransactionWithRelationshipImpl value,
          $Res Function(_$TransactionWithRelationshipImpl) then) =
      __$$TransactionWithRelationshipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Transaction transaction,
      Account? account,
      TransactionCategory? category});

  @override
  $TransactionCopyWith<$Res> get transaction;
  @override
  $AccountCopyWith<$Res>? get account;
  @override
  $TransactionCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$$TransactionWithRelationshipImplCopyWithImpl<$Res>
    extends _$TransactionWithRelationshipCopyWithImpl<$Res,
        _$TransactionWithRelationshipImpl>
    implements _$$TransactionWithRelationshipImplCopyWith<$Res> {
  __$$TransactionWithRelationshipImplCopyWithImpl(
      _$TransactionWithRelationshipImpl _value,
      $Res Function(_$TransactionWithRelationshipImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionWithRelationship
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
    Object? account = freezed,
    Object? category = freezed,
  }) {
    return _then(_$TransactionWithRelationshipImpl(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as TransactionCategory?,
    ));
  }
}

/// @nodoc

class _$TransactionWithRelationshipImpl
    implements _TransactionWithRelationship {
  const _$TransactionWithRelationshipImpl(
      {required this.transaction,
      required this.account,
      required this.category});

  @override
  final Transaction transaction;
  @override
  final Account? account;
  @override
  final TransactionCategory? category;

  @override
  String toString() {
    return 'TransactionWithRelationship(transaction: $transaction, account: $account, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionWithRelationshipImpl &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction, account, category);

  /// Create a copy of TransactionWithRelationship
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionWithRelationshipImplCopyWith<_$TransactionWithRelationshipImpl>
      get copyWith => __$$TransactionWithRelationshipImplCopyWithImpl<
          _$TransactionWithRelationshipImpl>(this, _$identity);
}

abstract class _TransactionWithRelationship
    implements TransactionWithRelationship {
  const factory _TransactionWithRelationship(
          {required final Transaction transaction,
          required final Account? account,
          required final TransactionCategory? category}) =
      _$TransactionWithRelationshipImpl;

  @override
  Transaction get transaction;
  @override
  Account? get account;
  @override
  TransactionCategory? get category;

  /// Create a copy of TransactionWithRelationship
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionWithRelationshipImplCopyWith<_$TransactionWithRelationshipImpl>
      get copyWith => throw _privateConstructorUsedError;
}
