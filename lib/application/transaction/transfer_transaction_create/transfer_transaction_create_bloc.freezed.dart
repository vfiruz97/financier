// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_transaction_create_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransferTransactionCreateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) assignAccountFrom,
    required TResult Function(Account account) assignAccountTo,
    required TResult Function(double amount) fixAmount,
    required TResult Function(double amount) exchangeAmount,
    required TResult Function() save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Account account)? assignAccountFrom,
    TResult? Function(Account account)? assignAccountTo,
    TResult? Function(double amount)? fixAmount,
    TResult? Function(double amount)? exchangeAmount,
    TResult? Function()? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? assignAccountFrom,
    TResult Function(Account account)? assignAccountTo,
    TResult Function(double amount)? fixAmount,
    TResult Function(double amount)? exchangeAmount,
    TResult Function()? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AssignAccountFrom value) assignAccountFrom,
    required TResult Function(_AssignAccountTo value) assignAccountTo,
    required TResult Function(_FixAmount value) fixAmount,
    required TResult Function(_ExchangeAmount value) exchangeAmount,
    required TResult Function(_Save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignAccountFrom value)? assignAccountFrom,
    TResult? Function(_AssignAccountTo value)? assignAccountTo,
    TResult? Function(_FixAmount value)? fixAmount,
    TResult? Function(_ExchangeAmount value)? exchangeAmount,
    TResult? Function(_Save value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignAccountFrom value)? assignAccountFrom,
    TResult Function(_AssignAccountTo value)? assignAccountTo,
    TResult Function(_FixAmount value)? fixAmount,
    TResult Function(_ExchangeAmount value)? exchangeAmount,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferTransactionCreateEventCopyWith<$Res> {
  factory $TransferTransactionCreateEventCopyWith(
          TransferTransactionCreateEvent value,
          $Res Function(TransferTransactionCreateEvent) then) =
      _$TransferTransactionCreateEventCopyWithImpl<$Res,
          TransferTransactionCreateEvent>;
}

/// @nodoc
class _$TransferTransactionCreateEventCopyWithImpl<$Res,
        $Val extends TransferTransactionCreateEvent>
    implements $TransferTransactionCreateEventCopyWith<$Res> {
  _$TransferTransactionCreateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransferTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AssignAccountFromImplCopyWith<$Res> {
  factory _$$AssignAccountFromImplCopyWith(_$AssignAccountFromImpl value,
          $Res Function(_$AssignAccountFromImpl) then) =
      __$$AssignAccountFromImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Account account});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$AssignAccountFromImplCopyWithImpl<$Res>
    extends _$TransferTransactionCreateEventCopyWithImpl<$Res,
        _$AssignAccountFromImpl>
    implements _$$AssignAccountFromImplCopyWith<$Res> {
  __$$AssignAccountFromImplCopyWithImpl(_$AssignAccountFromImpl _value,
      $Res Function(_$AssignAccountFromImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransferTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$AssignAccountFromImpl(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }

  /// Create a copy of TransferTransactionCreateEvent
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

class _$AssignAccountFromImpl implements _AssignAccountFrom {
  const _$AssignAccountFromImpl(this.account);

  @override
  final Account account;

  @override
  String toString() {
    return 'TransferTransactionCreateEvent.assignAccountFrom(account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignAccountFromImpl &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  /// Create a copy of TransferTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignAccountFromImplCopyWith<_$AssignAccountFromImpl> get copyWith =>
      __$$AssignAccountFromImplCopyWithImpl<_$AssignAccountFromImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) assignAccountFrom,
    required TResult Function(Account account) assignAccountTo,
    required TResult Function(double amount) fixAmount,
    required TResult Function(double amount) exchangeAmount,
    required TResult Function() save,
  }) {
    return assignAccountFrom(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Account account)? assignAccountFrom,
    TResult? Function(Account account)? assignAccountTo,
    TResult? Function(double amount)? fixAmount,
    TResult? Function(double amount)? exchangeAmount,
    TResult? Function()? save,
  }) {
    return assignAccountFrom?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? assignAccountFrom,
    TResult Function(Account account)? assignAccountTo,
    TResult Function(double amount)? fixAmount,
    TResult Function(double amount)? exchangeAmount,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (assignAccountFrom != null) {
      return assignAccountFrom(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AssignAccountFrom value) assignAccountFrom,
    required TResult Function(_AssignAccountTo value) assignAccountTo,
    required TResult Function(_FixAmount value) fixAmount,
    required TResult Function(_ExchangeAmount value) exchangeAmount,
    required TResult Function(_Save value) save,
  }) {
    return assignAccountFrom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignAccountFrom value)? assignAccountFrom,
    TResult? Function(_AssignAccountTo value)? assignAccountTo,
    TResult? Function(_FixAmount value)? fixAmount,
    TResult? Function(_ExchangeAmount value)? exchangeAmount,
    TResult? Function(_Save value)? save,
  }) {
    return assignAccountFrom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignAccountFrom value)? assignAccountFrom,
    TResult Function(_AssignAccountTo value)? assignAccountTo,
    TResult Function(_FixAmount value)? fixAmount,
    TResult Function(_ExchangeAmount value)? exchangeAmount,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (assignAccountFrom != null) {
      return assignAccountFrom(this);
    }
    return orElse();
  }
}

abstract class _AssignAccountFrom implements TransferTransactionCreateEvent {
  const factory _AssignAccountFrom(final Account account) =
      _$AssignAccountFromImpl;

  Account get account;

  /// Create a copy of TransferTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssignAccountFromImplCopyWith<_$AssignAccountFromImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssignAccountToImplCopyWith<$Res> {
  factory _$$AssignAccountToImplCopyWith(_$AssignAccountToImpl value,
          $Res Function(_$AssignAccountToImpl) then) =
      __$$AssignAccountToImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Account account});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$AssignAccountToImplCopyWithImpl<$Res>
    extends _$TransferTransactionCreateEventCopyWithImpl<$Res,
        _$AssignAccountToImpl> implements _$$AssignAccountToImplCopyWith<$Res> {
  __$$AssignAccountToImplCopyWithImpl(
      _$AssignAccountToImpl _value, $Res Function(_$AssignAccountToImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransferTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
  }) {
    return _then(_$AssignAccountToImpl(
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }

  /// Create a copy of TransferTransactionCreateEvent
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

class _$AssignAccountToImpl implements _AssignAccountTo {
  const _$AssignAccountToImpl(this.account);

  @override
  final Account account;

  @override
  String toString() {
    return 'TransferTransactionCreateEvent.assignAccountTo(account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignAccountToImpl &&
            (identical(other.account, account) || other.account == account));
  }

  @override
  int get hashCode => Object.hash(runtimeType, account);

  /// Create a copy of TransferTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignAccountToImplCopyWith<_$AssignAccountToImpl> get copyWith =>
      __$$AssignAccountToImplCopyWithImpl<_$AssignAccountToImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) assignAccountFrom,
    required TResult Function(Account account) assignAccountTo,
    required TResult Function(double amount) fixAmount,
    required TResult Function(double amount) exchangeAmount,
    required TResult Function() save,
  }) {
    return assignAccountTo(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Account account)? assignAccountFrom,
    TResult? Function(Account account)? assignAccountTo,
    TResult? Function(double amount)? fixAmount,
    TResult? Function(double amount)? exchangeAmount,
    TResult? Function()? save,
  }) {
    return assignAccountTo?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? assignAccountFrom,
    TResult Function(Account account)? assignAccountTo,
    TResult Function(double amount)? fixAmount,
    TResult Function(double amount)? exchangeAmount,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (assignAccountTo != null) {
      return assignAccountTo(account);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AssignAccountFrom value) assignAccountFrom,
    required TResult Function(_AssignAccountTo value) assignAccountTo,
    required TResult Function(_FixAmount value) fixAmount,
    required TResult Function(_ExchangeAmount value) exchangeAmount,
    required TResult Function(_Save value) save,
  }) {
    return assignAccountTo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignAccountFrom value)? assignAccountFrom,
    TResult? Function(_AssignAccountTo value)? assignAccountTo,
    TResult? Function(_FixAmount value)? fixAmount,
    TResult? Function(_ExchangeAmount value)? exchangeAmount,
    TResult? Function(_Save value)? save,
  }) {
    return assignAccountTo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignAccountFrom value)? assignAccountFrom,
    TResult Function(_AssignAccountTo value)? assignAccountTo,
    TResult Function(_FixAmount value)? fixAmount,
    TResult Function(_ExchangeAmount value)? exchangeAmount,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (assignAccountTo != null) {
      return assignAccountTo(this);
    }
    return orElse();
  }
}

abstract class _AssignAccountTo implements TransferTransactionCreateEvent {
  const factory _AssignAccountTo(final Account account) = _$AssignAccountToImpl;

  Account get account;

  /// Create a copy of TransferTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssignAccountToImplCopyWith<_$AssignAccountToImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FixAmountImplCopyWith<$Res> {
  factory _$$FixAmountImplCopyWith(
          _$FixAmountImpl value, $Res Function(_$FixAmountImpl) then) =
      __$$FixAmountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double amount});
}

/// @nodoc
class __$$FixAmountImplCopyWithImpl<$Res>
    extends _$TransferTransactionCreateEventCopyWithImpl<$Res, _$FixAmountImpl>
    implements _$$FixAmountImplCopyWith<$Res> {
  __$$FixAmountImplCopyWithImpl(
      _$FixAmountImpl _value, $Res Function(_$FixAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransferTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$FixAmountImpl(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$FixAmountImpl implements _FixAmount {
  const _$FixAmountImpl(this.amount);

  @override
  final double amount;

  @override
  String toString() {
    return 'TransferTransactionCreateEvent.fixAmount(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FixAmountImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  /// Create a copy of TransferTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FixAmountImplCopyWith<_$FixAmountImpl> get copyWith =>
      __$$FixAmountImplCopyWithImpl<_$FixAmountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) assignAccountFrom,
    required TResult Function(Account account) assignAccountTo,
    required TResult Function(double amount) fixAmount,
    required TResult Function(double amount) exchangeAmount,
    required TResult Function() save,
  }) {
    return fixAmount(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Account account)? assignAccountFrom,
    TResult? Function(Account account)? assignAccountTo,
    TResult? Function(double amount)? fixAmount,
    TResult? Function(double amount)? exchangeAmount,
    TResult? Function()? save,
  }) {
    return fixAmount?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? assignAccountFrom,
    TResult Function(Account account)? assignAccountTo,
    TResult Function(double amount)? fixAmount,
    TResult Function(double amount)? exchangeAmount,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (fixAmount != null) {
      return fixAmount(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AssignAccountFrom value) assignAccountFrom,
    required TResult Function(_AssignAccountTo value) assignAccountTo,
    required TResult Function(_FixAmount value) fixAmount,
    required TResult Function(_ExchangeAmount value) exchangeAmount,
    required TResult Function(_Save value) save,
  }) {
    return fixAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignAccountFrom value)? assignAccountFrom,
    TResult? Function(_AssignAccountTo value)? assignAccountTo,
    TResult? Function(_FixAmount value)? fixAmount,
    TResult? Function(_ExchangeAmount value)? exchangeAmount,
    TResult? Function(_Save value)? save,
  }) {
    return fixAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignAccountFrom value)? assignAccountFrom,
    TResult Function(_AssignAccountTo value)? assignAccountTo,
    TResult Function(_FixAmount value)? fixAmount,
    TResult Function(_ExchangeAmount value)? exchangeAmount,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (fixAmount != null) {
      return fixAmount(this);
    }
    return orElse();
  }
}

abstract class _FixAmount implements TransferTransactionCreateEvent {
  const factory _FixAmount(final double amount) = _$FixAmountImpl;

  double get amount;

  /// Create a copy of TransferTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FixAmountImplCopyWith<_$FixAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExchangeAmountImplCopyWith<$Res> {
  factory _$$ExchangeAmountImplCopyWith(_$ExchangeAmountImpl value,
          $Res Function(_$ExchangeAmountImpl) then) =
      __$$ExchangeAmountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double amount});
}

/// @nodoc
class __$$ExchangeAmountImplCopyWithImpl<$Res>
    extends _$TransferTransactionCreateEventCopyWithImpl<$Res,
        _$ExchangeAmountImpl> implements _$$ExchangeAmountImplCopyWith<$Res> {
  __$$ExchangeAmountImplCopyWithImpl(
      _$ExchangeAmountImpl _value, $Res Function(_$ExchangeAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransferTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$ExchangeAmountImpl(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ExchangeAmountImpl implements _ExchangeAmount {
  const _$ExchangeAmountImpl(this.amount);

  @override
  final double amount;

  @override
  String toString() {
    return 'TransferTransactionCreateEvent.exchangeAmount(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExchangeAmountImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  /// Create a copy of TransferTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExchangeAmountImplCopyWith<_$ExchangeAmountImpl> get copyWith =>
      __$$ExchangeAmountImplCopyWithImpl<_$ExchangeAmountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) assignAccountFrom,
    required TResult Function(Account account) assignAccountTo,
    required TResult Function(double amount) fixAmount,
    required TResult Function(double amount) exchangeAmount,
    required TResult Function() save,
  }) {
    return exchangeAmount(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Account account)? assignAccountFrom,
    TResult? Function(Account account)? assignAccountTo,
    TResult? Function(double amount)? fixAmount,
    TResult? Function(double amount)? exchangeAmount,
    TResult? Function()? save,
  }) {
    return exchangeAmount?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? assignAccountFrom,
    TResult Function(Account account)? assignAccountTo,
    TResult Function(double amount)? fixAmount,
    TResult Function(double amount)? exchangeAmount,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (exchangeAmount != null) {
      return exchangeAmount(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AssignAccountFrom value) assignAccountFrom,
    required TResult Function(_AssignAccountTo value) assignAccountTo,
    required TResult Function(_FixAmount value) fixAmount,
    required TResult Function(_ExchangeAmount value) exchangeAmount,
    required TResult Function(_Save value) save,
  }) {
    return exchangeAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignAccountFrom value)? assignAccountFrom,
    TResult? Function(_AssignAccountTo value)? assignAccountTo,
    TResult? Function(_FixAmount value)? fixAmount,
    TResult? Function(_ExchangeAmount value)? exchangeAmount,
    TResult? Function(_Save value)? save,
  }) {
    return exchangeAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignAccountFrom value)? assignAccountFrom,
    TResult Function(_AssignAccountTo value)? assignAccountTo,
    TResult Function(_FixAmount value)? fixAmount,
    TResult Function(_ExchangeAmount value)? exchangeAmount,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (exchangeAmount != null) {
      return exchangeAmount(this);
    }
    return orElse();
  }
}

abstract class _ExchangeAmount implements TransferTransactionCreateEvent {
  const factory _ExchangeAmount(final double amount) = _$ExchangeAmountImpl;

  double get amount;

  /// Create a copy of TransferTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExchangeAmountImplCopyWith<_$ExchangeAmountImpl> get copyWith =>
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
    extends _$TransferTransactionCreateEventCopyWithImpl<$Res, _$SaveImpl>
    implements _$$SaveImplCopyWith<$Res> {
  __$$SaveImplCopyWithImpl(_$SaveImpl _value, $Res Function(_$SaveImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransferTransactionCreateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SaveImpl implements _Save {
  const _$SaveImpl();

  @override
  String toString() {
    return 'TransferTransactionCreateEvent.save()';
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
    required TResult Function(Account account) assignAccountFrom,
    required TResult Function(Account account) assignAccountTo,
    required TResult Function(double amount) fixAmount,
    required TResult Function(double amount) exchangeAmount,
    required TResult Function() save,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Account account)? assignAccountFrom,
    TResult? Function(Account account)? assignAccountTo,
    TResult? Function(double amount)? fixAmount,
    TResult? Function(double amount)? exchangeAmount,
    TResult? Function()? save,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? assignAccountFrom,
    TResult Function(Account account)? assignAccountTo,
    TResult Function(double amount)? fixAmount,
    TResult Function(double amount)? exchangeAmount,
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
    required TResult Function(_AssignAccountFrom value) assignAccountFrom,
    required TResult Function(_AssignAccountTo value) assignAccountTo,
    required TResult Function(_FixAmount value) fixAmount,
    required TResult Function(_ExchangeAmount value) exchangeAmount,
    required TResult Function(_Save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignAccountFrom value)? assignAccountFrom,
    TResult? Function(_AssignAccountTo value)? assignAccountTo,
    TResult? Function(_FixAmount value)? fixAmount,
    TResult? Function(_ExchangeAmount value)? exchangeAmount,
    TResult? Function(_Save value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignAccountFrom value)? assignAccountFrom,
    TResult Function(_AssignAccountTo value)? assignAccountTo,
    TResult Function(_FixAmount value)? fixAmount,
    TResult Function(_ExchangeAmount value)? exchangeAmount,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements TransferTransactionCreateEvent {
  const factory _Save() = _$SaveImpl;
}

/// @nodoc
mixin _$TransferTransactionCreateState {
  Account get accountFrom => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  Account get accountTo => throw _privateConstructorUsedError;
  double get exchangedAmount => throw _privateConstructorUsedError;
  Transaction get expenseTransaction => throw _privateConstructorUsedError;
  Transaction get incomeTransaction => throw _privateConstructorUsedError;

  /// Create a copy of TransferTransactionCreateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransferTransactionCreateStateCopyWith<TransferTransactionCreateState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferTransactionCreateStateCopyWith<$Res> {
  factory $TransferTransactionCreateStateCopyWith(
          TransferTransactionCreateState value,
          $Res Function(TransferTransactionCreateState) then) =
      _$TransferTransactionCreateStateCopyWithImpl<$Res,
          TransferTransactionCreateState>;
  @useResult
  $Res call(
      {Account accountFrom,
      double amount,
      Account accountTo,
      double exchangedAmount,
      Transaction expenseTransaction,
      Transaction incomeTransaction});

  $AccountCopyWith<$Res> get accountFrom;
  $AccountCopyWith<$Res> get accountTo;
  $TransactionCopyWith<$Res> get expenseTransaction;
  $TransactionCopyWith<$Res> get incomeTransaction;
}

/// @nodoc
class _$TransferTransactionCreateStateCopyWithImpl<$Res,
        $Val extends TransferTransactionCreateState>
    implements $TransferTransactionCreateStateCopyWith<$Res> {
  _$TransferTransactionCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransferTransactionCreateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountFrom = null,
    Object? amount = null,
    Object? accountTo = null,
    Object? exchangedAmount = null,
    Object? expenseTransaction = null,
    Object? incomeTransaction = null,
  }) {
    return _then(_value.copyWith(
      accountFrom: null == accountFrom
          ? _value.accountFrom
          : accountFrom // ignore: cast_nullable_to_non_nullable
              as Account,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      accountTo: null == accountTo
          ? _value.accountTo
          : accountTo // ignore: cast_nullable_to_non_nullable
              as Account,
      exchangedAmount: null == exchangedAmount
          ? _value.exchangedAmount
          : exchangedAmount // ignore: cast_nullable_to_non_nullable
              as double,
      expenseTransaction: null == expenseTransaction
          ? _value.expenseTransaction
          : expenseTransaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
      incomeTransaction: null == incomeTransaction
          ? _value.incomeTransaction
          : incomeTransaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ) as $Val);
  }

  /// Create a copy of TransferTransactionCreateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get accountFrom {
    return $AccountCopyWith<$Res>(_value.accountFrom, (value) {
      return _then(_value.copyWith(accountFrom: value) as $Val);
    });
  }

  /// Create a copy of TransferTransactionCreateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get accountTo {
    return $AccountCopyWith<$Res>(_value.accountTo, (value) {
      return _then(_value.copyWith(accountTo: value) as $Val);
    });
  }

  /// Create a copy of TransferTransactionCreateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res> get expenseTransaction {
    return $TransactionCopyWith<$Res>(_value.expenseTransaction, (value) {
      return _then(_value.copyWith(expenseTransaction: value) as $Val);
    });
  }

  /// Create a copy of TransferTransactionCreateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res> get incomeTransaction {
    return $TransactionCopyWith<$Res>(_value.incomeTransaction, (value) {
      return _then(_value.copyWith(incomeTransaction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransferTransactionCreateStateImplCopyWith<$Res>
    implements $TransferTransactionCreateStateCopyWith<$Res> {
  factory _$$TransferTransactionCreateStateImplCopyWith(
          _$TransferTransactionCreateStateImpl value,
          $Res Function(_$TransferTransactionCreateStateImpl) then) =
      __$$TransferTransactionCreateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Account accountFrom,
      double amount,
      Account accountTo,
      double exchangedAmount,
      Transaction expenseTransaction,
      Transaction incomeTransaction});

  @override
  $AccountCopyWith<$Res> get accountFrom;
  @override
  $AccountCopyWith<$Res> get accountTo;
  @override
  $TransactionCopyWith<$Res> get expenseTransaction;
  @override
  $TransactionCopyWith<$Res> get incomeTransaction;
}

/// @nodoc
class __$$TransferTransactionCreateStateImplCopyWithImpl<$Res>
    extends _$TransferTransactionCreateStateCopyWithImpl<$Res,
        _$TransferTransactionCreateStateImpl>
    implements _$$TransferTransactionCreateStateImplCopyWith<$Res> {
  __$$TransferTransactionCreateStateImplCopyWithImpl(
      _$TransferTransactionCreateStateImpl _value,
      $Res Function(_$TransferTransactionCreateStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransferTransactionCreateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountFrom = null,
    Object? amount = null,
    Object? accountTo = null,
    Object? exchangedAmount = null,
    Object? expenseTransaction = null,
    Object? incomeTransaction = null,
  }) {
    return _then(_$TransferTransactionCreateStateImpl(
      accountFrom: null == accountFrom
          ? _value.accountFrom
          : accountFrom // ignore: cast_nullable_to_non_nullable
              as Account,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      accountTo: null == accountTo
          ? _value.accountTo
          : accountTo // ignore: cast_nullable_to_non_nullable
              as Account,
      exchangedAmount: null == exchangedAmount
          ? _value.exchangedAmount
          : exchangedAmount // ignore: cast_nullable_to_non_nullable
              as double,
      expenseTransaction: null == expenseTransaction
          ? _value.expenseTransaction
          : expenseTransaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
      incomeTransaction: null == incomeTransaction
          ? _value.incomeTransaction
          : incomeTransaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ));
  }
}

/// @nodoc

class _$TransferTransactionCreateStateImpl
    implements _TransferTransactionCreateState {
  const _$TransferTransactionCreateStateImpl(
      {required this.accountFrom,
      required this.amount,
      required this.accountTo,
      required this.exchangedAmount,
      required this.expenseTransaction,
      required this.incomeTransaction});

  @override
  final Account accountFrom;
  @override
  final double amount;
  @override
  final Account accountTo;
  @override
  final double exchangedAmount;
  @override
  final Transaction expenseTransaction;
  @override
  final Transaction incomeTransaction;

  @override
  String toString() {
    return 'TransferTransactionCreateState(accountFrom: $accountFrom, amount: $amount, accountTo: $accountTo, exchangedAmount: $exchangedAmount, expenseTransaction: $expenseTransaction, incomeTransaction: $incomeTransaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferTransactionCreateStateImpl &&
            (identical(other.accountFrom, accountFrom) ||
                other.accountFrom == accountFrom) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.accountTo, accountTo) ||
                other.accountTo == accountTo) &&
            (identical(other.exchangedAmount, exchangedAmount) ||
                other.exchangedAmount == exchangedAmount) &&
            (identical(other.expenseTransaction, expenseTransaction) ||
                other.expenseTransaction == expenseTransaction) &&
            (identical(other.incomeTransaction, incomeTransaction) ||
                other.incomeTransaction == incomeTransaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountFrom, amount, accountTo,
      exchangedAmount, expenseTransaction, incomeTransaction);

  /// Create a copy of TransferTransactionCreateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferTransactionCreateStateImplCopyWith<
          _$TransferTransactionCreateStateImpl>
      get copyWith => __$$TransferTransactionCreateStateImplCopyWithImpl<
          _$TransferTransactionCreateStateImpl>(this, _$identity);
}

abstract class _TransferTransactionCreateState
    implements TransferTransactionCreateState {
  const factory _TransferTransactionCreateState(
          {required final Account accountFrom,
          required final double amount,
          required final Account accountTo,
          required final double exchangedAmount,
          required final Transaction expenseTransaction,
          required final Transaction incomeTransaction}) =
      _$TransferTransactionCreateStateImpl;

  @override
  Account get accountFrom;
  @override
  double get amount;
  @override
  Account get accountTo;
  @override
  double get exchangedAmount;
  @override
  Transaction get expenseTransaction;
  @override
  Transaction get incomeTransaction;

  /// Create a copy of TransferTransactionCreateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransferTransactionCreateStateImplCopyWith<
          _$TransferTransactionCreateStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
