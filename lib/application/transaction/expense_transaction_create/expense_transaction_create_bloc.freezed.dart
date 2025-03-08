// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_transaction_create_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExpenseTransactionCreateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) assignAccount,
    required TResult Function(String categoryId) assignCategoryId,
    required TResult Function(double balance) fixBalance,
    required TResult Function() save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Account account)? assignAccount,
    TResult? Function(String categoryId)? assignCategoryId,
    TResult? Function(double balance)? fixBalance,
    TResult? Function()? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? assignAccount,
    TResult Function(String categoryId)? assignCategoryId,
    TResult Function(double balance)? fixBalance,
    TResult Function()? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AssignAccount value) assignAccount,
    required TResult Function(_AssignCategoryId value) assignCategoryId,
    required TResult Function(_FixBalance value) fixBalance,
    required TResult Function(_Save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignAccount value)? assignAccount,
    TResult? Function(_AssignCategoryId value)? assignCategoryId,
    TResult? Function(_FixBalance value)? fixBalance,
    TResult? Function(_Save value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignAccount value)? assignAccount,
    TResult Function(_AssignCategoryId value)? assignCategoryId,
    TResult Function(_FixBalance value)? fixBalance,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseTransactionCreateEventCopyWith<$Res> {
  factory $ExpenseTransactionCreateEventCopyWith(
          ExpenseTransactionCreateEvent value,
          $Res Function(ExpenseTransactionCreateEvent) then) =
      _$ExpenseTransactionCreateEventCopyWithImpl<$Res,
          ExpenseTransactionCreateEvent>;
}

/// @nodoc
class _$ExpenseTransactionCreateEventCopyWithImpl<$Res,
        $Val extends ExpenseTransactionCreateEvent>
    implements $ExpenseTransactionCreateEventCopyWith<$Res> {
  _$ExpenseTransactionCreateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExpenseTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AssignAccountImplCopyWith<$Res> {
  factory _$$AssignAccountImplCopyWith(
          _$AssignAccountImpl value, $Res Function(_$AssignAccountImpl) then) =
      __$$AssignAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Account account});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$AssignAccountImplCopyWithImpl<$Res>
    extends _$ExpenseTransactionCreateEventCopyWithImpl<$Res,
        _$AssignAccountImpl> implements _$$AssignAccountImplCopyWith<$Res> {
  __$$AssignAccountImplCopyWithImpl(
      _$AssignAccountImpl _value, $Res Function(_$AssignAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpenseTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$AssignAccountImpl(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }

  /// Create a copy of ExpenseTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc

class _$AssignAccountImpl implements _AssignAccount {
  const _$AssignAccountImpl(this.account);

  @override
  final Account account;

  @override
  String toString() {
    return 'ExpenseTransactionCreateEvent.assignAccount(account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignAccountImpl &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  /// Create a copy of ExpenseTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignAccountImplCopyWith<_$AssignAccountImpl> get copyWith =>
      __$$AssignAccountImplCopyWithImpl<_$AssignAccountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) assignAccount,
    required TResult Function(String categoryId) assignCategoryId,
    required TResult Function(double balance) fixBalance,
    required TResult Function() save,
  }) {
    return assignAccount(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Account account)? assignAccount,
    TResult? Function(String categoryId)? assignCategoryId,
    TResult? Function(double balance)? fixBalance,
    TResult? Function()? save,
  }) {
    return assignAccount?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? assignAccount,
    TResult Function(String categoryId)? assignCategoryId,
    TResult Function(double balance)? fixBalance,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (assignAccount != null) {
      return assignAccount(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AssignAccount value) assignAccount,
    required TResult Function(_AssignCategoryId value) assignCategoryId,
    required TResult Function(_FixBalance value) fixBalance,
    required TResult Function(_Save value) save,
  }) {
    return assignAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignAccount value)? assignAccount,
    TResult? Function(_AssignCategoryId value)? assignCategoryId,
    TResult? Function(_FixBalance value)? fixBalance,
    TResult? Function(_Save value)? save,
  }) {
    return assignAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignAccount value)? assignAccount,
    TResult Function(_AssignCategoryId value)? assignCategoryId,
    TResult Function(_FixBalance value)? fixBalance,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (assignAccount != null) {
      return assignAccount(this);
    }
    return orElse();
  }
}

abstract class _AssignAccount implements ExpenseTransactionCreateEvent {
  const factory _AssignAccount(final Account account) = _$AssignAccountImpl;

  Account get account;

  /// Create a copy of ExpenseTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssignAccountImplCopyWith<_$AssignAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssignCategoryIdImplCopyWith<$Res> {
  factory _$$AssignCategoryIdImplCopyWith(_$AssignCategoryIdImpl value,
          $Res Function(_$AssignCategoryIdImpl) then) =
      __$$AssignCategoryIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryId});
}

/// @nodoc
class __$$AssignCategoryIdImplCopyWithImpl<$Res>
    extends _$ExpenseTransactionCreateEventCopyWithImpl<$Res,
        _$AssignCategoryIdImpl>
    implements _$$AssignCategoryIdImplCopyWith<$Res> {
  __$$AssignCategoryIdImplCopyWithImpl(_$AssignCategoryIdImpl _value,
      $Res Function(_$AssignCategoryIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpenseTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$AssignCategoryIdImpl(
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AssignCategoryIdImpl implements _AssignCategoryId {
  const _$AssignCategoryIdImpl(this.categoryId);

  @override
  final String categoryId;

  @override
  String toString() {
    return 'ExpenseTransactionCreateEvent.assignCategoryId(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignCategoryIdImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  /// Create a copy of ExpenseTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignCategoryIdImplCopyWith<_$AssignCategoryIdImpl> get copyWith =>
      __$$AssignCategoryIdImplCopyWithImpl<_$AssignCategoryIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) assignAccount,
    required TResult Function(String categoryId) assignCategoryId,
    required TResult Function(double balance) fixBalance,
    required TResult Function() save,
  }) {
    return assignCategoryId(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Account account)? assignAccount,
    TResult? Function(String categoryId)? assignCategoryId,
    TResult? Function(double balance)? fixBalance,
    TResult? Function()? save,
  }) {
    return assignCategoryId?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? assignAccount,
    TResult Function(String categoryId)? assignCategoryId,
    TResult Function(double balance)? fixBalance,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (assignCategoryId != null) {
      return assignCategoryId(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AssignAccount value) assignAccount,
    required TResult Function(_AssignCategoryId value) assignCategoryId,
    required TResult Function(_FixBalance value) fixBalance,
    required TResult Function(_Save value) save,
  }) {
    return assignCategoryId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignAccount value)? assignAccount,
    TResult? Function(_AssignCategoryId value)? assignCategoryId,
    TResult? Function(_FixBalance value)? fixBalance,
    TResult? Function(_Save value)? save,
  }) {
    return assignCategoryId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignAccount value)? assignAccount,
    TResult Function(_AssignCategoryId value)? assignCategoryId,
    TResult Function(_FixBalance value)? fixBalance,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (assignCategoryId != null) {
      return assignCategoryId(this);
    }
    return orElse();
  }
}

abstract class _AssignCategoryId implements ExpenseTransactionCreateEvent {
  const factory _AssignCategoryId(final String categoryId) =
      _$AssignCategoryIdImpl;

  String get categoryId;

  /// Create a copy of ExpenseTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssignCategoryIdImplCopyWith<_$AssignCategoryIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FixBalanceImplCopyWith<$Res> {
  factory _$$FixBalanceImplCopyWith(
          _$FixBalanceImpl value, $Res Function(_$FixBalanceImpl) then) =
      __$$FixBalanceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double balance});
}

/// @nodoc
class __$$FixBalanceImplCopyWithImpl<$Res>
    extends _$ExpenseTransactionCreateEventCopyWithImpl<$Res, _$FixBalanceImpl>
    implements _$$FixBalanceImplCopyWith<$Res> {
  __$$FixBalanceImplCopyWithImpl(
      _$FixBalanceImpl _value, $Res Function(_$FixBalanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpenseTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
  }) {
    return _then(_$FixBalanceImpl(
      null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$FixBalanceImpl implements _FixBalance {
  const _$FixBalanceImpl(this.balance);

  @override
  final double balance;

  @override
  String toString() {
    return 'ExpenseTransactionCreateEvent.fixBalance(balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FixBalanceImpl &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balance);

  /// Create a copy of ExpenseTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FixBalanceImplCopyWith<_$FixBalanceImpl> get copyWith =>
      __$$FixBalanceImplCopyWithImpl<_$FixBalanceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) assignAccount,
    required TResult Function(String categoryId) assignCategoryId,
    required TResult Function(double balance) fixBalance,
    required TResult Function() save,
  }) {
    return fixBalance(balance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Account account)? assignAccount,
    TResult? Function(String categoryId)? assignCategoryId,
    TResult? Function(double balance)? fixBalance,
    TResult? Function()? save,
  }) {
    return fixBalance?.call(balance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? assignAccount,
    TResult Function(String categoryId)? assignCategoryId,
    TResult Function(double balance)? fixBalance,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (fixBalance != null) {
      return fixBalance(balance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AssignAccount value) assignAccount,
    required TResult Function(_AssignCategoryId value) assignCategoryId,
    required TResult Function(_FixBalance value) fixBalance,
    required TResult Function(_Save value) save,
  }) {
    return fixBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignAccount value)? assignAccount,
    TResult? Function(_AssignCategoryId value)? assignCategoryId,
    TResult? Function(_FixBalance value)? fixBalance,
    TResult? Function(_Save value)? save,
  }) {
    return fixBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignAccount value)? assignAccount,
    TResult Function(_AssignCategoryId value)? assignCategoryId,
    TResult Function(_FixBalance value)? fixBalance,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (fixBalance != null) {
      return fixBalance(this);
    }
    return orElse();
  }
}

abstract class _FixBalance implements ExpenseTransactionCreateEvent {
  const factory _FixBalance(final double balance) = _$FixBalanceImpl;

  double get balance;

  /// Create a copy of ExpenseTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FixBalanceImplCopyWith<_$FixBalanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveImplCopyWith<$Res> {
  factory _$$SaveImplCopyWith(
          _$SaveImpl value, $Res Function(_$SaveImpl) then) =
      __$$SaveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveImplCopyWithImpl<$Res>
    extends _$ExpenseTransactionCreateEventCopyWithImpl<$Res, _$SaveImpl>
    implements _$$SaveImplCopyWith<$Res> {
  __$$SaveImplCopyWithImpl(_$SaveImpl _value, $Res Function(_$SaveImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpenseTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SaveImpl implements _Save {
  const _$SaveImpl();

  @override
  String toString() {
    return 'ExpenseTransactionCreateEvent.save()';
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
    required TResult Function(Account account) assignAccount,
    required TResult Function(String categoryId) assignCategoryId,
    required TResult Function(double balance) fixBalance,
    required TResult Function() save,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Account account)? assignAccount,
    TResult? Function(String categoryId)? assignCategoryId,
    TResult? Function(double balance)? fixBalance,
    TResult? Function()? save,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? assignAccount,
    TResult Function(String categoryId)? assignCategoryId,
    TResult Function(double balance)? fixBalance,
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
    required TResult Function(_AssignAccount value) assignAccount,
    required TResult Function(_AssignCategoryId value) assignCategoryId,
    required TResult Function(_FixBalance value) fixBalance,
    required TResult Function(_Save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignAccount value)? assignAccount,
    TResult? Function(_AssignCategoryId value)? assignCategoryId,
    TResult? Function(_FixBalance value)? fixBalance,
    TResult? Function(_Save value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignAccount value)? assignAccount,
    TResult Function(_AssignCategoryId value)? assignCategoryId,
    TResult Function(_FixBalance value)? fixBalance,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements ExpenseTransactionCreateEvent {
  const factory _Save() = _$SaveImpl;
}

/// @nodoc
mixin _$ExpenseTransactionCreateState {
  Transaction get transaction => throw _privateConstructorUsedError;
  Account get account => throw _privateConstructorUsedError;
  Option<Either<TransactionFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  /// Create a copy of ExpenseTransactionCreateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExpenseTransactionCreateStateCopyWith<ExpenseTransactionCreateState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseTransactionCreateStateCopyWith<$Res> {
  factory $ExpenseTransactionCreateStateCopyWith(
          ExpenseTransactionCreateState value,
          $Res Function(ExpenseTransactionCreateState) then) =
      _$ExpenseTransactionCreateStateCopyWithImpl<$Res,
          ExpenseTransactionCreateState>;
  @useResult
  $Res call(
      {Transaction transaction,
      Account account,
      Option<Either<TransactionFailure, Unit>> failureOrSuccessOption});

  $TransactionCopyWith<$Res> get transaction;
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$ExpenseTransactionCreateStateCopyWithImpl<$Res,
        $Val extends ExpenseTransactionCreateState>
    implements $ExpenseTransactionCreateStateCopyWith<$Res> {
  _$ExpenseTransactionCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExpenseTransactionCreateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
    Object? account = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TransactionFailure, Unit>>,
    ) as $Val);
  }

  /// Create a copy of ExpenseTransactionCreateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res> get transaction {
    return $TransactionCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value) as $Val);
    });
  }

  /// Create a copy of ExpenseTransactionCreateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExpenseTransactionCreateStateImplCopyWith<$Res>
    implements $ExpenseTransactionCreateStateCopyWith<$Res> {
  factory _$$ExpenseTransactionCreateStateImplCopyWith(
          _$ExpenseTransactionCreateStateImpl value,
          $Res Function(_$ExpenseTransactionCreateStateImpl) then) =
      __$$ExpenseTransactionCreateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Transaction transaction,
      Account account,
      Option<Either<TransactionFailure, Unit>> failureOrSuccessOption});

  @override
  $TransactionCopyWith<$Res> get transaction;
  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$ExpenseTransactionCreateStateImplCopyWithImpl<$Res>
    extends _$ExpenseTransactionCreateStateCopyWithImpl<$Res,
        _$ExpenseTransactionCreateStateImpl>
    implements _$$ExpenseTransactionCreateStateImplCopyWith<$Res> {
  __$$ExpenseTransactionCreateStateImplCopyWithImpl(
      _$ExpenseTransactionCreateStateImpl _value,
      $Res Function(_$ExpenseTransactionCreateStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpenseTransactionCreateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
    Object? account = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$ExpenseTransactionCreateStateImpl(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TransactionFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$ExpenseTransactionCreateStateImpl
    implements _ExpenseTransactionCreateState {
  const _$ExpenseTransactionCreateStateImpl(
      {required this.transaction,
      required this.account,
      required this.failureOrSuccessOption});

  @override
  final Transaction transaction;
  @override
  final Account account;
  @override
  final Option<Either<TransactionFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'ExpenseTransactionCreateState(transaction: $transaction, account: $account, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseTransactionCreateStateImpl &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, transaction, account, failureOrSuccessOption);

  /// Create a copy of ExpenseTransactionCreateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseTransactionCreateStateImplCopyWith<
          _$ExpenseTransactionCreateStateImpl>
      get copyWith => __$$ExpenseTransactionCreateStateImplCopyWithImpl<
          _$ExpenseTransactionCreateStateImpl>(this, _$identity);
}

abstract class _ExpenseTransactionCreateState
    implements ExpenseTransactionCreateState {
  const factory _ExpenseTransactionCreateState(
      {required final Transaction transaction,
      required final Account account,
      required final Option<Either<TransactionFailure, Unit>>
          failureOrSuccessOption}) = _$ExpenseTransactionCreateStateImpl;

  @override
  Transaction get transaction;
  @override
  Account get account;
  @override
  Option<Either<TransactionFailure, Unit>> get failureOrSuccessOption;

  /// Create a copy of ExpenseTransactionCreateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExpenseTransactionCreateStateImplCopyWith<
          _$ExpenseTransactionCreateStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
