// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) changeEmail,
    required TResult Function(String passwordStr) changePassword,
    required TResult Function() registerByLoginAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? changeEmail,
    TResult? Function(String passwordStr)? changePassword,
    TResult? Function()? registerByLoginAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? changeEmail,
    TResult Function(String passwordStr)? changePassword,
    TResult Function()? registerByLoginAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_RegisterByLoginAndPassword value)
        registerByLoginAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_RegisterByLoginAndPassword value)?
        registerByLoginAndPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_RegisterByLoginAndPassword value)?
        registerByLoginAndPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChangeEmailImplCopyWith<$Res> {
  factory _$$ChangeEmailImplCopyWith(
          _$ChangeEmailImpl value, $Res Function(_$ChangeEmailImpl) then) =
      __$$ChangeEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailStr});
}

/// @nodoc
class __$$ChangeEmailImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$ChangeEmailImpl>
    implements _$$ChangeEmailImplCopyWith<$Res> {
  __$$ChangeEmailImplCopyWithImpl(
      _$ChangeEmailImpl _value, $Res Function(_$ChangeEmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailStr = null,
  }) {
    return _then(_$ChangeEmailImpl(
      null == emailStr
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeEmailImpl implements _ChangeEmail {
  const _$ChangeEmailImpl(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'RegisterEvent.changeEmail(emailStr: $emailStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeEmailImpl &&
            (identical(other.emailStr, emailStr) ||
                other.emailStr == emailStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailStr);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeEmailImplCopyWith<_$ChangeEmailImpl> get copyWith =>
      __$$ChangeEmailImplCopyWithImpl<_$ChangeEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) changeEmail,
    required TResult Function(String passwordStr) changePassword,
    required TResult Function() registerByLoginAndPassword,
  }) {
    return changeEmail(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? changeEmail,
    TResult? Function(String passwordStr)? changePassword,
    TResult? Function()? registerByLoginAndPassword,
  }) {
    return changeEmail?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? changeEmail,
    TResult Function(String passwordStr)? changePassword,
    TResult Function()? registerByLoginAndPassword,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_RegisterByLoginAndPassword value)
        registerByLoginAndPassword,
  }) {
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_RegisterByLoginAndPassword value)?
        registerByLoginAndPassword,
  }) {
    return changeEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_RegisterByLoginAndPassword value)?
        registerByLoginAndPassword,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class _ChangeEmail implements RegisterEvent {
  const factory _ChangeEmail(final String emailStr) = _$ChangeEmailImpl;

  String get emailStr;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeEmailImplCopyWith<_$ChangeEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePasswordImplCopyWith<$Res> {
  factory _$$ChangePasswordImplCopyWith(_$ChangePasswordImpl value,
          $Res Function(_$ChangePasswordImpl) then) =
      __$$ChangePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String passwordStr});
}

/// @nodoc
class __$$ChangePasswordImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$ChangePasswordImpl>
    implements _$$ChangePasswordImplCopyWith<$Res> {
  __$$ChangePasswordImplCopyWithImpl(
      _$ChangePasswordImpl _value, $Res Function(_$ChangePasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordStr = null,
  }) {
    return _then(_$ChangePasswordImpl(
      null == passwordStr
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangePasswordImpl implements _ChangePassword {
  const _$ChangePasswordImpl(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'RegisterEvent.changePassword(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordImpl &&
            (identical(other.passwordStr, passwordStr) ||
                other.passwordStr == passwordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordStr);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordImplCopyWith<_$ChangePasswordImpl> get copyWith =>
      __$$ChangePasswordImplCopyWithImpl<_$ChangePasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) changeEmail,
    required TResult Function(String passwordStr) changePassword,
    required TResult Function() registerByLoginAndPassword,
  }) {
    return changePassword(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? changeEmail,
    TResult? Function(String passwordStr)? changePassword,
    TResult? Function()? registerByLoginAndPassword,
  }) {
    return changePassword?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? changeEmail,
    TResult Function(String passwordStr)? changePassword,
    TResult Function()? registerByLoginAndPassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_RegisterByLoginAndPassword value)
        registerByLoginAndPassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_RegisterByLoginAndPassword value)?
        registerByLoginAndPassword,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_RegisterByLoginAndPassword value)?
        registerByLoginAndPassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword implements RegisterEvent {
  const factory _ChangePassword(final String passwordStr) =
      _$ChangePasswordImpl;

  String get passwordStr;

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePasswordImplCopyWith<_$ChangePasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterByLoginAndPasswordImplCopyWith<$Res> {
  factory _$$RegisterByLoginAndPasswordImplCopyWith(
          _$RegisterByLoginAndPasswordImpl value,
          $Res Function(_$RegisterByLoginAndPasswordImpl) then) =
      __$$RegisterByLoginAndPasswordImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterByLoginAndPasswordImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$RegisterByLoginAndPasswordImpl>
    implements _$$RegisterByLoginAndPasswordImplCopyWith<$Res> {
  __$$RegisterByLoginAndPasswordImplCopyWithImpl(
      _$RegisterByLoginAndPasswordImpl _value,
      $Res Function(_$RegisterByLoginAndPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegisterByLoginAndPasswordImpl implements _RegisterByLoginAndPassword {
  const _$RegisterByLoginAndPasswordImpl();

  @override
  String toString() {
    return 'RegisterEvent.registerByLoginAndPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterByLoginAndPasswordImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) changeEmail,
    required TResult Function(String passwordStr) changePassword,
    required TResult Function() registerByLoginAndPassword,
  }) {
    return registerByLoginAndPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? changeEmail,
    TResult? Function(String passwordStr)? changePassword,
    TResult? Function()? registerByLoginAndPassword,
  }) {
    return registerByLoginAndPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? changeEmail,
    TResult Function(String passwordStr)? changePassword,
    TResult Function()? registerByLoginAndPassword,
    required TResult orElse(),
  }) {
    if (registerByLoginAndPassword != null) {
      return registerByLoginAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePassword value) changePassword,
    required TResult Function(_RegisterByLoginAndPassword value)
        registerByLoginAndPassword,
  }) {
    return registerByLoginAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePassword value)? changePassword,
    TResult? Function(_RegisterByLoginAndPassword value)?
        registerByLoginAndPassword,
  }) {
    return registerByLoginAndPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePassword value)? changePassword,
    TResult Function(_RegisterByLoginAndPassword value)?
        registerByLoginAndPassword,
    required TResult orElse(),
  }) {
    if (registerByLoginAndPassword != null) {
      return registerByLoginAndPassword(this);
    }
    return orElse();
  }
}

abstract class _RegisterByLoginAndPassword implements RegisterEvent {
  const factory _RegisterByLoginAndPassword() =
      _$RegisterByLoginAndPasswordImpl;
}

/// @nodoc
mixin _$RegisterState {
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get submitting => throw _privateConstructorUsedError;
  bool get validateForm => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Auth>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {Email email,
      Password password,
      bool submitting,
      bool validateForm,
      Option<Either<AuthFailure, Auth>> failureOrSuccessOption});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? submitting = null,
    Object? validateForm = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      submitting: null == submitting
          ? _value.submitting
          : submitting // ignore: cast_nullable_to_non_nullable
              as bool,
      validateForm: null == validateForm
          ? _value.validateForm
          : validateForm // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Auth>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Email email,
      Password password,
      bool submitting,
      bool validateForm,
      Option<Either<AuthFailure, Auth>> failureOrSuccessOption});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? submitting = null,
    Object? validateForm = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$InitialImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      submitting: null == submitting
          ? _value.submitting
          : submitting // ignore: cast_nullable_to_non_nullable
              as bool,
      validateForm: null == validateForm
          ? _value.validateForm
          : validateForm // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Auth>>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.email,
      required this.password,
      required this.submitting,
      required this.validateForm,
      required this.failureOrSuccessOption});

  @override
  final Email email;
  @override
  final Password password;
  @override
  final bool submitting;
  @override
  final bool validateForm;
  @override
  final Option<Either<AuthFailure, Auth>> failureOrSuccessOption;

  @override
  String toString() {
    return 'RegisterState(email: $email, password: $password, submitting: $submitting, validateForm: $validateForm, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.submitting, submitting) ||
                other.submitting == submitting) &&
            (identical(other.validateForm, validateForm) ||
                other.validateForm == validateForm) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, submitting,
      validateForm, failureOrSuccessOption);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements RegisterState {
  const factory _Initial(
      {required final Email email,
      required final Password password,
      required final bool submitting,
      required final bool validateForm,
      required final Option<Either<AuthFailure, Auth>>
          failureOrSuccessOption}) = _$InitialImpl;

  @override
  Email get email;
  @override
  Password get password;
  @override
  bool get submitting;
  @override
  bool get validateForm;
  @override
  Option<Either<AuthFailure, Auth>> get failureOrSuccessOption;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
