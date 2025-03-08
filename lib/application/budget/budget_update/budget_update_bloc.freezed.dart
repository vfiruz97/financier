// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'budget_update_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BudgetUpdateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) changeName,
    required TResult Function() toggleActivity,
    required TResult Function(Budget budget) assignBudget,
    required TResult Function() save,
    required TResult Function() delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? changeName,
    TResult? Function()? toggleActivity,
    TResult? Function(Budget budget)? assignBudget,
    TResult? Function()? save,
    TResult? Function()? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? changeName,
    TResult Function()? toggleActivity,
    TResult Function(Budget budget)? assignBudget,
    TResult Function()? save,
    TResult Function()? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ToggleActivity value) toggleActivity,
    required TResult Function(_AssignBudget value) assignBudget,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ToggleActivity value)? toggleActivity,
    TResult? Function(_AssignBudget value)? assignBudget,
    TResult? Function(_Save value)? save,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ToggleActivity value)? toggleActivity,
    TResult Function(_AssignBudget value)? assignBudget,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetUpdateEventCopyWith<$Res> {
  factory $BudgetUpdateEventCopyWith(
          BudgetUpdateEvent value, $Res Function(BudgetUpdateEvent) then) =
      _$BudgetUpdateEventCopyWithImpl<$Res, BudgetUpdateEvent>;
}

/// @nodoc
class _$BudgetUpdateEventCopyWithImpl<$Res, $Val extends BudgetUpdateEvent>
    implements $BudgetUpdateEventCopyWith<$Res> {
  _$BudgetUpdateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BudgetUpdateEvent
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
    extends _$BudgetUpdateEventCopyWithImpl<$Res, _$ChangeNameImpl>
    implements _$$ChangeNameImplCopyWith<$Res> {
  __$$ChangeNameImplCopyWithImpl(
      _$ChangeNameImpl _value, $Res Function(_$ChangeNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetUpdateEvent
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
    return 'BudgetUpdateEvent.changeName(nameStr: $nameStr)';
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

  /// Create a copy of BudgetUpdateEvent
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
    required TResult Function(Budget budget) assignBudget,
    required TResult Function() save,
    required TResult Function() delete,
  }) {
    return changeName(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? changeName,
    TResult? Function()? toggleActivity,
    TResult? Function(Budget budget)? assignBudget,
    TResult? Function()? save,
    TResult? Function()? delete,
  }) {
    return changeName?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? changeName,
    TResult Function()? toggleActivity,
    TResult Function(Budget budget)? assignBudget,
    TResult Function()? save,
    TResult Function()? delete,
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
    required TResult Function(_AssignBudget value) assignBudget,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) {
    return changeName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ToggleActivity value)? toggleActivity,
    TResult? Function(_AssignBudget value)? assignBudget,
    TResult? Function(_Save value)? save,
    TResult? Function(_Delete value)? delete,
  }) {
    return changeName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ToggleActivity value)? toggleActivity,
    TResult Function(_AssignBudget value)? assignBudget,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(this);
    }
    return orElse();
  }
}

abstract class _ChangeName implements BudgetUpdateEvent {
  const factory _ChangeName(final String nameStr) = _$ChangeNameImpl;

  String get nameStr;

  /// Create a copy of BudgetUpdateEvent
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
    extends _$BudgetUpdateEventCopyWithImpl<$Res, _$ToggleActivityImpl>
    implements _$$ToggleActivityImplCopyWith<$Res> {
  __$$ToggleActivityImplCopyWithImpl(
      _$ToggleActivityImpl _value, $Res Function(_$ToggleActivityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ToggleActivityImpl implements _ToggleActivity {
  const _$ToggleActivityImpl();

  @override
  String toString() {
    return 'BudgetUpdateEvent.toggleActivity()';
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
    required TResult Function(Budget budget) assignBudget,
    required TResult Function() save,
    required TResult Function() delete,
  }) {
    return toggleActivity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? changeName,
    TResult? Function()? toggleActivity,
    TResult? Function(Budget budget)? assignBudget,
    TResult? Function()? save,
    TResult? Function()? delete,
  }) {
    return toggleActivity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? changeName,
    TResult Function()? toggleActivity,
    TResult Function(Budget budget)? assignBudget,
    TResult Function()? save,
    TResult Function()? delete,
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
    required TResult Function(_AssignBudget value) assignBudget,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) {
    return toggleActivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ToggleActivity value)? toggleActivity,
    TResult? Function(_AssignBudget value)? assignBudget,
    TResult? Function(_Save value)? save,
    TResult? Function(_Delete value)? delete,
  }) {
    return toggleActivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ToggleActivity value)? toggleActivity,
    TResult Function(_AssignBudget value)? assignBudget,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (toggleActivity != null) {
      return toggleActivity(this);
    }
    return orElse();
  }
}

abstract class _ToggleActivity implements BudgetUpdateEvent {
  const factory _ToggleActivity() = _$ToggleActivityImpl;
}

/// @nodoc
abstract class _$$AssignBudgetImplCopyWith<$Res> {
  factory _$$AssignBudgetImplCopyWith(
          _$AssignBudgetImpl value, $Res Function(_$AssignBudgetImpl) then) =
      __$$AssignBudgetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Budget budget});

  $BudgetCopyWith<$Res> get budget;
}

/// @nodoc
class __$$AssignBudgetImplCopyWithImpl<$Res>
    extends _$BudgetUpdateEventCopyWithImpl<$Res, _$AssignBudgetImpl>
    implements _$$AssignBudgetImplCopyWith<$Res> {
  __$$AssignBudgetImplCopyWithImpl(
      _$AssignBudgetImpl _value, $Res Function(_$AssignBudgetImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? budget = null,
  }) {
    return _then(_$AssignBudgetImpl(
      null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as Budget,
    ));
  }

  /// Create a copy of BudgetUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BudgetCopyWith<$Res> get budget {
    return $BudgetCopyWith<$Res>(_value.budget, (value) {
      return _then(_value.copyWith(budget: value));
    });
  }
}

/// @nodoc

class _$AssignBudgetImpl implements _AssignBudget {
  const _$AssignBudgetImpl(this.budget);

  @override
  final Budget budget;

  @override
  String toString() {
    return 'BudgetUpdateEvent.assignBudget(budget: $budget)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignBudgetImpl &&
            (identical(other.budget, budget) || other.budget == budget));
  }

  @override
  int get hashCode => Object.hash(runtimeType, budget);

  /// Create a copy of BudgetUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignBudgetImplCopyWith<_$AssignBudgetImpl> get copyWith =>
      __$$AssignBudgetImplCopyWithImpl<_$AssignBudgetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) changeName,
    required TResult Function() toggleActivity,
    required TResult Function(Budget budget) assignBudget,
    required TResult Function() save,
    required TResult Function() delete,
  }) {
    return assignBudget(budget);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? changeName,
    TResult? Function()? toggleActivity,
    TResult? Function(Budget budget)? assignBudget,
    TResult? Function()? save,
    TResult? Function()? delete,
  }) {
    return assignBudget?.call(budget);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? changeName,
    TResult Function()? toggleActivity,
    TResult Function(Budget budget)? assignBudget,
    TResult Function()? save,
    TResult Function()? delete,
    required TResult orElse(),
  }) {
    if (assignBudget != null) {
      return assignBudget(budget);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ToggleActivity value) toggleActivity,
    required TResult Function(_AssignBudget value) assignBudget,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) {
    return assignBudget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ToggleActivity value)? toggleActivity,
    TResult? Function(_AssignBudget value)? assignBudget,
    TResult? Function(_Save value)? save,
    TResult? Function(_Delete value)? delete,
  }) {
    return assignBudget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ToggleActivity value)? toggleActivity,
    TResult Function(_AssignBudget value)? assignBudget,
    TResult Function(_Save value)? save,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (assignBudget != null) {
      return assignBudget(this);
    }
    return orElse();
  }
}

abstract class _AssignBudget implements BudgetUpdateEvent {
  const factory _AssignBudget(final Budget budget) = _$AssignBudgetImpl;

  Budget get budget;

  /// Create a copy of BudgetUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssignBudgetImplCopyWith<_$AssignBudgetImpl> get copyWith =>
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
    extends _$BudgetUpdateEventCopyWithImpl<$Res, _$SaveImpl>
    implements _$$SaveImplCopyWith<$Res> {
  __$$SaveImplCopyWithImpl(_$SaveImpl _value, $Res Function(_$SaveImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SaveImpl implements _Save {
  const _$SaveImpl();

  @override
  String toString() {
    return 'BudgetUpdateEvent.save()';
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
    required TResult Function(Budget budget) assignBudget,
    required TResult Function() save,
    required TResult Function() delete,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? changeName,
    TResult? Function()? toggleActivity,
    TResult? Function(Budget budget)? assignBudget,
    TResult? Function()? save,
    TResult? Function()? delete,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? changeName,
    TResult Function()? toggleActivity,
    TResult Function(Budget budget)? assignBudget,
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
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ToggleActivity value) toggleActivity,
    required TResult Function(_AssignBudget value) assignBudget,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ToggleActivity value)? toggleActivity,
    TResult? Function(_AssignBudget value)? assignBudget,
    TResult? Function(_Save value)? save,
    TResult? Function(_Delete value)? delete,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ToggleActivity value)? toggleActivity,
    TResult Function(_AssignBudget value)? assignBudget,
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

abstract class _Save implements BudgetUpdateEvent {
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
    extends _$BudgetUpdateEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetUpdateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl();

  @override
  String toString() {
    return 'BudgetUpdateEvent.delete()';
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
    required TResult Function(String nameStr) changeName,
    required TResult Function() toggleActivity,
    required TResult Function(Budget budget) assignBudget,
    required TResult Function() save,
    required TResult Function() delete,
  }) {
    return delete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? changeName,
    TResult? Function()? toggleActivity,
    TResult? Function(Budget budget)? assignBudget,
    TResult? Function()? save,
    TResult? Function()? delete,
  }) {
    return delete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? changeName,
    TResult Function()? toggleActivity,
    TResult Function(Budget budget)? assignBudget,
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
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ToggleActivity value) toggleActivity,
    required TResult Function(_AssignBudget value) assignBudget,
    required TResult Function(_Save value) save,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ToggleActivity value)? toggleActivity,
    TResult? Function(_AssignBudget value)? assignBudget,
    TResult? Function(_Save value)? save,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ToggleActivity value)? toggleActivity,
    TResult Function(_AssignBudget value)? assignBudget,
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

abstract class _Delete implements BudgetUpdateEvent {
  const factory _Delete() = _$DeleteImpl;
}

/// @nodoc
mixin _$BudgetUpdateState {
  Budget get budget => throw _privateConstructorUsedError;
  bool get validateForm => throw _privateConstructorUsedError;
  Option<Either<BudgetFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  /// Create a copy of BudgetUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BudgetUpdateStateCopyWith<BudgetUpdateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetUpdateStateCopyWith<$Res> {
  factory $BudgetUpdateStateCopyWith(
          BudgetUpdateState value, $Res Function(BudgetUpdateState) then) =
      _$BudgetUpdateStateCopyWithImpl<$Res, BudgetUpdateState>;
  @useResult
  $Res call(
      {Budget budget,
      bool validateForm,
      Option<Either<BudgetFailure, Unit>> failureOrSuccessOption});

  $BudgetCopyWith<$Res> get budget;
}

/// @nodoc
class _$BudgetUpdateStateCopyWithImpl<$Res, $Val extends BudgetUpdateState>
    implements $BudgetUpdateStateCopyWith<$Res> {
  _$BudgetUpdateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BudgetUpdateState
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

  /// Create a copy of BudgetUpdateState
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
abstract class _$$InitialImplCopyWith<$Res>
    implements $BudgetUpdateStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
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
class __$$InitialImplCopyWithImpl<$Res>
    extends _$BudgetUpdateStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of BudgetUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? budget = null,
    Object? validateForm = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$InitialImpl(
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

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
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
    return 'BudgetUpdateState(budget: $budget, validateForm: $validateForm, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.budget, budget) || other.budget == budget) &&
            (identical(other.validateForm, validateForm) ||
                other.validateForm == validateForm) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, budget, validateForm, failureOrSuccessOption);

  /// Create a copy of BudgetUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements BudgetUpdateState {
  const factory _Initial(
      {required final Budget budget,
      required final bool validateForm,
      required final Option<Either<BudgetFailure, Unit>>
          failureOrSuccessOption}) = _$InitialImpl;

  @override
  Budget get budget;
  @override
  bool get validateForm;
  @override
  Option<Either<BudgetFailure, Unit>> get failureOrSuccessOption;

  /// Create a copy of BudgetUpdateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
