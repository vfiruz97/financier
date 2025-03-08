// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionCategoryDto {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  DateTime? get deleteAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Create a copy of TransactionCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionCategoryDtoCopyWith<TransactionCategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCategoryDtoCopyWith<$Res> {
  factory $TransactionCategoryDtoCopyWith(TransactionCategoryDto value,
          $Res Function(TransactionCategoryDto) then) =
      _$TransactionCategoryDtoCopyWithImpl<$Res, TransactionCategoryDto>;
  @useResult
  $Res call(
      {String? id,
      String name,
      int type,
      int order,
      DateTime? deleteAt,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$TransactionCategoryDtoCopyWithImpl<$Res,
        $Val extends TransactionCategoryDto>
    implements $TransactionCategoryDtoCopyWith<$Res> {
  _$TransactionCategoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? type = null,
    Object? order = null,
    Object? deleteAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      deleteAt: freezed == deleteAt
          ? _value.deleteAt
          : deleteAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionCategoryDtoImplCopyWith<$Res>
    implements $TransactionCategoryDtoCopyWith<$Res> {
  factory _$$TransactionCategoryDtoImplCopyWith(
          _$TransactionCategoryDtoImpl value,
          $Res Function(_$TransactionCategoryDtoImpl) then) =
      __$$TransactionCategoryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      int type,
      int order,
      DateTime? deleteAt,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$TransactionCategoryDtoImplCopyWithImpl<$Res>
    extends _$TransactionCategoryDtoCopyWithImpl<$Res,
        _$TransactionCategoryDtoImpl>
    implements _$$TransactionCategoryDtoImplCopyWith<$Res> {
  __$$TransactionCategoryDtoImplCopyWithImpl(
      _$TransactionCategoryDtoImpl _value,
      $Res Function(_$TransactionCategoryDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? type = null,
    Object? order = null,
    Object? deleteAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$TransactionCategoryDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      deleteAt: freezed == deleteAt
          ? _value.deleteAt
          : deleteAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$TransactionCategoryDtoImpl extends _TransactionCategoryDto {
  _$TransactionCategoryDtoImpl(
      {required this.id,
      required this.name,
      required this.type,
      required this.order,
      required this.deleteAt,
      required this.createdAt,
      required this.updatedAt})
      : super._();

  @override
  final String? id;
  @override
  final String name;
  @override
  final int type;
  @override
  final int order;
  @override
  final DateTime? deleteAt;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'TransactionCategoryDto(id: $id, name: $name, type: $type, order: $order, deleteAt: $deleteAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionCategoryDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.deleteAt, deleteAt) ||
                other.deleteAt == deleteAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, type, order, deleteAt, createdAt, updatedAt);

  /// Create a copy of TransactionCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionCategoryDtoImplCopyWith<_$TransactionCategoryDtoImpl>
      get copyWith => __$$TransactionCategoryDtoImplCopyWithImpl<
          _$TransactionCategoryDtoImpl>(this, _$identity);
}

abstract class _TransactionCategoryDto extends TransactionCategoryDto {
  factory _TransactionCategoryDto(
      {required final String? id,
      required final String name,
      required final int type,
      required final int order,
      required final DateTime? deleteAt,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$TransactionCategoryDtoImpl;
  _TransactionCategoryDto._() : super._();

  @override
  String? get id;
  @override
  String get name;
  @override
  int get type;
  @override
  int get order;
  @override
  DateTime? get deleteAt;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of TransactionCategoryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionCategoryDtoImplCopyWith<_$TransactionCategoryDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
