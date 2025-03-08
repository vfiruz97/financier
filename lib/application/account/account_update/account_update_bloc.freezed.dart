// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountUpdateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) assignAccount,
    required TResult Function(int iconId) chooseIconId,
    required TResult Function(String nameStr) changeAccountName,
    required TResult Function() toggleShowDeleted,
    required TResult Function() restore,
    required TResult Function() save,
    required TResult Function() delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Account account)? assignAccount,
    TResult? Function(int iconId)? chooseIconId,
    TResult? Function(String nameStr)? changeAccountName,
    TResult? Function()? toggleShowDeleted,
    TResult? Function()? restore,
    TResult? Function()? save,
    TResult? Function()? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? assignAccount,
    TResult Function(int iconId)? chooseIconId,
    TResult Function(String nameStr)? changeAccountName,
    TResult Function()? toggleShowDeleted,
    TResult Function()? restore,
    TResult Function()? save,
    TResult Function()? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AssignAccount value) assignAccount,
    required TResult Function(_ChooseIconId value) chooseIconId,
    required TResult Function(_ChangeAccountName value) changeAccountName,
    required TResult Function(_ToggleShowDeleted value) toggleShowDeleted,
    required TResult Function(_Restore value) restore,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignAccount value)? assignAccount,
    TResult? Function(_ChooseIconId value)? chooseIconId,
    TResult? Function(_ChangeAccountName value)? changeAccountName,
    TResult? Function(_ToggleShowDeleted value)? toggleShowDeleted,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_Save value)? save,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignAccount value)? assignAccount,
    TResult Function(_ChooseIconId value)? chooseIconId,
    TResult Function(_ChangeAccountName value)? changeAccountName,
    TResult Function(_ToggleShowDeleted value)? toggleShowDeleted,
    TResult Function(_Restore value)? restore,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountUpdateEventCopyWith<$Res> {
  factory $AccountUpdateEventCopyWith(
          AccountUpdateEvent value, $Res Function(AccountUpdateEvent) then) =
      _$AccountUpdateEventCopyWithImpl<$Res, AccountUpdateEvent>;
}

/// @nodoc
class _$AccountUpdateEventCopyWithImpl<$Res, $Val extends AccountUpdateEvent>
    implements $AccountUpdateEventCopyWith<$Res> {
  _$AccountUpdateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountUpdateEvent
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
    extends _$AccountUpdateEventCopyWithImpl<$Res, _$AssignAccountImpl>
    implements _$$AssignAccountImplCopyWith<$Res> {
  __$$AssignAccountImplCopyWithImpl(
      _$AssignAccountImpl _value, $Res Function(_$AssignAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountUpdateEvent
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

  /// Create a copy of AccountUpdateEvent
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
    return 'AccountUpdateEvent.assignAccount(account: $account)';
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

  /// Create a copy of AccountUpdateEvent
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
    required TResult Function(int iconId) chooseIconId,
    required TResult Function(String nameStr) changeAccountName,
    required TResult Function() toggleShowDeleted,
    required TResult Function() restore,
    required TResult Function() save,
    required TResult Function() delete,
  }) {
    return assignAccount(account);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Account account)? assignAccount,
    TResult? Function(int iconId)? chooseIconId,
    TResult? Function(String nameStr)? changeAccountName,
    TResult? Function()? toggleShowDeleted,
    TResult? Function()? restore,
    TResult? Function()? save,
    TResult? Function()? delete,
  }) {
    return assignAccount?.call(account);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? assignAccount,
    TResult Function(int iconId)? chooseIconId,
    TResult Function(String nameStr)? changeAccountName,
    TResult Function()? toggleShowDeleted,
    TResult Function()? restore,
    TResult Function()? save,
    TResult Function()? delete,
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
    required TResult Function(_ChooseIconId value) chooseIconId,
    required TResult Function(_ChangeAccountName value) changeAccountName,
    required TResult Function(_ToggleShowDeleted value) toggleShowDeleted,
    required TResult Function(_Restore value) restore,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) {
    return assignAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignAccount value)? assignAccount,
    TResult? Function(_ChooseIconId value)? chooseIconId,
    TResult? Function(_ChangeAccountName value)? changeAccountName,
    TResult? Function(_ToggleShowDeleted value)? toggleShowDeleted,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_Save value)? save,
    TResult? Function(_Delete value)? delete,
  }) {
    return assignAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignAccount value)? assignAccount,
    TResult Function(_ChooseIconId value)? chooseIconId,
    TResult Function(_ChangeAccountName value)? changeAccountName,
    TResult Function(_ToggleShowDeleted value)? toggleShowDeleted,
    TResult Function(_Restore value)? restore,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (assignAccount != null) {
      return assignAccount(this);
    }
    return orElse();
  }
}

abstract class _AssignAccount implements AccountUpdateEvent {
  const factory _AssignAccount(final Account account) = _$AssignAccountImpl;

  Account get account;

  /// Create a copy of AccountUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssignAccountImplCopyWith<_$AssignAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChooseIconIdImplCopyWith<$Res> {
  factory _$$ChooseIconIdImplCopyWith(
          _$ChooseIconIdImpl value, $Res Function(_$ChooseIconIdImpl) then) =
      __$$ChooseIconIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int iconId});
}

/// @nodoc
class __$$ChooseIconIdImplCopyWithImpl<$Res>
    extends _$AccountUpdateEventCopyWithImpl<$Res, _$ChooseIconIdImpl>
    implements _$$ChooseIconIdImplCopyWith<$Res> {
  __$$ChooseIconIdImplCopyWithImpl(
      _$ChooseIconIdImpl _value, $Res Function(_$ChooseIconIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconId = null,
  }) {
    return _then(_$ChooseIconIdImpl(
      null == iconId
          ? _value.iconId
          : iconId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChooseIconIdImpl implements _ChooseIconId {
  const _$ChooseIconIdImpl(this.iconId);

  @override
  final int iconId;

  @override
  String toString() {
    return 'AccountUpdateEvent.chooseIconId(iconId: $iconId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChooseIconIdImpl &&
            (identical(other.iconId, iconId) || other.iconId == iconId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iconId);

  /// Create a copy of AccountUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChooseIconIdImplCopyWith<_$ChooseIconIdImpl> get copyWith =>
      __$$ChooseIconIdImplCopyWithImpl<_$ChooseIconIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) assignAccount,
    required TResult Function(int iconId) chooseIconId,
    required TResult Function(String nameStr) changeAccountName,
    required TResult Function() toggleShowDeleted,
    required TResult Function() restore,
    required TResult Function() save,
    required TResult Function() delete,
  }) {
    return chooseIconId(iconId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Account account)? assignAccount,
    TResult? Function(int iconId)? chooseIconId,
    TResult? Function(String nameStr)? changeAccountName,
    TResult? Function()? toggleShowDeleted,
    TResult? Function()? restore,
    TResult? Function()? save,
    TResult? Function()? delete,
  }) {
    return chooseIconId?.call(iconId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? assignAccount,
    TResult Function(int iconId)? chooseIconId,
    TResult Function(String nameStr)? changeAccountName,
    TResult Function()? toggleShowDeleted,
    TResult Function()? restore,
    TResult Function()? save,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (chooseIconId != null) {
      return chooseIconId(iconId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AssignAccount value) assignAccount,
    required TResult Function(_ChooseIconId value) chooseIconId,
    required TResult Function(_ChangeAccountName value) changeAccountName,
    required TResult Function(_ToggleShowDeleted value) toggleShowDeleted,
    required TResult Function(_Restore value) restore,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) {
    return chooseIconId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignAccount value)? assignAccount,
    TResult? Function(_ChooseIconId value)? chooseIconId,
    TResult? Function(_ChangeAccountName value)? changeAccountName,
    TResult? Function(_ToggleShowDeleted value)? toggleShowDeleted,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_Save value)? save,
    TResult? Function(_Delete value)? delete,
  }) {
    return chooseIconId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignAccount value)? assignAccount,
    TResult Function(_ChooseIconId value)? chooseIconId,
    TResult Function(_ChangeAccountName value)? changeAccountName,
    TResult Function(_ToggleShowDeleted value)? toggleShowDeleted,
    TResult Function(_Restore value)? restore,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (chooseIconId != null) {
      return chooseIconId(this);
    }
    return orElse();
  }
}

abstract class _ChooseIconId implements AccountUpdateEvent {
  const factory _ChooseIconId(final int iconId) = _$ChooseIconIdImpl;

  int get iconId;

  /// Create a copy of AccountUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChooseIconIdImplCopyWith<_$ChooseIconIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeAccountNameImplCopyWith<$Res> {
  factory _$$ChangeAccountNameImplCopyWith(_$ChangeAccountNameImpl value,
          $Res Function(_$ChangeAccountNameImpl) then) =
      __$$ChangeAccountNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String nameStr});
}

/// @nodoc
class __$$ChangeAccountNameImplCopyWithImpl<$Res>
    extends _$AccountUpdateEventCopyWithImpl<$Res, _$ChangeAccountNameImpl>
    implements _$$ChangeAccountNameImplCopyWith<$Res> {
  __$$ChangeAccountNameImplCopyWithImpl(_$ChangeAccountNameImpl _value,
      $Res Function(_$ChangeAccountNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameStr = null,
  }) {
    return _then(_$ChangeAccountNameImpl(
      null == nameStr
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeAccountNameImpl implements _ChangeAccountName {
  const _$ChangeAccountNameImpl(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'AccountUpdateEvent.changeAccountName(nameStr: $nameStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAccountNameImpl &&
            (identical(other.nameStr, nameStr) || other.nameStr == nameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameStr);

  /// Create a copy of AccountUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAccountNameImplCopyWith<_$ChangeAccountNameImpl> get copyWith =>
      __$$ChangeAccountNameImplCopyWithImpl<_$ChangeAccountNameImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) assignAccount,
    required TResult Function(int iconId) chooseIconId,
    required TResult Function(String nameStr) changeAccountName,
    required TResult Function() toggleShowDeleted,
    required TResult Function() restore,
    required TResult Function() save,
    required TResult Function() delete,
  }) {
    return changeAccountName(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Account account)? assignAccount,
    TResult? Function(int iconId)? chooseIconId,
    TResult? Function(String nameStr)? changeAccountName,
    TResult? Function()? toggleShowDeleted,
    TResult? Function()? restore,
    TResult? Function()? save,
    TResult? Function()? delete,
  }) {
    return changeAccountName?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? assignAccount,
    TResult Function(int iconId)? chooseIconId,
    TResult Function(String nameStr)? changeAccountName,
    TResult Function()? toggleShowDeleted,
    TResult Function()? restore,
    TResult Function()? save,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (changeAccountName != null) {
      return changeAccountName(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AssignAccount value) assignAccount,
    required TResult Function(_ChooseIconId value) chooseIconId,
    required TResult Function(_ChangeAccountName value) changeAccountName,
    required TResult Function(_ToggleShowDeleted value) toggleShowDeleted,
    required TResult Function(_Restore value) restore,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) {
    return changeAccountName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignAccount value)? assignAccount,
    TResult? Function(_ChooseIconId value)? chooseIconId,
    TResult? Function(_ChangeAccountName value)? changeAccountName,
    TResult? Function(_ToggleShowDeleted value)? toggleShowDeleted,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_Save value)? save,
    TResult? Function(_Delete value)? delete,
  }) {
    return changeAccountName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignAccount value)? assignAccount,
    TResult Function(_ChooseIconId value)? chooseIconId,
    TResult Function(_ChangeAccountName value)? changeAccountName,
    TResult Function(_ToggleShowDeleted value)? toggleShowDeleted,
    TResult Function(_Restore value)? restore,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (changeAccountName != null) {
      return changeAccountName(this);
    }
    return orElse();
  }
}

abstract class _ChangeAccountName implements AccountUpdateEvent {
  const factory _ChangeAccountName(final String nameStr) =
      _$ChangeAccountNameImpl;

  String get nameStr;

  /// Create a copy of AccountUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeAccountNameImplCopyWith<_$ChangeAccountNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleShowDeletedImplCopyWith<$Res> {
  factory _$$ToggleShowDeletedImplCopyWith(_$ToggleShowDeletedImpl value,
          $Res Function(_$ToggleShowDeletedImpl) then) =
      __$$ToggleShowDeletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleShowDeletedImplCopyWithImpl<$Res>
    extends _$AccountUpdateEventCopyWithImpl<$Res, _$ToggleShowDeletedImpl>
    implements _$$ToggleShowDeletedImplCopyWith<$Res> {
  __$$ToggleShowDeletedImplCopyWithImpl(_$ToggleShowDeletedImpl _value,
      $Res Function(_$ToggleShowDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ToggleShowDeletedImpl implements _ToggleShowDeleted {
  const _$ToggleShowDeletedImpl();

  @override
  String toString() {
    return 'AccountUpdateEvent.toggleShowDeleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleShowDeletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) assignAccount,
    required TResult Function(int iconId) chooseIconId,
    required TResult Function(String nameStr) changeAccountName,
    required TResult Function() toggleShowDeleted,
    required TResult Function() restore,
    required TResult Function() save,
    required TResult Function() delete,
  }) {
    return toggleShowDeleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Account account)? assignAccount,
    TResult? Function(int iconId)? chooseIconId,
    TResult? Function(String nameStr)? changeAccountName,
    TResult? Function()? toggleShowDeleted,
    TResult? Function()? restore,
    TResult? Function()? save,
    TResult? Function()? delete,
  }) {
    return toggleShowDeleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? assignAccount,
    TResult Function(int iconId)? chooseIconId,
    TResult Function(String nameStr)? changeAccountName,
    TResult Function()? toggleShowDeleted,
    TResult Function()? restore,
    TResult Function()? save,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (toggleShowDeleted != null) {
      return toggleShowDeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AssignAccount value) assignAccount,
    required TResult Function(_ChooseIconId value) chooseIconId,
    required TResult Function(_ChangeAccountName value) changeAccountName,
    required TResult Function(_ToggleShowDeleted value) toggleShowDeleted,
    required TResult Function(_Restore value) restore,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) {
    return toggleShowDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignAccount value)? assignAccount,
    TResult? Function(_ChooseIconId value)? chooseIconId,
    TResult? Function(_ChangeAccountName value)? changeAccountName,
    TResult? Function(_ToggleShowDeleted value)? toggleShowDeleted,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_Save value)? save,
    TResult? Function(_Delete value)? delete,
  }) {
    return toggleShowDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignAccount value)? assignAccount,
    TResult Function(_ChooseIconId value)? chooseIconId,
    TResult Function(_ChangeAccountName value)? changeAccountName,
    TResult Function(_ToggleShowDeleted value)? toggleShowDeleted,
    TResult Function(_Restore value)? restore,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (toggleShowDeleted != null) {
      return toggleShowDeleted(this);
    }
    return orElse();
  }
}

abstract class _ToggleShowDeleted implements AccountUpdateEvent {
  const factory _ToggleShowDeleted() = _$ToggleShowDeletedImpl;
}

/// @nodoc
abstract class _$$RestoreImplCopyWith<$Res> {
  factory _$$RestoreImplCopyWith(
          _$RestoreImpl value, $Res Function(_$RestoreImpl) then) =
      __$$RestoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RestoreImplCopyWithImpl<$Res>
    extends _$AccountUpdateEventCopyWithImpl<$Res, _$RestoreImpl>
    implements _$$RestoreImplCopyWith<$Res> {
  __$$RestoreImplCopyWithImpl(
      _$RestoreImpl _value, $Res Function(_$RestoreImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RestoreImpl implements _Restore {
  const _$RestoreImpl();

  @override
  String toString() {
    return 'AccountUpdateEvent.restore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RestoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Account account) assignAccount,
    required TResult Function(int iconId) chooseIconId,
    required TResult Function(String nameStr) changeAccountName,
    required TResult Function() toggleShowDeleted,
    required TResult Function() restore,
    required TResult Function() save,
    required TResult Function() delete,
  }) {
    return restore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Account account)? assignAccount,
    TResult? Function(int iconId)? chooseIconId,
    TResult? Function(String nameStr)? changeAccountName,
    TResult? Function()? toggleShowDeleted,
    TResult? Function()? restore,
    TResult? Function()? save,
    TResult? Function()? delete,
  }) {
    return restore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? assignAccount,
    TResult Function(int iconId)? chooseIconId,
    TResult Function(String nameStr)? changeAccountName,
    TResult Function()? toggleShowDeleted,
    TResult Function()? restore,
    TResult Function()? save,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (restore != null) {
      return restore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AssignAccount value) assignAccount,
    required TResult Function(_ChooseIconId value) chooseIconId,
    required TResult Function(_ChangeAccountName value) changeAccountName,
    required TResult Function(_ToggleShowDeleted value) toggleShowDeleted,
    required TResult Function(_Restore value) restore,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) {
    return restore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignAccount value)? assignAccount,
    TResult? Function(_ChooseIconId value)? chooseIconId,
    TResult? Function(_ChangeAccountName value)? changeAccountName,
    TResult? Function(_ToggleShowDeleted value)? toggleShowDeleted,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_Save value)? save,
    TResult? Function(_Delete value)? delete,
  }) {
    return restore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignAccount value)? assignAccount,
    TResult Function(_ChooseIconId value)? chooseIconId,
    TResult Function(_ChangeAccountName value)? changeAccountName,
    TResult Function(_ToggleShowDeleted value)? toggleShowDeleted,
    TResult Function(_Restore value)? restore,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (restore != null) {
      return restore(this);
    }
    return orElse();
  }
}

abstract class _Restore implements AccountUpdateEvent {
  const factory _Restore() = _$RestoreImpl;
}

/// @nodoc
abstract class _$$SaveImplCopyWith<$Res> {
  factory _$$SaveImplCopyWith(
          _$SaveImpl value, $Res Function(_$SaveImpl) then) =
      __$$SaveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveImplCopyWithImpl<$Res>
    extends _$AccountUpdateEventCopyWithImpl<$Res, _$SaveImpl>
    implements _$$SaveImplCopyWith<$Res> {
  __$$SaveImplCopyWithImpl(_$SaveImpl _value, $Res Function(_$SaveImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SaveImpl implements _Save {
  const _$SaveImpl();

  @override
  String toString() {
    return 'AccountUpdateEvent.save()';
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
    required TResult Function(int iconId) chooseIconId,
    required TResult Function(String nameStr) changeAccountName,
    required TResult Function() toggleShowDeleted,
    required TResult Function() restore,
    required TResult Function() save,
    required TResult Function() delete,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Account account)? assignAccount,
    TResult? Function(int iconId)? chooseIconId,
    TResult? Function(String nameStr)? changeAccountName,
    TResult? Function()? toggleShowDeleted,
    TResult? Function()? restore,
    TResult? Function()? save,
    TResult? Function()? delete,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? assignAccount,
    TResult Function(int iconId)? chooseIconId,
    TResult Function(String nameStr)? changeAccountName,
    TResult Function()? toggleShowDeleted,
    TResult Function()? restore,
    TResult Function()? save,
    TResult Function()? delete,
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
    required TResult Function(_ChooseIconId value) chooseIconId,
    required TResult Function(_ChangeAccountName value) changeAccountName,
    required TResult Function(_ToggleShowDeleted value) toggleShowDeleted,
    required TResult Function(_Restore value) restore,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignAccount value)? assignAccount,
    TResult? Function(_ChooseIconId value)? chooseIconId,
    TResult? Function(_ChangeAccountName value)? changeAccountName,
    TResult? Function(_ToggleShowDeleted value)? toggleShowDeleted,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_Save value)? save,
    TResult? Function(_Delete value)? delete,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignAccount value)? assignAccount,
    TResult Function(_ChooseIconId value)? chooseIconId,
    TResult Function(_ChangeAccountName value)? changeAccountName,
    TResult Function(_ToggleShowDeleted value)? toggleShowDeleted,
    TResult Function(_Restore value)? restore,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements AccountUpdateEvent {
  const factory _Save() = _$SaveImpl;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$AccountUpdateEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl();

  @override
  String toString() {
    return 'AccountUpdateEvent.delete()';
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
    required TResult Function(Account account) assignAccount,
    required TResult Function(int iconId) chooseIconId,
    required TResult Function(String nameStr) changeAccountName,
    required TResult Function() toggleShowDeleted,
    required TResult Function() restore,
    required TResult Function() save,
    required TResult Function() delete,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Account account)? assignAccount,
    TResult? Function(int iconId)? chooseIconId,
    TResult? Function(String nameStr)? changeAccountName,
    TResult? Function()? toggleShowDeleted,
    TResult? Function()? restore,
    TResult? Function()? save,
    TResult? Function()? delete,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Account account)? assignAccount,
    TResult Function(int iconId)? chooseIconId,
    TResult Function(String nameStr)? changeAccountName,
    TResult Function()? toggleShowDeleted,
    TResult Function()? restore,
    TResult Function()? save,
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
    required TResult Function(_AssignAccount value) assignAccount,
    required TResult Function(_ChooseIconId value) chooseIconId,
    required TResult Function(_ChangeAccountName value) changeAccountName,
    required TResult Function(_ToggleShowDeleted value) toggleShowDeleted,
    required TResult Function(_Restore value) restore,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignAccount value)? assignAccount,
    TResult? Function(_ChooseIconId value)? chooseIconId,
    TResult? Function(_ChangeAccountName value)? changeAccountName,
    TResult? Function(_ToggleShowDeleted value)? toggleShowDeleted,
    TResult? Function(_Restore value)? restore,
    TResult? Function(_Save value)? save,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignAccount value)? assignAccount,
    TResult Function(_ChooseIconId value)? chooseIconId,
    TResult Function(_ChangeAccountName value)? changeAccountName,
    TResult Function(_ToggleShowDeleted value)? toggleShowDeleted,
    TResult Function(_Restore value)? restore,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements AccountUpdateEvent {
  const factory _Delete() = _$DeleteImpl;
}

/// @nodoc
mixin _$AccountUpdateState {
  Account get account => throw _privateConstructorUsedError;
  Account get accountBlack => throw _privateConstructorUsedError;
  bool get showDeleted => throw _privateConstructorUsedError;
  Option<Either<AccountFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  /// Create a copy of AccountUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountUpdateStateCopyWith<AccountUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountUpdateStateCopyWith<$Res> {
  factory $AccountUpdateStateCopyWith(
          AccountUpdateState value, $Res Function(AccountUpdateState) then) =
      _$AccountUpdateStateCopyWithImpl<$Res, AccountUpdateState>;
  @useResult
  $Res call(
      {Account account,
      Account accountBlack,
      bool showDeleted,
      Option<Either<AccountFailure, Unit>> failureOrSuccessOption});

  $AccountCopyWith<$Res> get account;
  $AccountCopyWith<$Res> get accountBlack;
}

/// @nodoc
class _$AccountUpdateStateCopyWithImpl<$Res, $Val extends AccountUpdateState>
    implements $AccountUpdateStateCopyWith<$Res> {
  _$AccountUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? accountBlack = null,
    Object? showDeleted = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      accountBlack: null == accountBlack
          ? _value.accountBlack
          : accountBlack // ignore: cast_nullable_to_non_nullable
              as Account,
      showDeleted: null == showDeleted
          ? _value.showDeleted
          : showDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AccountFailure, Unit>>,
    ) as $Val);
  }

  /// Create a copy of AccountUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }

  /// Create a copy of AccountUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get accountBlack {
    return $AccountCopyWith<$Res>(_value.accountBlack, (value) {
      return _then(_value.copyWith(accountBlack: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountUpdateStateImplCopyWith<$Res>
    implements $AccountUpdateStateCopyWith<$Res> {
  factory _$$AccountUpdateStateImplCopyWith(_$AccountUpdateStateImpl value,
          $Res Function(_$AccountUpdateStateImpl) then) =
      __$$AccountUpdateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Account account,
      Account accountBlack,
      bool showDeleted,
      Option<Either<AccountFailure, Unit>> failureOrSuccessOption});

  @override
  $AccountCopyWith<$Res> get account;
  @override
  $AccountCopyWith<$Res> get accountBlack;
}

/// @nodoc
class __$$AccountUpdateStateImplCopyWithImpl<$Res>
    extends _$AccountUpdateStateCopyWithImpl<$Res, _$AccountUpdateStateImpl>
    implements _$$AccountUpdateStateImplCopyWith<$Res> {
  __$$AccountUpdateStateImplCopyWithImpl(_$AccountUpdateStateImpl _value,
      $Res Function(_$AccountUpdateStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? accountBlack = null,
    Object? showDeleted = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$AccountUpdateStateImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      accountBlack: null == accountBlack
          ? _value.accountBlack
          : accountBlack // ignore: cast_nullable_to_non_nullable
              as Account,
      showDeleted: null == showDeleted
          ? _value.showDeleted
          : showDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AccountFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$AccountUpdateStateImpl implements _AccountUpdateState {
  const _$AccountUpdateStateImpl(
      {required this.account,
      required this.accountBlack,
      required this.showDeleted,
      required this.failureOrSuccessOption});

  @override
  final Account account;
  @override
  final Account accountBlack;
  @override
  final bool showDeleted;
  @override
  final Option<Either<AccountFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'AccountUpdateState(account: $account, accountBlack: $accountBlack, showDeleted: $showDeleted, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountUpdateStateImpl &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.accountBlack, accountBlack) ||
                other.accountBlack == accountBlack) &&
            (identical(other.showDeleted, showDeleted) ||
                other.showDeleted == showDeleted) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, account, accountBlack, showDeleted, failureOrSuccessOption);

  /// Create a copy of AccountUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountUpdateStateImplCopyWith<_$AccountUpdateStateImpl> get copyWith =>
      __$$AccountUpdateStateImplCopyWithImpl<_$AccountUpdateStateImpl>(
          this, _$identity);
}

abstract class _AccountUpdateState implements AccountUpdateState {
  const factory _AccountUpdateState(
      {required final Account account,
      required final Account accountBlack,
      required final bool showDeleted,
      required final Option<Either<AccountFailure, Unit>>
          failureOrSuccessOption}) = _$AccountUpdateStateImpl;

  @override
  Account get account;
  @override
  Account get accountBlack;
  @override
  bool get showDeleted;
  @override
  Option<Either<AccountFailure, Unit>> get failureOrSuccessOption;

  /// Create a copy of AccountUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountUpdateStateImplCopyWith<_$AccountUpdateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
