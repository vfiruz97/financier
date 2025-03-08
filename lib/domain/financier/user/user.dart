import '../../core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required UniqueId id,
    required Name name,
    required Email email,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _User;

  factory User.empty() => User(
        id: UniqueId(),
        name: Name('Financier'),
        email: Email(''),
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
}
