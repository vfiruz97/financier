// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buttom_navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ButtomNavigationEvent {
  NavigationPages get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NavigationPages page) push,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NavigationPages page)? push,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NavigationPages page)? push,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Push value) push,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Push value)? push,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Push value)? push,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ButtomNavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ButtomNavigationEventCopyWith<ButtomNavigationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ButtomNavigationEventCopyWith<$Res> {
  factory $ButtomNavigationEventCopyWith(ButtomNavigationEvent value,
          $Res Function(ButtomNavigationEvent) then) =
      _$ButtomNavigationEventCopyWithImpl<$Res, ButtomNavigationEvent>;
  @useResult
  $Res call({NavigationPages page});
}

/// @nodoc
class _$ButtomNavigationEventCopyWithImpl<$Res,
        $Val extends ButtomNavigationEvent>
    implements $ButtomNavigationEventCopyWith<$Res> {
  _$ButtomNavigationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ButtomNavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as NavigationPages,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PushImplCopyWith<$Res>
    implements $ButtomNavigationEventCopyWith<$Res> {
  factory _$$PushImplCopyWith(
          _$PushImpl value, $Res Function(_$PushImpl) then) =
      __$$PushImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NavigationPages page});
}

/// @nodoc
class __$$PushImplCopyWithImpl<$Res>
    extends _$ButtomNavigationEventCopyWithImpl<$Res, _$PushImpl>
    implements _$$PushImplCopyWith<$Res> {
  __$$PushImplCopyWithImpl(_$PushImpl _value, $Res Function(_$PushImpl) _then)
      : super(_value, _then);

  /// Create a copy of ButtomNavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$PushImpl(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as NavigationPages,
    ));
  }
}

/// @nodoc

class _$PushImpl implements _Push {
  const _$PushImpl(this.page);

  @override
  final NavigationPages page;

  @override
  String toString() {
    return 'ButtomNavigationEvent.push(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  /// Create a copy of ButtomNavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PushImplCopyWith<_$PushImpl> get copyWith =>
      __$$PushImplCopyWithImpl<_$PushImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NavigationPages page) push,
  }) {
    return push(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NavigationPages page)? push,
  }) {
    return push?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NavigationPages page)? push,
    required TResult orElse(),
  }) {
    if (push != null) {
      return push(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Push value) push,
  }) {
    return push(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Push value)? push,
  }) {
    return push?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Push value)? push,
    required TResult orElse(),
  }) {
    if (push != null) {
      return push(this);
    }
    return orElse();
  }
}

abstract class _Push implements ButtomNavigationEvent {
  const factory _Push(final NavigationPages page) = _$PushImpl;

  @override
  NavigationPages get page;

  /// Create a copy of ButtomNavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PushImplCopyWith<_$PushImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ButtomNavigationState {
  NavigationPages get page => throw _privateConstructorUsedError;

  /// Create a copy of ButtomNavigationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ButtomNavigationStateCopyWith<ButtomNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ButtomNavigationStateCopyWith<$Res> {
  factory $ButtomNavigationStateCopyWith(ButtomNavigationState value,
          $Res Function(ButtomNavigationState) then) =
      _$ButtomNavigationStateCopyWithImpl<$Res, ButtomNavigationState>;
  @useResult
  $Res call({NavigationPages page});
}

/// @nodoc
class _$ButtomNavigationStateCopyWithImpl<$Res,
        $Val extends ButtomNavigationState>
    implements $ButtomNavigationStateCopyWith<$Res> {
  _$ButtomNavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ButtomNavigationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as NavigationPages,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ButtomNavigationStateImplCopyWith<$Res>
    implements $ButtomNavigationStateCopyWith<$Res> {
  factory _$$ButtomNavigationStateImplCopyWith(
          _$ButtomNavigationStateImpl value,
          $Res Function(_$ButtomNavigationStateImpl) then) =
      __$$ButtomNavigationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NavigationPages page});
}

/// @nodoc
class __$$ButtomNavigationStateImplCopyWithImpl<$Res>
    extends _$ButtomNavigationStateCopyWithImpl<$Res,
        _$ButtomNavigationStateImpl>
    implements _$$ButtomNavigationStateImplCopyWith<$Res> {
  __$$ButtomNavigationStateImplCopyWithImpl(_$ButtomNavigationStateImpl _value,
      $Res Function(_$ButtomNavigationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ButtomNavigationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$ButtomNavigationStateImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as NavigationPages,
    ));
  }
}

/// @nodoc

class _$ButtomNavigationStateImpl extends _ButtomNavigationState {
  const _$ButtomNavigationStateImpl({required this.page}) : super._();

  @override
  final NavigationPages page;

  @override
  String toString() {
    return 'ButtomNavigationState(page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ButtomNavigationStateImpl &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  /// Create a copy of ButtomNavigationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ButtomNavigationStateImplCopyWith<_$ButtomNavigationStateImpl>
      get copyWith => __$$ButtomNavigationStateImplCopyWithImpl<
          _$ButtomNavigationStateImpl>(this, _$identity);
}

abstract class _ButtomNavigationState extends ButtomNavigationState {
  const factory _ButtomNavigationState({required final NavigationPages page}) =
      _$ButtomNavigationStateImpl;
  const _ButtomNavigationState._() : super._();

  @override
  NavigationPages get page;

  /// Create a copy of ButtomNavigationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ButtomNavigationStateImplCopyWith<_$ButtomNavigationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
