import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failure.freezed.dart';

@freezed
abstract class UserFailure with _$UserFailure {
  const factory UserFailure.unexpected() = _UnexpectedUserFailure;
  const factory UserFailure.notExist() = _NotExistUserFailure;
}
