// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'budget_create_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BudgetCreateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) changeName,
    required TResult Function() toggleActivity,
    required TResult Function(String userIdStr) assignUserId,
    required TResult Function() save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? changeName,
    TResult? Function()? toggleActivity,
    TResult? Function(String userIdStr)? assignUserId,
    TResult? Function()? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? changeName,
    TResult Function()? toggleActivity,
    TResult Function(String userIdStr)? assignUserId,
    TResult Function()? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ToggleActivity value) toggleActivity,
    required TResult Function(_AssignUserId value) assignUserId,
    required TResult Function(_Save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ToggleActivity value)? toggleActivity,
    TResult? Function(_AssignUserId value)? assignUserId,
    TResult? Function(_Save value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ToggleActivity value)? toggleActivity,
    TResult Function(_AssignUserId value)? assignUserId,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetCreateEventCopyWith<$Res> {
  factory $BudgetCreateEventCopyWith(
          BudgetCreateEvent value, $Res Function(BudgetCreateEvent) then) =
      _$BudgetCreateEventCopyWithImpl<$Res, BudgetCreateEvent>;
}

/// @nodoc
class _$BudgetCreateEventCopyWithImpl<$Res, $Val extends BudgetCreateEvent>
    implements $BudgetCreateEventCopyWith<$Res> {
  _$BudgetCreateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BudgetCreateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChangeNameImplCopyWith<$Res> {
  factory _$$ChangeNameImplCopyWith(
          _$ChangeNameImpl value, $Res Function(_$ChangeNameImpl) then) =
      __$$ChangeNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String nameStr});
}

/// @nodoc
class __$$ChangeNameImplCopyWithImpl<$Res>
    extends _$BudgetCreateEventCopyWithImpl<$Res, _$ChangeNameImpl>
    implements _$$ChangeNameImplCopyWith<$Res> {
  __$$ChangeNameImplCopyWithImpl(
      _$ChangeNameImpl _value, $Res Function(_$ChangeNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameStr = null,
  }) {
    return _then(_$ChangeNameImpl(
      null == nameStr
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeNameImpl implements _ChangeName {
  const _$ChangeNameImpl(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'BudgetCreateEvent.changeName(nameStr: $nameStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeNameImpl &&
            (identical(other.nameStr, nameStr) || other.nameStr == nameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameStr);

  /// Create a copy of BudgetCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeNameImplCopyWith<_$ChangeNameImpl> get copyWith =>
      __$$ChangeNameImplCopyWithImpl<_$ChangeNameImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) changeName,
    required TResult Function() toggleActivity,
    required TResult Function(String userIdStr) assignUserId,
    required TResult Function() save,
  }) {
    return changeName(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? changeName,
    TResult? Function()? toggleActivity,
    TResult? Function(String userIdStr)? assignUserId,
    TResult? Function()? save,
  }) {
    return changeName?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? changeName,
    TResult Function()? toggleActivity,
    TResult Function(String userIdStr)? assignUserId,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ToggleActivity value) toggleActivity,
    required TResult Function(_AssignUserId value) assignUserId,
    required TResult Function(_Save value) save,
  }) {
    return changeName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ToggleActivity value)? toggleActivity,
    TResult? Function(_AssignUserId value)? assignUserId,
    TResult? Function(_Save value)? save,
  }) {
    return changeName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ToggleActivity value)? toggleActivity,
    TResult Function(_AssignUserId value)? assignUserId,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(this);
    }
    return orElse();
  }
}

abstract class _ChangeName implements BudgetCreateEvent {
  const factory _ChangeName(final String nameStr) = _$ChangeNameImpl;

  String get nameStr;

  /// Create a copy of BudgetCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeNameImplCopyWith<_$ChangeNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleActivityImplCopyWith<$Res> {
  factory _$$ToggleActivityImplCopyWith(_$ToggleActivityImpl value,
          $Res Function(_$ToggleActivityImpl) then) =
      __$$ToggleActivityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleActivityImplCopyWithImpl<$Res>
    extends _$BudgetCreateEventCopyWithImpl<$Res, _$ToggleActivityImpl>
    implements _$$ToggleActivityImplCopyWith<$Res> {
  __$$ToggleActivityImplCopyWithImpl(
      _$ToggleActivityImpl _value, $Res Function(_$ToggleActivityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetCreateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ToggleActivityImpl implements _ToggleActivity {
  const _$ToggleActivityImpl();

  @override
  String toString() {
    return 'BudgetCreateEvent.toggleActivity()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleActivityImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) changeName,
    required TResult Function() toggleActivity,
    required TResult Function(String userIdStr) assignUserId,
    required TResult Function() save,
  }) {
    return toggleActivity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? changeName,
    TResult? Function()? toggleActivity,
    TResult? Function(String userIdStr)? assignUserId,
    TResult? Function()? save,
  }) {
    return toggleActivity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? changeName,
    TResult Function()? toggleActivity,
    TResult Function(String userIdStr)? assignUserId,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (toggleActivity != null) {
      return toggleActivity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ToggleActivity value) toggleActivity,
    required TResult Function(_AssignUserId value) assignUserId,
    required TResult Function(_Save value) save,
  }) {
    return toggleActivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ToggleActivity value)? toggleActivity,
    TResult? Function(_AssignUserId value)? assignUserId,
    TResult? Function(_Save value)? save,
  }) {
    return toggleActivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ToggleActivity value)? toggleActivity,
    TResult Function(_AssignUserId value)? assignUserId,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (toggleActivity != null) {
      return toggleActivity(this);
    }
    return orElse();
  }
}

abstract class _ToggleActivity implements BudgetCreateEvent {
  const factory _ToggleActivity() = _$ToggleActivityImpl;
}

/// @nodoc
abstract class _$$AssignUserIdImplCopyWith<$Res> {
  factory _$$AssignUserIdImplCopyWith(
          _$AssignUserIdImpl value, $Res Function(_$AssignUserIdImpl) then) =
      __$$AssignUserIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userIdStr});
}

/// @nodoc
class __$$AssignUserIdImplCopyWithImpl<$Res>
    extends _$BudgetCreateEventCopyWithImpl<$Res, _$AssignUserIdImpl>
    implements _$$AssignUserIdImplCopyWith<$Res> {
  __$$AssignUserIdImplCopyWithImpl(
      _$AssignUserIdImpl _value, $Res Function(_$AssignUserIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userIdStr = null,
  }) {
    return _then(_$AssignUserIdImpl(
      null == userIdStr
          ? _value.userIdStr
          : userIdStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AssignUserIdImpl implements _AssignUserId {
  const _$AssignUserIdImpl(this.userIdStr);

  @override
  final String userIdStr;

  @override
  String toString() {
    return 'BudgetCreateEvent.assignUserId(userIdStr: $userIdStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignUserIdImpl &&
            (identical(other.userIdStr, userIdStr) ||
                other.userIdStr == userIdStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userIdStr);

  /// Create a copy of BudgetCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignUserIdImplCopyWith<_$AssignUserIdImpl> get copyWith =>
      __$$AssignUserIdImplCopyWithImpl<_$AssignUserIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) changeName,
    required TResult Function() toggleActivity,
    required TResult Function(String userIdStr) assignUserId,
    required TResult Function() save,
  }) {
    return assignUserId(userIdStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? changeName,
    TResult? Function()? toggleActivity,
    TResult? Function(String userIdStr)? assignUserId,
    TResult? Function()? save,
  }) {
    return assignUserId?.call(userIdStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? changeName,
    TResult Function()? toggleActivity,
    TResult Function(String userIdStr)? assignUserId,
    TResult Function()? save,
    required TResult orElse(),
  }) {
    if (assignUserId != null) {
      return assignUserId(userIdStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ToggleActivity value) toggleActivity,
    required TResult Function(_AssignUserId value) assignUserId,
    required TResult Function(_Save value) save,
  }) {
    return assignUserId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ToggleActivity value)? toggleActivity,
    TResult? Function(_AssignUserId value)? assignUserId,
    TResult? Function(_Save value)? save,
  }) {
    return assignUserId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ToggleActivity value)? toggleActivity,
    TResult Function(_AssignUserId value)? assignUserId,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (assignUserId != null) {
      return assignUserId(this);
    }
    return orElse();
  }
}

abstract class _AssignUserId implements BudgetCreateEvent {
  const factory _AssignUserId(final String userIdStr) = _$AssignUserIdImpl;

  String get userIdStr;

  /// Create a copy of BudgetCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssignUserIdImplCopyWith<_$AssignUserIdImpl> get copyWith =>
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
    extends _$BudgetCreateEventCopyWithImpl<$Res, _$SaveImpl>
    implements _$$SaveImplCopyWith<$Res> {
  __$$SaveImplCopyWithImpl(_$SaveImpl _value, $Res Function(_$SaveImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetCreateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SaveImpl implements _Save {
  const _$SaveImpl();

  @override
  String toString() {
    return 'BudgetCreateEvent.save()';
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
    required TResult Function(String nameStr) changeName,
    required TResult Function() toggleActivity,
    required TResult Function(String userIdStr) assignUserId,
    required TResult Function() save,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? changeName,
    TResult? Function()? toggleActivity,
    TResult? Function(String userIdStr)? assignUserId,
    TResult? Function()? save,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? changeName,
    TResult Function()? toggleActivity,
    TResult Function(String userIdStr)? assignUserId,
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
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ToggleActivity value) toggleActivity,
    required TResult Function(_AssignUserId value) assignUserId,
    required TResult Function(_Save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ToggleActivity value)? toggleActivity,
    TResult? Function(_AssignUserId value)? assignUserId,
    TResult? Function(_Save value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ToggleActivity value)? toggleActivity,
    TResult Function(_AssignUserId value)? assignUserId,
    TResult Function(_Save value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _Save implements BudgetCreateEvent {
  const factory _Save() = _$SaveImpl;
}

/// @nodoc
mixin _$BudgetCreateState {
  Budget get budget => throw _privateConstructorUsedError;
  bool get validateForm => throw _privateConstructorUsedError;
  Option<Either<BudgetFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  /// Create a copy of BudgetCreateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BudgetCreateStateCopyWith<BudgetCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetCreateStateCopyWith<$Res> {
  factory $BudgetCreateStateCopyWith(
          BudgetCreateState value, $Res Function(BudgetCreateState) then) =
      _$BudgetCreateStateCopyWithImpl<$Res, BudgetCreateState>;
  @useResult
  $Res call(
      {Budget budget,
      bool validateForm,
      Option<Either<BudgetFailure, Unit>> failureOrSuccessOption});

  $BudgetCopyWith<$Res> get budget;
}

/// @nodoc
class _$BudgetCreateStateCopyWithImpl<$Res, $Val extends BudgetCreateState>
    implements $BudgetCreateStateCopyWith<$Res> {
  _$BudgetCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BudgetCreateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? budget = null,
    Object? validateForm = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as Budget,
      validateForm: null == validateForm
          ? _value.validateForm
          : validateForm // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BudgetFailure, Unit>>,
    ) as $Val);
  }

  /// Create a copy of BudgetCreateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BudgetCopyWith<$Res> get budget {
    return $BudgetCopyWith<$Res>(_value.budget, (value) {
      return _then(_value.copyWith(budget: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BudgetCreateStateImplCopyWith<$Res>
    implements $BudgetCreateStateCopyWith<$Res> {
  factory _$$BudgetCreateStateImplCopyWith(_$BudgetCreateStateImpl value,
          $Res Function(_$BudgetCreateStateImpl) then) =
      __$$BudgetCreateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Budget budget,
      bool validateForm,
      Option<Either<BudgetFailure, Unit>> failureOrSuccessOption});

  @override
  $BudgetCopyWith<$Res> get budget;
}

/// @nodoc
class __$$BudgetCreateStateImplCopyWithImpl<$Res>
    extends _$BudgetCreateStateCopyWithImpl<$Res, _$BudgetCreateStateImpl>
    implements _$$BudgetCreateStateImplCopyWith<$Res> {
  __$$BudgetCreateStateImplCopyWithImpl(_$BudgetCreateStateImpl _value,
      $Res Function(_$BudgetCreateStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetCreateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? budget = null,
    Object? validateForm = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$BudgetCreateStateImpl(
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as Budget,
      validateForm: null == validateForm
          ? _value.validateForm
          : validateForm // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BudgetFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$BudgetCreateStateImpl implements _BudgetCreateState {
  const _$BudgetCreateStateImpl(
      {required this.budget,
      required this.validateForm,
      required this.failureOrSuccessOption});

  @override
  final Budget budget;
  @override
  final bool validateForm;
  @override
  final Option<Either<BudgetFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'BudgetCreateState(budget: $budget, validateForm: $validateForm, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetCreateStateImpl &&
            (identical(other.budget, budget) || other.budget == budget) &&
            (identical(other.validateForm, validateForm) ||
                other.validateForm == validateForm) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, budget, validateForm, failureOrSuccessOption);

  /// Create a copy of BudgetCreateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BudgetCreateStateImplCopyWith<_$BudgetCreateStateImpl> get copyWith =>
      __$$BudgetCreateStateImplCopyWithImpl<_$BudgetCreateStateImpl>(
          this, _$identity);
}

abstract class _BudgetCreateState implements BudgetCreateState {
  const factory _BudgetCreateState(
      {required final Budget budget,
      required final bool validateForm,
      required final Option<Either<BudgetFailure, Unit>>
          failureOrSuccessOption}) = _$BudgetCreateStateImpl;

  @override
  Budget get budget;
  @override
  bool get validateForm;
  @override
  Option<Either<BudgetFailure, Unit>> get failureOrSuccessOption;

  /// Create a copy of BudgetCreateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BudgetCreateStateImplCopyWith<_$BudgetCreateStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
