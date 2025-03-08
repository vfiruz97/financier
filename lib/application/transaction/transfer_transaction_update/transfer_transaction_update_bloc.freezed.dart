// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_transaction_update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransferTransactionUpdateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime createdAt) changeCreatedAt,
    required TResult Function(double amount) changeAmount,
    required TResult Function(String descriptionStr) changeDescription,
    required TResult Function(Transaction transaction) assignTransaction,
    required TResult Function() update,
    required TResult Function() delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime createdAt)? changeCreatedAt,
    TResult? Function(double amount)? changeAmount,
    TResult? Function(String descriptionStr)? changeDescription,
    TResult? Function(Transaction transaction)? assignTransaction,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime createdAt)? changeCreatedAt,
    TResult Function(double amount)? changeAmount,
    TResult Function(String descriptionStr)? changeDescription,
    TResult Function(Transaction transaction)? assignTransaction,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCreatedAt value) changeCreatedAt,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_AssignTransaction value) assignTransaction,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCreatedAt value)? changeCreatedAt,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeDescription value)? changeDescription,
    TResult? Function(_AssignTransaction value)? assignTransaction,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCreatedAt value)? changeCreatedAt,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_AssignTransaction value)? assignTransaction,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferTransactionUpdateEventCopyWith<$Res> {
  factory $TransferTransactionUpdateEventCopyWith(
          TransferTransactionUpdateEvent value,
          $Res Function(TransferTransactionUpdateEvent) then) =
      _$TransferTransactionUpdateEventCopyWithImpl<$Res,
          TransferTransactionUpdateEvent>;
}

/// @nodoc
class _$TransferTransactionUpdateEventCopyWithImpl<$Res,
        $Val extends TransferTransactionUpdateEvent>
    implements $TransferTransactionUpdateEventCopyWith<$Res> {
  _$TransferTransactionUpdateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransferTransactionUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChangeCreatedAtImplCopyWith<$Res> {
  factory _$$ChangeCreatedAtImplCopyWith(_$ChangeCreatedAtImpl value,
          $Res Function(_$ChangeCreatedAtImpl) then) =
      __$$ChangeCreatedAtImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime createdAt});
}

/// @nodoc
class __$$ChangeCreatedAtImplCopyWithImpl<$Res>
    extends _$TransferTransactionUpdateEventCopyWithImpl<$Res,
        _$ChangeCreatedAtImpl> implements _$$ChangeCreatedAtImplCopyWith<$Res> {
  __$$ChangeCreatedAtImplCopyWithImpl(
      _$ChangeCreatedAtImpl _value, $Res Function(_$ChangeCreatedAtImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransferTransactionUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
  }) {
    return _then(_$ChangeCreatedAtImpl(
      null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ChangeCreatedAtImpl implements _ChangeCreatedAt {
  const _$ChangeCreatedAtImpl(this.createdAt);

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'TransferTransactionUpdateEvent.changeCreatedAt(createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCreatedAtImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createdAt);

  /// Create a copy of TransferTransactionUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCreatedAtImplCopyWith<_$ChangeCreatedAtImpl> get copyWith =>
      __$$ChangeCreatedAtImplCopyWithImpl<_$ChangeCreatedAtImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime createdAt) changeCreatedAt,
    required TResult Function(double amount) changeAmount,
    required TResult Function(String descriptionStr) changeDescription,
    required TResult Function(Transaction transaction) assignTransaction,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return changeCreatedAt(createdAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime createdAt)? changeCreatedAt,
    TResult? Function(double amount)? changeAmount,
    TResult? Function(String descriptionStr)? changeDescription,
    TResult? Function(Transaction transaction)? assignTransaction,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) {
    return changeCreatedAt?.call(createdAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime createdAt)? changeCreatedAt,
    TResult Function(double amount)? changeAmount,
    TResult Function(String descriptionStr)? changeDescription,
    TResult Function(Transaction transaction)? assignTransaction,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (changeCreatedAt != null) {
      return changeCreatedAt(createdAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCreatedAt value) changeCreatedAt,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_AssignTransaction value) assignTransaction,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return changeCreatedAt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCreatedAt value)? changeCreatedAt,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeDescription value)? changeDescription,
    TResult? Function(_AssignTransaction value)? assignTransaction,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return changeCreatedAt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCreatedAt value)? changeCreatedAt,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_AssignTransaction value)? assignTransaction,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (changeCreatedAt != null) {
      return changeCreatedAt(this);
    }
    return orElse();
  }
}

abstract class _ChangeCreatedAt implements TransferTransactionUpdateEvent {
  const factory _ChangeCreatedAt(final DateTime createdAt) =
      _$ChangeCreatedAtImpl;

  DateTime get createdAt;

  /// Create a copy of TransferTransactionUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeCreatedAtImplCopyWith<_$ChangeCreatedAtImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeAmountImplCopyWith<$Res> {
  factory _$$ChangeAmountImplCopyWith(
          _$ChangeAmountImpl value, $Res Function(_$ChangeAmountImpl) then) =
      __$$ChangeAmountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double amount});
}

/// @nodoc
class __$$ChangeAmountImplCopyWithImpl<$Res>
    extends _$TransferTransactionUpdateEventCopyWithImpl<$Res,
        _$ChangeAmountImpl> implements _$$ChangeAmountImplCopyWith<$Res> {
  __$$ChangeAmountImplCopyWithImpl(
      _$ChangeAmountImpl _value, $Res Function(_$ChangeAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransferTransactionUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$ChangeAmountImpl(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ChangeAmountImpl implements _ChangeAmount {
  const _$ChangeAmountImpl(this.amount);

  @override
  final double amount;

  @override
  String toString() {
    return 'TransferTransactionUpdateEvent.changeAmount(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAmountImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  /// Create a copy of TransferTransactionUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAmountImplCopyWith<_$ChangeAmountImpl> get copyWith =>
      __$$ChangeAmountImplCopyWithImpl<_$ChangeAmountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime createdAt) changeCreatedAt,
    required TResult Function(double amount) changeAmount,
    required TResult Function(String descriptionStr) changeDescription,
    required TResult Function(Transaction transaction) assignTransaction,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return changeAmount(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime createdAt)? changeCreatedAt,
    TResult? Function(double amount)? changeAmount,
    TResult? Function(String descriptionStr)? changeDescription,
    TResult? Function(Transaction transaction)? assignTransaction,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) {
    return changeAmount?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime createdAt)? changeCreatedAt,
    TResult Function(double amount)? changeAmount,
    TResult Function(String descriptionStr)? changeDescription,
    TResult Function(Transaction transaction)? assignTransaction,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (changeAmount != null) {
      return changeAmount(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCreatedAt value) changeCreatedAt,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_AssignTransaction value) assignTransaction,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return changeAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCreatedAt value)? changeCreatedAt,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeDescription value)? changeDescription,
    TResult? Function(_AssignTransaction value)? assignTransaction,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return changeAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCreatedAt value)? changeCreatedAt,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_AssignTransaction value)? assignTransaction,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (changeAmount != null) {
      return changeAmount(this);
    }
    return orElse();
  }
}

abstract class _ChangeAmount implements TransferTransactionUpdateEvent {
  const factory _ChangeAmount(final double amount) = _$ChangeAmountImpl;

  double get amount;

  /// Create a copy of TransferTransactionUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeAmountImplCopyWith<_$ChangeAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeDescriptionImplCopyWith<$Res> {
  factory _$$ChangeDescriptionImplCopyWith(_$ChangeDescriptionImpl value,
          $Res Function(_$ChangeDescriptionImpl) then) =
      __$$ChangeDescriptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String descriptionStr});
}

/// @nodoc
class __$$ChangeDescriptionImplCopyWithImpl<$Res>
    extends _$TransferTransactionUpdateEventCopyWithImpl<$Res,
        _$ChangeDescriptionImpl>
    implements _$$ChangeDescriptionImplCopyWith<$Res> {
  __$$ChangeDescriptionImplCopyWithImpl(_$ChangeDescriptionImpl _value,
      $Res Function(_$ChangeDescriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransferTransactionUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? descriptionStr = null,
  }) {
    return _then(_$ChangeDescriptionImpl(
      null == descriptionStr
          ? _value.descriptionStr
          : descriptionStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeDescriptionImpl implements _ChangeDescription {
  const _$ChangeDescriptionImpl(this.descriptionStr);

  @override
  final String descriptionStr;

  @override
  String toString() {
    return 'TransferTransactionUpdateEvent.changeDescription(descriptionStr: $descriptionStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeDescriptionImpl &&
            (identical(other.descriptionStr, descriptionStr) ||
                other.descriptionStr == descriptionStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, descriptionStr);

  /// Create a copy of TransferTransactionUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeDescriptionImplCopyWith<_$ChangeDescriptionImpl> get copyWith =>
      __$$ChangeDescriptionImplCopyWithImpl<_$ChangeDescriptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime createdAt) changeCreatedAt,
    required TResult Function(double amount) changeAmount,
    required TResult Function(String descriptionStr) changeDescription,
    required TResult Function(Transaction transaction) assignTransaction,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return changeDescription(descriptionStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime createdAt)? changeCreatedAt,
    TResult? Function(double amount)? changeAmount,
    TResult? Function(String descriptionStr)? changeDescription,
    TResult? Function(Transaction transaction)? assignTransaction,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) {
    return changeDescription?.call(descriptionStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime createdAt)? changeCreatedAt,
    TResult Function(double amount)? changeAmount,
    TResult Function(String descriptionStr)? changeDescription,
    TResult Function(Transaction transaction)? assignTransaction,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (changeDescription != null) {
      return changeDescription(descriptionStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCreatedAt value) changeCreatedAt,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_AssignTransaction value) assignTransaction,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return changeDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCreatedAt value)? changeCreatedAt,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeDescription value)? changeDescription,
    TResult? Function(_AssignTransaction value)? assignTransaction,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return changeDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCreatedAt value)? changeCreatedAt,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_AssignTransaction value)? assignTransaction,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (changeDescription != null) {
      return changeDescription(this);
    }
    return orElse();
  }
}

abstract class _ChangeDescription implements TransferTransactionUpdateEvent {
  const factory _ChangeDescription(final String descriptionStr) =
      _$ChangeDescriptionImpl;

  String get descriptionStr;

  /// Create a copy of TransferTransactionUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeDescriptionImplCopyWith<_$ChangeDescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssignTransactionImplCopyWith<$Res> {
  factory _$$AssignTransactionImplCopyWith(_$AssignTransactionImpl value,
          $Res Function(_$AssignTransactionImpl) then) =
      __$$AssignTransactionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Transaction transaction});

  $TransactionCopyWith<$Res> get transaction;
}

/// @nodoc
class __$$AssignTransactionImplCopyWithImpl<$Res>
    extends _$TransferTransactionUpdateEventCopyWithImpl<$Res,
        _$AssignTransactionImpl>
    implements _$$AssignTransactionImplCopyWith<$Res> {
  __$$AssignTransactionImplCopyWithImpl(_$AssignTransactionImpl _value,
      $Res Function(_$AssignTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransferTransactionUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$AssignTransactionImpl(
      null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ));
  }

  /// Create a copy of TransferTransactionUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res> get transaction {
    return $TransactionCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value));
    });
  }
}

/// @nodoc

class _$AssignTransactionImpl implements _AssignTransaction {
  const _$AssignTransactionImpl(this.transaction);

  @override
  final Transaction transaction;

  @override
  String toString() {
    return 'TransferTransactionUpdateEvent.assignTransaction(transaction: $transaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignTransactionImpl &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  /// Create a copy of TransferTransactionUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignTransactionImplCopyWith<_$AssignTransactionImpl> get copyWith =>
      __$$AssignTransactionImplCopyWithImpl<_$AssignTransactionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime createdAt) changeCreatedAt,
    required TResult Function(double amount) changeAmount,
    required TResult Function(String descriptionStr) changeDescription,
    required TResult Function(Transaction transaction) assignTransaction,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return assignTransaction(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime createdAt)? changeCreatedAt,
    TResult? Function(double amount)? changeAmount,
    TResult? Function(String descriptionStr)? changeDescription,
    TResult? Function(Transaction transaction)? assignTransaction,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) {
    return assignTransaction?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime createdAt)? changeCreatedAt,
    TResult Function(double amount)? changeAmount,
    TResult Function(String descriptionStr)? changeDescription,
    TResult Function(Transaction transaction)? assignTransaction,
    TResult Function()? update,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (assignTransaction != null) {
      return assignTransaction(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeCreatedAt value) changeCreatedAt,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_AssignTransaction value) assignTransaction,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return assignTransaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCreatedAt value)? changeCreatedAt,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeDescription value)? changeDescription,
    TResult? Function(_AssignTransaction value)? assignTransaction,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return assignTransaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCreatedAt value)? changeCreatedAt,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_AssignTransaction value)? assignTransaction,
    TResult Function(_Update value)? update,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (assignTransaction != null) {
      return assignTransaction(this);
    }
    return orElse();
  }
}

abstract class _AssignTransaction implements TransferTransactionUpdateEvent {
  const factory _AssignTransaction(final Transaction transaction) =
      _$AssignTransactionImpl;

  Transaction get transaction;

  /// Create a copy of TransferTransactionUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssignTransactionImplCopyWith<_$AssignTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateImplCopyWith<$Res> {
  factory _$$UpdateImplCopyWith(
          _$UpdateImpl value, $Res Function(_$UpdateImpl) then) =
      __$$UpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateImplCopyWithImpl<$Res>
    extends _$TransferTransactionUpdateEventCopyWithImpl<$Res, _$UpdateImpl>
    implements _$$UpdateImplCopyWith<$Res> {
  __$$UpdateImplCopyWithImpl(
      _$UpdateImpl _value, $Res Function(_$UpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransferTransactionUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateImpl implements _Update {
  const _$UpdateImpl();

  @override
  String toString() {
    return 'TransferTransactionUpdateEvent.update()';
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
    required TResult Function(DateTime createdAt) changeCreatedAt,
    required TResult Function(double amount) changeAmount,
    required TResult Function(String descriptionStr) changeDescription,
    required TResult Function(Transaction transaction) assignTransaction,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return update();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime createdAt)? changeCreatedAt,
    TResult? Function(double amount)? changeAmount,
    TResult? Function(String descriptionStr)? changeDescription,
    TResult? Function(Transaction transaction)? assignTransaction,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) {
    return update?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime createdAt)? changeCreatedAt,
    TResult Function(double amount)? changeAmount,
    TResult Function(String descriptionStr)? changeDescription,
    TResult Function(Transaction transaction)? assignTransaction,
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
    required TResult Function(_ChangeCreatedAt value) changeCreatedAt,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_AssignTransaction value) assignTransaction,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCreatedAt value)? changeCreatedAt,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeDescription value)? changeDescription,
    TResult? Function(_AssignTransaction value)? assignTransaction,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCreatedAt value)? changeCreatedAt,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_AssignTransaction value)? assignTransaction,
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

abstract class _Update implements TransferTransactionUpdateEvent {
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
    extends _$TransferTransactionUpdateEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransferTransactionUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl();

  @override
  String toString() {
    return 'TransferTransactionUpdateEvent.delete()';
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
    required TResult Function(DateTime createdAt) changeCreatedAt,
    required TResult Function(double amount) changeAmount,
    required TResult Function(String descriptionStr) changeDescription,
    required TResult Function(Transaction transaction) assignTransaction,
    required TResult Function() update,
    required TResult Function() delete,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime createdAt)? changeCreatedAt,
    TResult? Function(double amount)? changeAmount,
    TResult? Function(String descriptionStr)? changeDescription,
    TResult? Function(Transaction transaction)? assignTransaction,
    TResult? Function()? update,
    TResult? Function()? delete,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime createdAt)? changeCreatedAt,
    TResult Function(double amount)? changeAmount,
    TResult Function(String descriptionStr)? changeDescription,
    TResult Function(Transaction transaction)? assignTransaction,
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
    required TResult Function(_ChangeCreatedAt value) changeCreatedAt,
    required TResult Function(_ChangeAmount value) changeAmount,
    required TResult Function(_ChangeDescription value) changeDescription,
    required TResult Function(_AssignTransaction value) assignTransaction,
    required TResult Function(_Update value) update,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeCreatedAt value)? changeCreatedAt,
    TResult? Function(_ChangeAmount value)? changeAmount,
    TResult? Function(_ChangeDescription value)? changeDescription,
    TResult? Function(_AssignTransaction value)? assignTransaction,
    TResult? Function(_Update value)? update,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeCreatedAt value)? changeCreatedAt,
    TResult Function(_ChangeAmount value)? changeAmount,
    TResult Function(_ChangeDescription value)? changeDescription,
    TResult Function(_AssignTransaction value)? assignTransaction,
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

abstract class _Delete implements TransferTransactionUpdateEvent {
  const factory _Delete() = _$DeleteImpl;
}

/// @nodoc
mixin _$TransferTransactionUpdateState {
  Transaction get transaction => throw _privateConstructorUsedError;
  Option<Either<TransactionFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  /// Create a copy of TransferTransactionUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransferTransactionUpdateStateCopyWith<TransferTransactionUpdateState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferTransactionUpdateStateCopyWith<$Res> {
  factory $TransferTransactionUpdateStateCopyWith(
          TransferTransactionUpdateState value,
          $Res Function(TransferTransactionUpdateState) then) =
      _$TransferTransactionUpdateStateCopyWithImpl<$Res,
          TransferTransactionUpdateState>;
  @useResult
  $Res call(
      {Transaction transaction,
      Option<Either<TransactionFailure, Unit>> failureOrSuccessOption});

  $TransactionCopyWith<$Res> get transaction;
}

/// @nodoc
class _$TransferTransactionUpdateStateCopyWithImpl<$Res,
        $Val extends TransferTransactionUpdateState>
    implements $TransferTransactionUpdateStateCopyWith<$Res> {
  _$TransferTransactionUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransferTransactionUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TransactionFailure, Unit>>,
    ) as $Val);
  }

  /// Create a copy of TransferTransactionUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res> get transaction {
    return $TransactionCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransferTransactionUpdateStateImplCopyWith<$Res>
    implements $TransferTransactionUpdateStateCopyWith<$Res> {
  factory _$$TransferTransactionUpdateStateImplCopyWith(
          _$TransferTransactionUpdateStateImpl value,
          $Res Function(_$TransferTransactionUpdateStateImpl) then) =
      __$$TransferTransactionUpdateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Transaction transaction,
      Option<Either<TransactionFailure, Unit>> failureOrSuccessOption});

  @override
  $TransactionCopyWith<$Res> get transaction;
}

/// @nodoc
class __$$TransferTransactionUpdateStateImplCopyWithImpl<$Res>
    extends _$TransferTransactionUpdateStateCopyWithImpl<$Res,
        _$TransferTransactionUpdateStateImpl>
    implements _$$TransferTransactionUpdateStateImplCopyWith<$Res> {
  __$$TransferTransactionUpdateStateImplCopyWithImpl(
      _$TransferTransactionUpdateStateImpl _value,
      $Res Function(_$TransferTransactionUpdateStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransferTransactionUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$TransferTransactionUpdateStateImpl(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<TransactionFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$TransferTransactionUpdateStateImpl
    implements _TransferTransactionUpdateState {
  const _$TransferTransactionUpdateStateImpl(
      {required this.transaction, required this.failureOrSuccessOption});

  @override
  final Transaction transaction;
  @override
  final Option<Either<TransactionFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'TransferTransactionUpdateState(transaction: $transaction, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferTransactionUpdateStateImpl &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, transaction, failureOrSuccessOption);

  /// Create a copy of TransferTransactionUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferTransactionUpdateStateImplCopyWith<
          _$TransferTransactionUpdateStateImpl>
      get copyWith => __$$TransferTransactionUpdateStateImplCopyWithImpl<
          _$TransferTransactionUpdateStateImpl>(this, _$identity);
}

abstract class _TransferTransactionUpdateState
    implements TransferTransactionUpdateState {
  const factory _TransferTransactionUpdateState(
      {required final Transaction transaction,
      required final Option<Either<TransactionFailure, Unit>>
          failureOrSuccessOption}) = _$TransferTransactionUpdateStateImpl;

  @override
  Transaction get transaction;
  @override
  Option<Either<TransactionFailure, Unit>> get failureOrSuccessOption;

  /// Create a copy of TransferTransactionUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransferTransactionUpdateStateImplCopyWith<
          _$TransferTransactionUpdateStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
