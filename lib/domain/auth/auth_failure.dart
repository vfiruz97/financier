import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.unexpected() = _UnexpectedAuthFailure;
  const factory AuthFailure.serverError() = _ServerErrorAuthFailure;
  const factory AuthFailure.noConnection() = _NoConnectionAuthFailure;
  const factory AuthFailure.emailAlreadyInUse() = _EmailAlreadyInUseAuthFailure;
  const factory AuthFailure.invalidCraditional() = _InvalidCraditionalAuthFailure;
}
