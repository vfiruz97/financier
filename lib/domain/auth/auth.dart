import '../financier/user/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';

@freezed
abstract class Auth with _$Auth {
  const factory Auth({
    required String token,
    required User user,
  }) = _Auth;
}
