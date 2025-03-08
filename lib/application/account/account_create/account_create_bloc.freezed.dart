// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_create_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountCreateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String budgetId) assignBudgetId,
    required TResult Function(int currencyId) selectCurrency,
    required TResult Function(int iconId) chooseIconId,
    required TResult Function(String nameStr) changeAccountName,
    required TResult Function(double balance) changeBalance,
    required TResult Function() save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String budgetId)? assignBudgetId,
    TResult? Function(int currencyId)? selectCurrency,
    TResult? Function(int iconId)? chooseIconId,
    TResult? Function(String nameStr)? changeAccountName,
    TResult? Function(double balance)? changeBalance,
    TResult? Function()? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String budgetId)? assignBudgetId,
    TResult Function(int currencyId)? selectCurrency,
    TResult Function(int iconId)? chooseIconId,
    TResult Function(String nameStr)? changeAccountName,
    TResult Function(double balance)? changeBalance,
    TResult Function()? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AssignBudgetId value) assignBudgetId,
    required TResult Function(_SelectCurrency value) selectCurrency,
    required TResult Function(_ChooseIconId value) chooseIconId,
    required TResult Function(_ChangeAccountName value) changeAccountName,
    required TResult Function(_ChangeBalance value) changeBalance,
    required TResult Function(_Save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignBudgetId value)? assignBudgetId,
    TResult? Function(_SelectCurrency value)? selectCurrency,
    TResult? Function(_ChooseIconId value)? chooseIconId,
    TResult? Function(_ChangeAccountName value)? changeAccountName,
    TResult? Function(_ChangeBalance value)? changeBalance,
    TResult? Function(_Save value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignBudgetId value)? assignBudgetId,
    TResult Function(_SelectCurrency value)? selectCurrency,
    TResult Function(_ChooseIconId value)? chooseIconId,
    TResult Function(_ChangeAccountName value)? changeAccountName,
    TResult Function(_ChangeBalance value)? changeBalance,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCreateEventCopyWith<$Res> {
  factory $AccountCreateEventCopyWith(
          AccountCreateEvent value, $Res Function(AccountCreateEvent) then) =
      _$AccountCreateEventCopyWithImpl<$Res, AccountCreateEvent>;
}

/// @nodoc
class _$AccountCreateEventCopyWithImpl<$Res, $Val extends AccountCreateEvent>
    implements $AccountCreateEventCopyWith<$Res> {
  _$AccountCreateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountCreateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AssignBudgetIdImplCopyWith<$Res> {
  factory _$$AssignBudgetIdImplCopyWith(_$AssignBudgetIdImpl value,
          $Res Function(_$AssignBudgetIdImpl) then) =
      __$$AssignBudgetIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String budgetId});
}

/// @nodoc
class __$$AssignBudgetIdImplCopyWithImpl<$Res>
    extends _$AccountCreateEventCopyWithImpl<$Res, _$AssignBudgetIdImpl>
    implements _$$AssignBudgetIdImplCopyWith<$Res> {
  __$$AssignBudgetIdImplCopyWithImpl(
      _$AssignBudgetIdImpl _value, $Res Function(_$AssignBudgetIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? budgetId = null,
  }) {
    return _then(_$AssignBudgetIdImpl(
      null == budgetId
          ? _value.budgetId
          : budgetId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AssignBudgetIdImpl implements _AssignBudgetId {
  const _$AssignBudgetIdImpl(this.budgetId);

  @override
  final String budgetId;

  @override
  String toString() {
    return 'AccountCreateEvent.assignBudgetId(budgetId: $budgetId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignBudgetIdImpl &&
            (identical(other.budgetId, budgetId) ||
                other.budgetId == budgetId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, budgetId);

  /// Create a copy of AccountCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignBudgetIdImplCopyWith<_$AssignBudgetIdImpl> get copyWith =>
      __$$AssignBudgetIdImplCopyWithImpl<_$AssignBudgetIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String budgetId) assignBudgetId,
    required TResult Function(int currencyId) selectCurrency,
    required TResult Function(int iconId) chooseIconId,
    required TResult Function(String nameStr) changeAccountName,
    required TResult Function(double balance) changeBalance,
    required TResult Function() save,
  }) {
    return assignBudgetId(budgetId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String budgetId)? assignBudgetId,
    TResult? Function(int currencyId)? selectCurrency,
    TResult? Function(int iconId)? chooseIconId,
    TResult? Function(String nameStr)? changeAccountName,
    TResult? Function(double balance)? changeBalance,
    TResult? Function()? save,
  }) {
    return assignBudgetId?.call(budgetId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String budgetId)? assignBudgetId,
    TResult Function(int currencyId)? selectCurrency,
    TResult Function(int iconId)? chooseIconId,
    TResult Function(String nameStr)? changeAccountName,
    TResult Function(double balance)? changeBalance,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (assignBudgetId != null) {
      return assignBudgetId(budgetId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AssignBudgetId value) assignBudgetId,
    required TResult Function(_SelectCurrency value) selectCurrency,
    required TResult Function(_ChooseIconId value) chooseIconId,
    required TResult Function(_ChangeAccountName value) changeAccountName,
    required TResult Function(_ChangeBalance value) changeBalance,
    required TResult Function(_Save value) save,
  }) {
    return assignBudgetId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignBudgetId value)? assignBudgetId,
    TResult? Function(_SelectCurrency value)? selectCurrency,
    TResult? Function(_ChooseIconId value)? chooseIconId,
    TResult? Function(_ChangeAccountName value)? changeAccountName,
    TResult? Function(_ChangeBalance value)? changeBalance,
    TResult? Function(_Save value)? save,
  }) {
    return assignBudgetId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignBudgetId value)? assignBudgetId,
    TResult Function(_SelectCurrency value)? selectCurrency,
    TResult Function(_ChooseIconId value)? chooseIconId,
    TResult Function(_ChangeAccountName value)? changeAccountName,
    TResult Function(_ChangeBalance value)? changeBalance,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (assignBudgetId != null) {
      return assignBudgetId(this);
    }
    return orElse();
  }
}

abstract class _AssignBudgetId implements AccountCreateEvent {
  const factory _AssignBudgetId(final String budgetId) = _$AssignBudgetIdImpl;

  String get budgetId;

  /// Create a copy of AccountCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssignBudgetIdImplCopyWith<_$AssignBudgetIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectCurrencyImplCopyWith<$Res> {
  factory _$$SelectCurrencyImplCopyWith(_$SelectCurrencyImpl value,
          $Res Function(_$SelectCurrencyImpl) then) =
      __$$SelectCurrencyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int currencyId});
}

/// @nodoc
class __$$SelectCurrencyImplCopyWithImpl<$Res>
    extends _$AccountCreateEventCopyWithImpl<$Res, _$SelectCurrencyImpl>
    implements _$$SelectCurrencyImplCopyWith<$Res> {
  __$$SelectCurrencyImplCopyWithImpl(
      _$SelectCurrencyImpl _value, $Res Function(_$SelectCurrencyImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyId = null,
  }) {
    return _then(_$SelectCurrencyImpl(
      null == currencyId
          ? _value.currencyId
          : currencyId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectCurrencyImpl implements _SelectCurrency {
  const _$SelectCurrencyImpl(this.currencyId);

  @override
  final int currencyId;

  @override
  String toString() {
    return 'AccountCreateEvent.selectCurrency(currencyId: $currencyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectCurrencyImpl &&
            (identical(other.currencyId, currencyId) ||
                other.currencyId == currencyId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currencyId);

  /// Create a copy of AccountCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectCurrencyImplCopyWith<_$SelectCurrencyImpl> get copyWith =>
      __$$SelectCurrencyImplCopyWithImpl<_$SelectCurrencyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String budgetId) assignBudgetId,
    required TResult Function(int currencyId) selectCurrency,
    required TResult Function(int iconId) chooseIconId,
    required TResult Function(String nameStr) changeAccountName,
    required TResult Function(double balance) changeBalance,
    required TResult Function() save,
  }) {
    return selectCurrency(currencyId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String budgetId)? assignBudgetId,
    TResult? Function(int currencyId)? selectCurrency,
    TResult? Function(int iconId)? chooseIconId,
    TResult? Function(String nameStr)? changeAccountName,
    TResult? Function(double balance)? changeBalance,
    TResult? Function()? save,
  }) {
    return selectCurrency?.call(currencyId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String budgetId)? assignBudgetId,
    TResult Function(int currencyId)? selectCurrency,
    TResult Function(int iconId)? chooseIconId,
    TResult Function(String nameStr)? changeAccountName,
    TResult Function(double balance)? changeBalance,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (selectCurrency != null) {
      return selectCurrency(currencyId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AssignBudgetId value) assignBudgetId,
    required TResult Function(_SelectCurrency value) selectCurrency,
    required TResult Function(_ChooseIconId value) chooseIconId,
    required TResult Function(_ChangeAccountName value) changeAccountName,
    required TResult Function(_ChangeBalance value) changeBalance,
    required TResult Function(_Save value) save,
  }) {
    return selectCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignBudgetId value)? assignBudgetId,
    TResult? Function(_SelectCurrency value)? selectCurrency,
    TResult? Function(_ChooseIconId value)? chooseIconId,
    TResult? Function(_ChangeAccountName value)? changeAccountName,
    TResult? Function(_ChangeBalance value)? changeBalance,
    TResult? Function(_Save value)? save,
  }) {
    return selectCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignBudgetId value)? assignBudgetId,
    TResult Function(_SelectCurrency value)? selectCurrency,
    TResult Function(_ChooseIconId value)? chooseIconId,
    TResult Function(_ChangeAccountName value)? changeAccountName,
    TResult Function(_ChangeBalance value)? changeBalance,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (selectCurrency != null) {
      return selectCurrency(this);
    }
    return orElse();
  }
}

abstract class _SelectCurrency implements AccountCreateEvent {
  const factory _SelectCurrency(final int currencyId) = _$SelectCurrencyImpl;

  int get currencyId;

  /// Create a copy of AccountCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectCurrencyImplCopyWith<_$SelectCurrencyImpl> get copyWith =>
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
    extends _$AccountCreateEventCopyWithImpl<$Res, _$ChooseIconIdImpl>
    implements _$$ChooseIconIdImplCopyWith<$Res> {
  __$$ChooseIconIdImplCopyWithImpl(
      _$ChooseIconIdImpl _value, $Res Function(_$ChooseIconIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountCreateEvent
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
    return 'AccountCreateEvent.chooseIconId(iconId: $iconId)';
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

  /// Create a copy of AccountCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChooseIconIdImplCopyWith<_$ChooseIconIdImpl> get copyWith =>
      __$$ChooseIconIdImplCopyWithImpl<_$ChooseIconIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String budgetId) assignBudgetId,
    required TResult Function(int currencyId) selectCurrency,
    required TResult Function(int iconId) chooseIconId,
    required TResult Function(String nameStr) changeAccountName,
    required TResult Function(double balance) changeBalance,
    required TResult Function() save,
  }) {
    return chooseIconId(iconId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String budgetId)? assignBudgetId,
    TResult? Function(int currencyId)? selectCurrency,
    TResult? Function(int iconId)? chooseIconId,
    TResult? Function(String nameStr)? changeAccountName,
    TResult? Function(double balance)? changeBalance,
    TResult? Function()? save,
  }) {
    return chooseIconId?.call(iconId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String budgetId)? assignBudgetId,
    TResult Function(int currencyId)? selectCurrency,
    TResult Function(int iconId)? chooseIconId,
    TResult Function(String nameStr)? changeAccountName,
    TResult Function(double balance)? changeBalance,
    TResult Function()? save,
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
    required TResult Function(_AssignBudgetId value) assignBudgetId,
    required TResult Function(_SelectCurrency value) selectCurrency,
    required TResult Function(_ChooseIconId value) chooseIconId,
    required TResult Function(_ChangeAccountName value) changeAccountName,
    required TResult Function(_ChangeBalance value) changeBalance,
    required TResult Function(_Save value) save,
  }) {
    return chooseIconId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignBudgetId value)? assignBudgetId,
    TResult? Function(_SelectCurrency value)? selectCurrency,
    TResult? Function(_ChooseIconId value)? chooseIconId,
    TResult? Function(_ChangeAccountName value)? changeAccountName,
    TResult? Function(_ChangeBalance value)? changeBalance,
    TResult? Function(_Save value)? save,
  }) {
    return chooseIconId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignBudgetId value)? assignBudgetId,
    TResult Function(_SelectCurrency value)? selectCurrency,
    TResult Function(_ChooseIconId value)? chooseIconId,
    TResult Function(_ChangeAccountName value)? changeAccountName,
    TResult Function(_ChangeBalance value)? changeBalance,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (chooseIconId != null) {
      return chooseIconId(this);
    }
    return orElse();
  }
}

abstract class _ChooseIconId implements AccountCreateEvent {
  const factory _ChooseIconId(final int iconId) = _$ChooseIconIdImpl;

  int get iconId;

  /// Create a copy of AccountCreateEvent
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
    extends _$AccountCreateEventCopyWithImpl<$Res, _$ChangeAccountNameImpl>
    implements _$$ChangeAccountNameImplCopyWith<$Res> {
  __$$ChangeAccountNameImplCopyWithImpl(_$ChangeAccountNameImpl _value,
      $Res Function(_$ChangeAccountNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountCreateEvent
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
    return 'AccountCreateEvent.changeAccountName(nameStr: $nameStr)';
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

  /// Create a copy of AccountCreateEvent
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
    required TResult Function(String budgetId) assignBudgetId,
    required TResult Function(int currencyId) selectCurrency,
    required TResult Function(int iconId) chooseIconId,
    required TResult Function(String nameStr) changeAccountName,
    required TResult Function(double balance) changeBalance,
    required TResult Function() save,
  }) {
    return changeAccountName(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String budgetId)? assignBudgetId,
    TResult? Function(int currencyId)? selectCurrency,
    TResult? Function(int iconId)? chooseIconId,
    TResult? Function(String nameStr)? changeAccountName,
    TResult? Function(double balance)? changeBalance,
    TResult? Function()? save,
  }) {
    return changeAccountName?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String budgetId)? assignBudgetId,
    TResult Function(int currencyId)? selectCurrency,
    TResult Function(int iconId)? chooseIconId,
    TResult Function(String nameStr)? changeAccountName,
    TResult Function(double balance)? changeBalance,
    TResult Function()? save,
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
    required TResult Function(_AssignBudgetId value) assignBudgetId,
    required TResult Function(_SelectCurrency value) selectCurrency,
    required TResult Function(_ChooseIconId value) chooseIconId,
    required TResult Function(_ChangeAccountName value) changeAccountName,
    required TResult Function(_ChangeBalance value) changeBalance,
    required TResult Function(_Save value) save,
  }) {
    return changeAccountName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignBudgetId value)? assignBudgetId,
    TResult? Function(_SelectCurrency value)? selectCurrency,
    TResult? Function(_ChooseIconId value)? chooseIconId,
    TResult? Function(_ChangeAccountName value)? changeAccountName,
    TResult? Function(_ChangeBalance value)? changeBalance,
    TResult? Function(_Save value)? save,
  }) {
    return changeAccountName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignBudgetId value)? assignBudgetId,
    TResult Function(_SelectCurrency value)? selectCurrency,
    TResult Function(_ChooseIconId value)? chooseIconId,
    TResult Function(_ChangeAccountName value)? changeAccountName,
    TResult Function(_ChangeBalance value)? changeBalance,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeAccountName != null) {
      return changeAccountName(this);
    }
    return orElse();
  }
}

abstract class _ChangeAccountName implements AccountCreateEvent {
  const factory _ChangeAccountName(final String nameStr) =
      _$ChangeAccountNameImpl;

  String get nameStr;

  /// Create a copy of AccountCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeAccountNameImplCopyWith<_$ChangeAccountNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeBalanceImplCopyWith<$Res> {
  factory _$$ChangeBalanceImplCopyWith(
          _$ChangeBalanceImpl value, $Res Function(_$ChangeBalanceImpl) then) =
      __$$ChangeBalanceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double balance});
}

/// @nodoc
class __$$ChangeBalanceImplCopyWithImpl<$Res>
    extends _$AccountCreateEventCopyWithImpl<$Res, _$ChangeBalanceImpl>
    implements _$$ChangeBalanceImplCopyWith<$Res> {
  __$$ChangeBalanceImplCopyWithImpl(
      _$ChangeBalanceImpl _value, $Res Function(_$ChangeBalanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
  }) {
    return _then(_$ChangeBalanceImpl(
      null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ChangeBalanceImpl implements _ChangeBalance {
  const _$ChangeBalanceImpl(this.balance);

  @override
  final double balance;

  @override
  String toString() {
    return 'AccountCreateEvent.changeBalance(balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeBalanceImpl &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balance);

  /// Create a copy of AccountCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeBalanceImplCopyWith<_$ChangeBalanceImpl> get copyWith =>
      __$$ChangeBalanceImplCopyWithImpl<_$ChangeBalanceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String budgetId) assignBudgetId,
    required TResult Function(int currencyId) selectCurrency,
    required TResult Function(int iconId) chooseIconId,
    required TResult Function(String nameStr) changeAccountName,
    required TResult Function(double balance) changeBalance,
    required TResult Function() save,
  }) {
    return changeBalance(balance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String budgetId)? assignBudgetId,
    TResult? Function(int currencyId)? selectCurrency,
    TResult? Function(int iconId)? chooseIconId,
    TResult? Function(String nameStr)? changeAccountName,
    TResult? Function(double balance)? changeBalance,
    TResult? Function()? save,
  }) {
    return changeBalance?.call(balance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String budgetId)? assignBudgetId,
    TResult Function(int currencyId)? selectCurrency,
    TResult Function(int iconId)? chooseIconId,
    TResult Function(String nameStr)? changeAccountName,
    TResult Function(double balance)? changeBalance,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeBalance != null) {
      return changeBalance(balance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AssignBudgetId value) assignBudgetId,
    required TResult Function(_SelectCurrency value) selectCurrency,
    required TResult Function(_ChooseIconId value) chooseIconId,
    required TResult Function(_ChangeAccountName value) changeAccountName,
    required TResult Function(_ChangeBalance value) changeBalance,
    required TResult Function(_Save value) save,
  }) {
    return changeBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignBudgetId value)? assignBudgetId,
    TResult? Function(_SelectCurrency value)? selectCurrency,
    TResult? Function(_ChooseIconId value)? chooseIconId,
    TResult? Function(_ChangeAccountName value)? changeAccountName,
    TResult? Function(_ChangeBalance value)? changeBalance,
    TResult? Function(_Save value)? save,
  }) {
    return changeBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignBudgetId value)? assignBudgetId,
    TResult Function(_SelectCurrency value)? selectCurrency,
    TResult Function(_ChooseIconId value)? chooseIconId,
    TResult Function(_ChangeAccountName value)? changeAccountName,
    TResult Function(_ChangeBalance value)? changeBalance,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeBalance != null) {
      return changeBalance(this);
    }
    return orElse();
  }
}

abstract class _ChangeBalance implements AccountCreateEvent {
  const factory _ChangeBalance(final double balance) = _$ChangeBalanceImpl;

  double get balance;

  /// Create a copy of AccountCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeBalanceImplCopyWith<_$ChangeBalanceImpl> get copyWith =>
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
    extends _$AccountCreateEventCopyWithImpl<$Res, _$SaveImpl>
    implements _$$SaveImplCopyWith<$Res> {
  __$$SaveImplCopyWithImpl(_$SaveImpl _value, $Res Function(_$SaveImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountCreateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SaveImpl implements _Save {
  const _$SaveImpl();

  @override
  String toString() {
    return 'AccountCreateEvent.save()';
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
    required TResult Function(String budgetId) assignBudgetId,
    required TResult Function(int currencyId) selectCurrency,
    required TResult Function(int iconId) chooseIconId,
    required TResult Function(String nameStr) changeAccountName,
    required TResult Function(double balance) changeBalance,
    required TResult Function() save,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String budgetId)? assignBudgetId,
    TResult? Function(int currencyId)? selectCurrency,
    TResult? Function(int iconId)? chooseIconId,
    TResult? Function(String nameStr)? changeAccountName,
    TResult? Function(double balance)? changeBalance,
    TResult? Function()? save,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String budgetId)? assignBudgetId,
    TResult Function(int currencyId)? selectCurrency,
    TResult Function(int iconId)? chooseIconId,
    TResult Function(String nameStr)? changeAccountName,
    TResult Function(double balance)? changeBalance,
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
    required TResult Function(_AssignBudgetId value) assignBudgetId,
    required TResult Function(_SelectCurrency value) selectCurrency,
    required TResult Function(_ChooseIconId value) chooseIconId,
    required TResult Function(_ChangeAccountName value) changeAccountName,
    required TResult Function(_ChangeBalance value) changeBalance,
    required TResult Function(_Save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AssignBudgetId value)? assignBudgetId,
    TResult? Function(_SelectCurrency value)? selectCurrency,
    TResult? Function(_ChooseIconId value)? chooseIconId,
    TResult? Function(_ChangeAccountName value)? changeAccountName,
    TResult? Function(_ChangeBalance value)? changeBalance,
    TResult? Function(_Save value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AssignBudgetId value)? assignBudgetId,
    TResult Function(_SelectCurrency value)? selectCurrency,
    TResult Function(_ChooseIconId value)? chooseIconId,
    TResult Function(_ChangeAccountName value)? changeAccountName,
    TResult Function(_ChangeBalance value)? changeBalance,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements AccountCreateEvent {
  const factory _Save() = _$SaveImpl;
}

/// @nodoc
mixin _$AccountCreateState {
  Account get account => throw _privateConstructorUsedError;
  bool get validateForm => throw _privateConstructorUsedError;
  Option<Either<AccountFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  /// Create a copy of AccountCreateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountCreateStateCopyWith<AccountCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCreateStateCopyWith<$Res> {
  factory $AccountCreateStateCopyWith(
          AccountCreateState value, $Res Function(AccountCreateState) then) =
      _$AccountCreateStateCopyWithImpl<$Res, AccountCreateState>;
  @useResult
  $Res call(
      {Account account,
      bool validateForm,
      Option<Either<AccountFailure, Unit>> failureOrSuccessOption});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$AccountCreateStateCopyWithImpl<$Res, $Val extends AccountCreateState>
    implements $AccountCreateStateCopyWith<$Res> {
  _$AccountCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountCreateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? validateForm = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      validateForm: null == validateForm
          ? _value.validateForm
          : validateForm // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AccountFailure, Unit>>,
    ) as $Val);
  }

  /// Create a copy of AccountCreateState
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
abstract class _$$AccountCreateStateImplCopyWith<$Res>
    implements $AccountCreateStateCopyWith<$Res> {
  factory _$$AccountCreateStateImplCopyWith(_$AccountCreateStateImpl value,
          $Res Function(_$AccountCreateStateImpl) then) =
      __$$AccountCreateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Account account,
      bool validateForm,
      Option<Either<AccountFailure, Unit>> failureOrSuccessOption});

  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$AccountCreateStateImplCopyWithImpl<$Res>
    extends _$AccountCreateStateCopyWithImpl<$Res, _$AccountCreateStateImpl>
    implements _$$AccountCreateStateImplCopyWith<$Res> {
  __$$AccountCreateStateImplCopyWithImpl(_$AccountCreateStateImpl _value,
      $Res Function(_$AccountCreateStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountCreateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? validateForm = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$AccountCreateStateImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      validateForm: null == validateForm
          ? _value.validateForm
          : validateForm // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AccountFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$AccountCreateStateImpl implements _AccountCreateState {
  const _$AccountCreateStateImpl(
      {required this.account,
      required this.validateForm,
      required this.failureOrSuccessOption});

  @override
  final Account account;
  @override
  final bool validateForm;
  @override
  final Option<Either<AccountFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'AccountCreateState(account: $account, validateForm: $validateForm, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountCreateStateImpl &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.validateForm, validateForm) ||
                other.validateForm == validateForm) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, account, validateForm, failureOrSuccessOption);

  /// Create a copy of AccountCreateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountCreateStateImplCopyWith<_$AccountCreateStateImpl> get copyWith =>
      __$$AccountCreateStateImplCopyWithImpl<_$AccountCreateStateImpl>(
          this, _$identity);
}

abstract class _AccountCreateState implements AccountCreateState {
  const factory _AccountCreateState(
      {required final Account account,
      required final bool validateForm,
      required final Option<Either<AccountFailure, Unit>>
          failureOrSuccessOption}) = _$AccountCreateStateImpl;

  @override
  Account get account;
  @override
  bool get validateForm;
  @override
  Option<Either<AccountFailure, Unit>> get failureOrSuccessOption;

  /// Create a copy of AccountCreateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountCreateStateImplCopyWith<_$AccountCreateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
