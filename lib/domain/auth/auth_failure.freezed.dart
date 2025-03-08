// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() serverError,
    required TResult Function() noConnection,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidCraditional,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? serverError,
    TResult? Function()? noConnection,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidCraditional,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? serverError,
    TResult Function()? noConnection,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidCraditional,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedAuthFailure value) unexpected,
    required TResult Function(_ServerErrorAuthFailure value) serverError,
    required TResult Function(_NoConnectionAuthFailure value) noConnection,
    required TResult Function(_EmailAlreadyInUseAuthFailure value)
        emailAlreadyInUse,
    required TResult Function(_InvalidCraditionalAuthFailure value)
        invalidCraditional,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnexpectedAuthFailure value)? unexpected,
    TResult? Function(_ServerErrorAuthFailure value)? serverError,
    TResult? Function(_NoConnectionAuthFailure value)? noConnection,
    TResult? Function(_EmailAlreadyInUseAuthFailure value)? emailAlreadyInUse,
    TResult? Function(_InvalidCraditionalAuthFailure value)? invalidCraditional,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedAuthFailure value)? unexpected,
    TResult Function(_ServerErrorAuthFailure value)? serverError,
    TResult Function(_NoConnectionAuthFailure value)? noConnection,
    TResult Function(_EmailAlreadyInUseAuthFailure value)? emailAlreadyInUse,
    TResult Function(_InvalidCraditionalAuthFailure value)? invalidCraditional,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res, AuthFailure>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res, $Val extends AuthFailure>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UnexpectedAuthFailureImplCopyWith<$Res> {
  factory _$$UnexpectedAuthFailureImplCopyWith(
          _$UnexpectedAuthFailureImpl value,
          $Res Function(_$UnexpectedAuthFailureImpl) then) =
      __$$UnexpectedAuthFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedAuthFailureImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$UnexpectedAuthFailureImpl>
    implements _$$UnexpectedAuthFailureImplCopyWith<$Res> {
  __$$UnexpectedAuthFailureImplCopyWithImpl(_$UnexpectedAuthFailureImpl _value,
      $Res Function(_$UnexpectedAuthFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnexpectedAuthFailureImpl implements _UnexpectedAuthFailure {
  const _$UnexpectedAuthFailureImpl();

  @override
  String toString() {
    return 'AuthFailure.unexpected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedAuthFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() serverError,
    required TResult Function() noConnection,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidCraditional,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? serverError,
    TResult? Function()? noConnection,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidCraditional,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? serverError,
    TResult Function()? noConnection,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidCraditional,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedAuthFailure value) unexpected,
    required TResult Function(_ServerErrorAuthFailure value) serverError,
    required TResult Function(_NoConnectionAuthFailure value) noConnection,
    required TResult Function(_EmailAlreadyInUseAuthFailure value)
        emailAlreadyInUse,
    required TResult Function(_InvalidCraditionalAuthFailure value)
        invalidCraditional,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnexpectedAuthFailure value)? unexpected,
    TResult? Function(_ServerErrorAuthFailure value)? serverError,
    TResult? Function(_NoConnectionAuthFailure value)? noConnection,
    TResult? Function(_EmailAlreadyInUseAuthFailure value)? emailAlreadyInUse,
    TResult? Function(_InvalidCraditionalAuthFailure value)? invalidCraditional,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedAuthFailure value)? unexpected,
    TResult Function(_ServerErrorAuthFailure value)? serverError,
    TResult Function(_NoConnectionAuthFailure value)? noConnection,
    TResult Function(_EmailAlreadyInUseAuthFailure value)? emailAlreadyInUse,
    TResult Function(_InvalidCraditionalAuthFailure value)? invalidCraditional,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedAuthFailure implements AuthFailure {
  const factory _UnexpectedAuthFailure() = _$UnexpectedAuthFailureImpl;
}

/// @nodoc
abstract class _$$ServerErrorAuthFailureImplCopyWith<$Res> {
  factory _$$ServerErrorAuthFailureImplCopyWith(
          _$ServerErrorAuthFailureImpl value,
          $Res Function(_$ServerErrorAuthFailureImpl) then) =
      __$$ServerErrorAuthFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorAuthFailureImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$ServerErrorAuthFailureImpl>
    implements _$$ServerErrorAuthFailureImplCopyWith<$Res> {
  __$$ServerErrorAuthFailureImplCopyWithImpl(
      _$ServerErrorAuthFailureImpl _value,
      $Res Function(_$ServerErrorAuthFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ServerErrorAuthFailureImpl implements _ServerErrorAuthFailure {
  const _$ServerErrorAuthFailureImpl();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerErrorAuthFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() serverError,
    required TResult Function() noConnection,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidCraditional,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? serverError,
    TResult? Function()? noConnection,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidCraditional,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? serverError,
    TResult Function()? noConnection,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidCraditional,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedAuthFailure value) unexpected,
    required TResult Function(_ServerErrorAuthFailure value) serverError,
    required TResult Function(_NoConnectionAuthFailure value) noConnection,
    required TResult Function(_EmailAlreadyInUseAuthFailure value)
        emailAlreadyInUse,
    required TResult Function(_InvalidCraditionalAuthFailure value)
        invalidCraditional,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnexpectedAuthFailure value)? unexpected,
    TResult? Function(_ServerErrorAuthFailure value)? serverError,
    TResult? Function(_NoConnectionAuthFailure value)? noConnection,
    TResult? Function(_EmailAlreadyInUseAuthFailure value)? emailAlreadyInUse,
    TResult? Function(_InvalidCraditionalAuthFailure value)? invalidCraditional,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedAuthFailure value)? unexpected,
    TResult Function(_ServerErrorAuthFailure value)? serverError,
    TResult Function(_NoConnectionAuthFailure value)? noConnection,
    TResult Function(_EmailAlreadyInUseAuthFailure value)? emailAlreadyInUse,
    TResult Function(_InvalidCraditionalAuthFailure value)? invalidCraditional,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerErrorAuthFailure implements AuthFailure {
  const factory _ServerErrorAuthFailure() = _$ServerErrorAuthFailureImpl;
}

/// @nodoc
abstract class _$$NoConnectionAuthFailureImplCopyWith<$Res> {
  factory _$$NoConnectionAuthFailureImplCopyWith(
          _$NoConnectionAuthFailureImpl value,
          $Res Function(_$NoConnectionAuthFailureImpl) then) =
      __$$NoConnectionAuthFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoConnectionAuthFailureImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$NoConnectionAuthFailureImpl>
    implements _$$NoConnectionAuthFailureImplCopyWith<$Res> {
  __$$NoConnectionAuthFailureImplCopyWithImpl(
      _$NoConnectionAuthFailureImpl _value,
      $Res Function(_$NoConnectionAuthFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoConnectionAuthFailureImpl implements _NoConnectionAuthFailure {
  const _$NoConnectionAuthFailureImpl();

  @override
  String toString() {
    return 'AuthFailure.noConnection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoConnectionAuthFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() serverError,
    required TResult Function() noConnection,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidCraditional,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? serverError,
    TResult? Function()? noConnection,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidCraditional,
  }) {
    return noConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? serverError,
    TResult Function()? noConnection,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidCraditional,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedAuthFailure value) unexpected,
    required TResult Function(_ServerErrorAuthFailure value) serverError,
    required TResult Function(_NoConnectionAuthFailure value) noConnection,
    required TResult Function(_EmailAlreadyInUseAuthFailure value)
        emailAlreadyInUse,
    required TResult Function(_InvalidCraditionalAuthFailure value)
        invalidCraditional,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnexpectedAuthFailure value)? unexpected,
    TResult? Function(_ServerErrorAuthFailure value)? serverError,
    TResult? Function(_NoConnectionAuthFailure value)? noConnection,
    TResult? Function(_EmailAlreadyInUseAuthFailure value)? emailAlreadyInUse,
    TResult? Function(_InvalidCraditionalAuthFailure value)? invalidCraditional,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedAuthFailure value)? unexpected,
    TResult Function(_ServerErrorAuthFailure value)? serverError,
    TResult Function(_NoConnectionAuthFailure value)? noConnection,
    TResult Function(_EmailAlreadyInUseAuthFailure value)? emailAlreadyInUse,
    TResult Function(_InvalidCraditionalAuthFailure value)? invalidCraditional,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnectionAuthFailure implements AuthFailure {
  const factory _NoConnectionAuthFailure() = _$NoConnectionAuthFailureImpl;
}

/// @nodoc
abstract class _$$EmailAlreadyInUseAuthFailureImplCopyWith<$Res> {
  factory _$$EmailAlreadyInUseAuthFailureImplCopyWith(
          _$EmailAlreadyInUseAuthFailureImpl value,
          $Res Function(_$EmailAlreadyInUseAuthFailureImpl) then) =
      __$$EmailAlreadyInUseAuthFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailAlreadyInUseAuthFailureImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$EmailAlreadyInUseAuthFailureImpl>
    implements _$$EmailAlreadyInUseAuthFailureImplCopyWith<$Res> {
  __$$EmailAlreadyInUseAuthFailureImplCopyWithImpl(
      _$EmailAlreadyInUseAuthFailureImpl _value,
      $Res Function(_$EmailAlreadyInUseAuthFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmailAlreadyInUseAuthFailureImpl
    implements _EmailAlreadyInUseAuthFailure {
  const _$EmailAlreadyInUseAuthFailureImpl();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailAlreadyInUseAuthFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() serverError,
    required TResult Function() noConnection,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidCraditional,
  }) {
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? serverError,
    TResult? Function()? noConnection,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidCraditional,
  }) {
    return emailAlreadyInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? serverError,
    TResult Function()? noConnection,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidCraditional,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedAuthFailure value) unexpected,
    required TResult Function(_ServerErrorAuthFailure value) serverError,
    required TResult Function(_NoConnectionAuthFailure value) noConnection,
    required TResult Function(_EmailAlreadyInUseAuthFailure value)
        emailAlreadyInUse,
    required TResult Function(_InvalidCraditionalAuthFailure value)
        invalidCraditional,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnexpectedAuthFailure value)? unexpected,
    TResult? Function(_ServerErrorAuthFailure value)? serverError,
    TResult? Function(_NoConnectionAuthFailure value)? noConnection,
    TResult? Function(_EmailAlreadyInUseAuthFailure value)? emailAlreadyInUse,
    TResult? Function(_InvalidCraditionalAuthFailure value)? invalidCraditional,
  }) {
    return emailAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedAuthFailure value)? unexpected,
    TResult Function(_ServerErrorAuthFailure value)? serverError,
    TResult Function(_NoConnectionAuthFailure value)? noConnection,
    TResult Function(_EmailAlreadyInUseAuthFailure value)? emailAlreadyInUse,
    TResult Function(_InvalidCraditionalAuthFailure value)? invalidCraditional,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class _EmailAlreadyInUseAuthFailure implements AuthFailure {
  const factory _EmailAlreadyInUseAuthFailure() =
      _$EmailAlreadyInUseAuthFailureImpl;
}

/// @nodoc
abstract class _$$InvalidCraditionalAuthFailureImplCopyWith<$Res> {
  factory _$$InvalidCraditionalAuthFailureImplCopyWith(
          _$InvalidCraditionalAuthFailureImpl value,
          $Res Function(_$InvalidCraditionalAuthFailureImpl) then) =
      __$$InvalidCraditionalAuthFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidCraditionalAuthFailureImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$InvalidCraditionalAuthFailureImpl>
    implements _$$InvalidCraditionalAuthFailureImplCopyWith<$Res> {
  __$$InvalidCraditionalAuthFailureImplCopyWithImpl(
      _$InvalidCraditionalAuthFailureImpl _value,
      $Res Function(_$InvalidCraditionalAuthFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InvalidCraditionalAuthFailureImpl
    implements _InvalidCraditionalAuthFailure {
  const _$InvalidCraditionalAuthFailureImpl();

  @override
  String toString() {
    return 'AuthFailure.invalidCraditional()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidCraditionalAuthFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() serverError,
    required TResult Function() noConnection,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidCraditional,
  }) {
    return invalidCraditional();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? serverError,
    TResult? Function()? noConnection,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidCraditional,
  }) {
    return invalidCraditional?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? serverError,
    TResult Function()? noConnection,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidCraditional,
    required TResult orElse(),
  }) {
    if (invalidCraditional != null) {
      return invalidCraditional();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedAuthFailure value) unexpected,
    required TResult Function(_ServerErrorAuthFailure value) serverError,
    required TResult Function(_NoConnectionAuthFailure value) noConnection,
    required TResult Function(_EmailAlreadyInUseAuthFailure value)
        emailAlreadyInUse,
    required TResult Function(_InvalidCraditionalAuthFailure value)
        invalidCraditional,
  }) {
    return invalidCraditional(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnexpectedAuthFailure value)? unexpected,
    TResult? Function(_ServerErrorAuthFailure value)? serverError,
    TResult? Function(_NoConnectionAuthFailure value)? noConnection,
    TResult? Function(_EmailAlreadyInUseAuthFailure value)? emailAlreadyInUse,
    TResult? Function(_InvalidCraditionalAuthFailure value)? invalidCraditional,
  }) {
    return invalidCraditional?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedAuthFailure value)? unexpected,
    TResult Function(_ServerErrorAuthFailure value)? serverError,
    TResult Function(_NoConnectionAuthFailure value)? noConnection,
    TResult Function(_EmailAlreadyInUseAuthFailure value)? emailAlreadyInUse,
    TResult Function(_InvalidCraditionalAuthFailure value)? invalidCraditional,
    required TResult orElse(),
  }) {
    if (invalidCraditional != null) {
      return invalidCraditional(this);
    }
    return orElse();
  }
}

abstract class _InvalidCraditionalAuthFailure implements AuthFailure {
  const factory _InvalidCraditionalAuthFailure() =
      _$InvalidCraditionalAuthFailureImpl;
}
