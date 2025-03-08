// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_category_create_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionCategoryCreateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) changeName,
    required TResult Function(TransactionCategoryType transactionCategoryType)
        changeType,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? changeName,
    TResult? Function(TransactionCategoryType transactionCategoryType)?
        changeType,
    TResult? Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? changeName,
    TResult Function(TransactionCategoryType transactionCategoryType)?
        changeType,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeType value) changeType,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ChangeType value)? changeType,
    TResult? Function(_Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeType value)? changeType,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCategoryCreateEventCopyWith<$Res> {
  factory $TransactionCategoryCreateEventCopyWith(
          TransactionCategoryCreateEvent value,
          $Res Function(TransactionCategoryCreateEvent) then) =
      _$TransactionCategoryCreateEventCopyWithImpl<$Res,
          TransactionCategoryCreateEvent>;
}

/// @nodoc
class _$TransactionCategoryCreateEventCopyWithImpl<$Res,
        $Val extends TransactionCategoryCreateEvent>
    implements $TransactionCategoryCreateEventCopyWith<$Res> {
  _$TransactionCategoryCreateEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionCategoryCreateEvent
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
    extends _$TransactionCategoryCreateEventCopyWithImpl<$Res, _$ChangeNameImpl>
    implements _$$ChangeNameImplCopyWith<$Res> {
  __$$ChangeNameImplCopyWithImpl(
      _$ChangeNameImpl _value, $Res Function(_$ChangeNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionCategoryCreateEvent
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
    return 'TransactionCategoryCreateEvent.changeName(nameStr: $nameStr)';
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

  /// Create a copy of TransactionCategoryCreateEvent
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
    required TResult Function(TransactionCategoryType transactionCategoryType)
        changeType,
    required TResult Function() submit,
  }) {
    return changeName(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? changeName,
    TResult? Function(TransactionCategoryType transactionCategoryType)?
        changeType,
    TResult? Function()? submit,
  }) {
    return changeName?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? changeName,
    TResult Function(TransactionCategoryType transactionCategoryType)?
        changeType,
    TResult Function()? submit,
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
    required TResult Function(_ChangeType value) changeType,
    required TResult Function(_Submit value) submit,
  }) {
    return changeName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ChangeType value)? changeType,
    TResult? Function(_Submit value)? submit,
  }) {
    return changeName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeType value)? changeType,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(this);
    }
    return orElse();
  }
}

abstract class _ChangeName implements TransactionCategoryCreateEvent {
  const factory _ChangeName(final String nameStr) = _$ChangeNameImpl;

  String get nameStr;

  /// Create a copy of TransactionCategoryCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeNameImplCopyWith<_$ChangeNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeTypeImplCopyWith<$Res> {
  factory _$$ChangeTypeImplCopyWith(
          _$ChangeTypeImpl value, $Res Function(_$ChangeTypeImpl) then) =
      __$$ChangeTypeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionCategoryType transactionCategoryType});
}

/// @nodoc
class __$$ChangeTypeImplCopyWithImpl<$Res>
    extends _$TransactionCategoryCreateEventCopyWithImpl<$Res, _$ChangeTypeImpl>
    implements _$$ChangeTypeImplCopyWith<$Res> {
  __$$ChangeTypeImplCopyWithImpl(
      _$ChangeTypeImpl _value, $Res Function(_$ChangeTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionCategoryCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionCategoryType = null,
  }) {
    return _then(_$ChangeTypeImpl(
      null == transactionCategoryType
          ? _value.transactionCategoryType
          : transactionCategoryType // ignore: cast_nullable_to_non_nullable
              as TransactionCategoryType,
    ));
  }
}

/// @nodoc

class _$ChangeTypeImpl implements _ChangeType {
  const _$ChangeTypeImpl(this.transactionCategoryType);

  @override
  final TransactionCategoryType transactionCategoryType;

  @override
  String toString() {
    return 'TransactionCategoryCreateEvent.changeType(transactionCategoryType: $transactionCategoryType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTypeImpl &&
            (identical(
                    other.transactionCategoryType, transactionCategoryType) ||
                other.transactionCategoryType == transactionCategoryType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionCategoryType);

  /// Create a copy of TransactionCategoryCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTypeImplCopyWith<_$ChangeTypeImpl> get copyWith =>
      __$$ChangeTypeImplCopyWithImpl<_$ChangeTypeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) changeName,
    required TResult Function(TransactionCategoryType transactionCategoryType)
        changeType,
    required TResult Function() submit,
  }) {
    return changeType(transactionCategoryType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? changeName,
    TResult? Function(TransactionCategoryType transactionCategoryType)?
        changeType,
    TResult? Function()? submit,
  }) {
    return changeType?.call(transactionCategoryType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? changeName,
    TResult Function(TransactionCategoryType transactionCategoryType)?
        changeType,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (changeType != null) {
      return changeType(transactionCategoryType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeType value) changeType,
    required TResult Function(_Submit value) submit,
  }) {
    return changeType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ChangeType value)? changeType,
    TResult? Function(_Submit value)? submit,
  }) {
    return changeType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeType value)? changeType,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (changeType != null) {
      return changeType(this);
    }
    return orElse();
  }
}

abstract class _ChangeType implements TransactionCategoryCreateEvent {
  const factory _ChangeType(
      final TransactionCategoryType transactionCategoryType) = _$ChangeTypeImpl;

  TransactionCategoryType get transactionCategoryType;

  /// Create a copy of TransactionCategoryCreateEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeTypeImplCopyWith<_$ChangeTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitImplCopyWith<$Res> {
  factory _$$SubmitImplCopyWith(
          _$SubmitImpl value, $Res Function(_$SubmitImpl) then) =
      __$$SubmitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitImplCopyWithImpl<$Res>
    extends _$TransactionCategoryCreateEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
      _$SubmitImpl _value, $Res Function(_$SubmitImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionCategoryCreateEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl();

  @override
  String toString() {
    return 'TransactionCategoryCreateEvent.submit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) changeName,
    required TResult Function(TransactionCategoryType transactionCategoryType)
        changeType,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String nameStr)? changeName,
    TResult? Function(TransactionCategoryType transactionCategoryType)?
        changeType,
    TResult? Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? changeName,
    TResult Function(TransactionCategoryType transactionCategoryType)?
        changeType,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeName value) changeName,
    required TResult Function(_ChangeType value) changeType,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeName value)? changeName,
    TResult? Function(_ChangeType value)? changeType,
    TResult? Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeName value)? changeName,
    TResult Function(_ChangeType value)? changeType,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements TransactionCategoryCreateEvent {
  const factory _Submit() = _$SubmitImpl;
}

/// @nodoc
mixin _$TransactionCategoryCreateState {
  TransactionCategory get transactionCategory =>
      throw _privateConstructorUsedError;
  bool get submitting => throw _privateConstructorUsedError;
  bool get validateForm => throw _privateConstructorUsedError;
  Option<Either<TransactionCategoryFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  /// Create a copy of TransactionCategoryCreateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionCategoryCreateStateCopyWith<TransactionCategoryCreateState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCategoryCreateStateCopyWith<$Res> {
  factory $TransactionCategoryCreateStateCopyWith(
          TransactionCategoryCreateState value,
          $Res Function(TransactionCategoryCreateState) then) =
      _$TransactionCategoryCreateStateCopyWithImpl<$Res,
          TransactionCategoryCreateState>;
  @useResult
  $Res call(
      {TransactionCategory transactionCategory,
      bool submitting,
      bool validateForm,
      Option<Either<TransactionCategoryFailure, Unit>> failureOrSuccessOption});

  $TransactionCategoryCopyWith<$Res> get transactionCategory;
}

/// @nodoc
class _$TransactionCategoryCreateStateCopyWithImpl<$Res,
        $Val extends TransactionCategoryCreateState>
    implements $TransactionCategoryCreateStateCopyWith<$Res> {
  _$TransactionCategoryCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionCategoryCreateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionCategory = null,
    Object? submitting = null,
    Object? validateForm = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      transactionCategory: null == transactionCategory
          ? _value.transactionCategory
          : transactionCategory // ignore: cast_nullable_to_non_nullable
              as TransactionCategory,
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
              as Option<Either<TransactionCategoryFailure, Unit>>,
    ) as $Val);
  }

  /// Create a copy of TransactionCategoryCreateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionCategoryCopyWith<$Res> get transactionCategory {
    return $TransactionCategoryCopyWith<$Res>(_value.transactionCategory,
        (value) {
      return _then(_value.copyWith(transactionCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionCategoryCreateStateImplCopyWith<$Res>
    implements $TransactionCategoryCreateStateCopyWith<$Res> {
  factory _$$TransactionCategoryCreateStateImplCopyWith(
          _$TransactionCategoryCreateStateImpl value,
          $Res Function(_$TransactionCategoryCreateStateImpl) then) =
      __$$TransactionCategoryCreateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TransactionCategory transactionCategory,
      bool submitting,
      bool validateForm,
      Option<Either<TransactionCategoryFailure, Unit>> failureOrSuccessOption});

  @override
  $TransactionCategoryCopyWith<$Res> get transactionCategory;
}

/// @nodoc
class __$$TransactionCategoryCreateStateImplCopyWithImpl<$Res>
    extends _$TransactionCategoryCreateStateCopyWithImpl<$Res,
        _$TransactionCategoryCreateStateImpl>
    implements _$$TransactionCategoryCreateStateImplCopyWith<$Res> {
  __$$TransactionCategoryCreateStateImplCopyWithImpl(
      _$TransactionCategoryCreateStateImpl _value,
      $Res Function(_$TransactionCategoryCreateStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionCategoryCreateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionCategory = null,
    Object? submitting = null,
    Object? validateForm = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$TransactionCategoryCreateStateImpl(
      transactionCategory: null == transactionCategory
          ? _value.transactionCategory
          : transactionCategory // ignore: cast_nullable_to_non_nullable
              as TransactionCategory,
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
              as Option<Either<TransactionCategoryFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$TransactionCategoryCreateStateImpl
    implements _TransactionCategoryCreateState {
  const _$TransactionCategoryCreateStateImpl(
      {required this.transactionCategory,
      required this.submitting,
      required this.validateForm,
      required this.failureOrSuccessOption});

  @override
  final TransactionCategory transactionCategory;
  @override
  final bool submitting;
  @override
  final bool validateForm;
  @override
  final Option<Either<TransactionCategoryFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'TransactionCategoryCreateState(transactionCategory: $transactionCategory, submitting: $submitting, validateForm: $validateForm, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionCategoryCreateStateImpl &&
            (identical(other.transactionCategory, transactionCategory) ||
                other.transactionCategory == transactionCategory) &&
            (identical(other.submitting, submitting) ||
                other.submitting == submitting) &&
            (identical(other.validateForm, validateForm) ||
                other.validateForm == validateForm) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionCategory, submitting,
      validateForm, failureOrSuccessOption);

  /// Create a copy of TransactionCategoryCreateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionCategoryCreateStateImplCopyWith<
          _$TransactionCategoryCreateStateImpl>
      get copyWith => __$$TransactionCategoryCreateStateImplCopyWithImpl<
          _$TransactionCategoryCreateStateImpl>(this, _$identity);
}

abstract class _TransactionCategoryCreateState
    implements TransactionCategoryCreateState {
  const factory _TransactionCategoryCreateState(
      {required final TransactionCategory transactionCategory,
      required final bool submitting,
      required final bool validateForm,
      required final Option<Either<TransactionCategoryFailure, Unit>>
          failureOrSuccessOption}) = _$TransactionCategoryCreateStateImpl;

  @override
  TransactionCategory get transactionCategory;
  @override
  bool get submitting;
  @override
  bool get validateForm;
  @override
  Option<Either<TransactionCategoryFailure, Unit>> get failureOrSuccessOption;

  /// Create a copy of TransactionCategoryCreateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionCategoryCreateStateImplCopyWith<
          _$TransactionCategoryCreateStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
