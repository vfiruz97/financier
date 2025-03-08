// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ids_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IdsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) started,
    required TResult Function() refreshActiveBudgetId,
    required TResult Function() refreshAccountIds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? started,
    TResult? Function()? refreshActiveBudgetId,
    TResult? Function()? refreshAccountIds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? started,
    TResult Function()? refreshActiveBudgetId,
    TResult Function()? refreshAccountIds,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshActiveBudgetId value)
        refreshActiveBudgetId,
    required TResult Function(_RefreshAccountIds value) refreshAccountIds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshActiveBudgetId value)? refreshActiveBudgetId,
    TResult? Function(_RefreshAccountIds value)? refreshAccountIds,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RefreshActiveBudgetId value)? refreshActiveBudgetId,
    TResult Function(_RefreshAccountIds value)? refreshAccountIds,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdsEventCopyWith<$Res> {
  factory $IdsEventCopyWith(IdsEvent value, $Res Function(IdsEvent) then) =
      _$IdsEventCopyWithImpl<$Res, IdsEvent>;
}

/// @nodoc
class _$IdsEventCopyWithImpl<$Res, $Val extends IdsEvent>
    implements $IdsEventCopyWith<$Res> {
  _$IdsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IdsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$IdsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of IdsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$StartedImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'IdsEvent.started(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of IdsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) started,
    required TResult Function() refreshActiveBudgetId,
    required TResult Function() refreshAccountIds,
  }) {
    return started(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? started,
    TResult? Function()? refreshActiveBudgetId,
    TResult? Function()? refreshAccountIds,
  }) {
    return started?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? started,
    TResult Function()? refreshActiveBudgetId,
    TResult Function()? refreshAccountIds,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshActiveBudgetId value)
        refreshActiveBudgetId,
    required TResult Function(_RefreshAccountIds value) refreshAccountIds,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshActiveBudgetId value)? refreshActiveBudgetId,
    TResult? Function(_RefreshAccountIds value)? refreshAccountIds,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RefreshActiveBudgetId value)? refreshActiveBudgetId,
    TResult Function(_RefreshAccountIds value)? refreshAccountIds,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements IdsEvent {
  const factory _Started(final String userId) = _$StartedImpl;

  String get userId;

  /// Create a copy of IdsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshActiveBudgetIdImplCopyWith<$Res> {
  factory _$$RefreshActiveBudgetIdImplCopyWith(
          _$RefreshActiveBudgetIdImpl value,
          $Res Function(_$RefreshActiveBudgetIdImpl) then) =
      __$$RefreshActiveBudgetIdImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshActiveBudgetIdImplCopyWithImpl<$Res>
    extends _$IdsEventCopyWithImpl<$Res, _$RefreshActiveBudgetIdImpl>
    implements _$$RefreshActiveBudgetIdImplCopyWith<$Res> {
  __$$RefreshActiveBudgetIdImplCopyWithImpl(_$RefreshActiveBudgetIdImpl _value,
      $Res Function(_$RefreshActiveBudgetIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of IdsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshActiveBudgetIdImpl implements _RefreshActiveBudgetId {
  const _$RefreshActiveBudgetIdImpl();

  @override
  String toString() {
    return 'IdsEvent.refreshActiveBudgetId()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshActiveBudgetIdImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) started,
    required TResult Function() refreshActiveBudgetId,
    required TResult Function() refreshAccountIds,
  }) {
    return refreshActiveBudgetId();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? started,
    TResult? Function()? refreshActiveBudgetId,
    TResult? Function()? refreshAccountIds,
  }) {
    return refreshActiveBudgetId?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? started,
    TResult Function()? refreshActiveBudgetId,
    TResult Function()? refreshAccountIds,
    required TResult orElse(),
  }) {
    if (refreshActiveBudgetId != null) {
      return refreshActiveBudgetId();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshActiveBudgetId value)
        refreshActiveBudgetId,
    required TResult Function(_RefreshAccountIds value) refreshAccountIds,
  }) {
    return refreshActiveBudgetId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshActiveBudgetId value)? refreshActiveBudgetId,
    TResult? Function(_RefreshAccountIds value)? refreshAccountIds,
  }) {
    return refreshActiveBudgetId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RefreshActiveBudgetId value)? refreshActiveBudgetId,
    TResult Function(_RefreshAccountIds value)? refreshAccountIds,
    required TResult orElse(),
  }) {
    if (refreshActiveBudgetId != null) {
      return refreshActiveBudgetId(this);
    }
    return orElse();
  }
}

abstract class _RefreshActiveBudgetId implements IdsEvent {
  const factory _RefreshActiveBudgetId() = _$RefreshActiveBudgetIdImpl;
}

/// @nodoc
abstract class _$$RefreshAccountIdsImplCopyWith<$Res> {
  factory _$$RefreshAccountIdsImplCopyWith(_$RefreshAccountIdsImpl value,
          $Res Function(_$RefreshAccountIdsImpl) then) =
      __$$RefreshAccountIdsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshAccountIdsImplCopyWithImpl<$Res>
    extends _$IdsEventCopyWithImpl<$Res, _$RefreshAccountIdsImpl>
    implements _$$RefreshAccountIdsImplCopyWith<$Res> {
  __$$RefreshAccountIdsImplCopyWithImpl(_$RefreshAccountIdsImpl _value,
      $Res Function(_$RefreshAccountIdsImpl) _then)
      : super(_value, _then);

  /// Create a copy of IdsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshAccountIdsImpl implements _RefreshAccountIds {
  const _$RefreshAccountIdsImpl();

  @override
  String toString() {
    return 'IdsEvent.refreshAccountIds()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshAccountIdsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) started,
    required TResult Function() refreshActiveBudgetId,
    required TResult Function() refreshAccountIds,
  }) {
    return refreshAccountIds();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? started,
    TResult? Function()? refreshActiveBudgetId,
    TResult? Function()? refreshAccountIds,
  }) {
    return refreshAccountIds?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? started,
    TResult Function()? refreshActiveBudgetId,
    TResult Function()? refreshAccountIds,
    required TResult orElse(),
  }) {
    if (refreshAccountIds != null) {
      return refreshAccountIds();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_RefreshActiveBudgetId value)
        refreshActiveBudgetId,
    required TResult Function(_RefreshAccountIds value) refreshAccountIds,
  }) {
    return refreshAccountIds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_RefreshActiveBudgetId value)? refreshActiveBudgetId,
    TResult? Function(_RefreshAccountIds value)? refreshAccountIds,
  }) {
    return refreshAccountIds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_RefreshActiveBudgetId value)? refreshActiveBudgetId,
    TResult Function(_RefreshAccountIds value)? refreshAccountIds,
    required TResult orElse(),
  }) {
    if (refreshAccountIds != null) {
      return refreshAccountIds(this);
    }
    return orElse();
  }
}

abstract class _RefreshAccountIds implements IdsEvent {
  const factory _RefreshAccountIds() = _$RefreshAccountIdsImpl;
}

/// @nodoc
mixin _$IdsState {
  String? get userId => throw _privateConstructorUsedError;
  Budget? get activeBudget => throw _privateConstructorUsedError;
  List<Account>? get accounts => throw _privateConstructorUsedError;

  /// Create a copy of IdsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IdsStateCopyWith<IdsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdsStateCopyWith<$Res> {
  factory $IdsStateCopyWith(IdsState value, $Res Function(IdsState) then) =
      _$IdsStateCopyWithImpl<$Res, IdsState>;
  @useResult
  $Res call({String? userId, Budget? activeBudget, List<Account>? accounts});
}

/// @nodoc
class _$IdsStateCopyWithImpl<$Res, $Val extends IdsState>
    implements $IdsStateCopyWith<$Res> {
  _$IdsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IdsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? activeBudget = freezed,
    Object? accounts = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      activeBudget: freezed == activeBudget
          ? _value.activeBudget
          : activeBudget // ignore: cast_nullable_to_non_nullable
              as Budget?,
      accounts: freezed == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdsStateImplCopyWith<$Res>
    implements $IdsStateCopyWith<$Res> {
  factory _$$IdsStateImplCopyWith(
          _$IdsStateImpl value, $Res Function(_$IdsStateImpl) then) =
      __$$IdsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userId, Budget? activeBudget, List<Account>? accounts});
}

/// @nodoc
class __$$IdsStateImplCopyWithImpl<$Res>
    extends _$IdsStateCopyWithImpl<$Res, _$IdsStateImpl>
    implements _$$IdsStateImplCopyWith<$Res> {
  __$$IdsStateImplCopyWithImpl(
      _$IdsStateImpl _value, $Res Function(_$IdsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of IdsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? activeBudget = freezed,
    Object? accounts = freezed,
  }) {
    return _then(_$IdsStateImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      activeBudget: freezed == activeBudget
          ? _value.activeBudget
          : activeBudget // ignore: cast_nullable_to_non_nullable
              as Budget?,
      accounts: freezed == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<Account>?,
    ));
  }
}

/// @nodoc

class _$IdsStateImpl extends _IdsState {
  const _$IdsStateImpl(
      {required this.userId,
      required this.activeBudget,
      required final List<Account>? accounts})
      : _accounts = accounts,
        super._();

  @override
  final String? userId;
  @override
  final Budget? activeBudget;
  final List<Account>? _accounts;
  @override
  List<Account>? get accounts {
    final value = _accounts;
    if (value == null) return null;
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'IdsState(userId: $userId, activeBudget: $activeBudget, accounts: $accounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdsStateImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other.activeBudget, activeBudget) &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      const DeepCollectionEquality().hash(activeBudget),
      const DeepCollectionEquality().hash(_accounts));

  /// Create a copy of IdsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdsStateImplCopyWith<_$IdsStateImpl> get copyWith =>
      __$$IdsStateImplCopyWithImpl<_$IdsStateImpl>(this, _$identity);
}

abstract class _IdsState extends IdsState {
  const factory _IdsState(
      {required final String? userId,
      required final Budget? activeBudget,
      required final List<Account>? accounts}) = _$IdsStateImpl;
  const _IdsState._() : super._();

  @override
  String? get userId;
  @override
  Budget? get activeBudget;
  @override
  List<Account>? get accounts;

  /// Create a copy of IdsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdsStateImplCopyWith<_$IdsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
