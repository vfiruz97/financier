import 'package:drift/drift.dart' hide JsonKey;
import '../../../domain/core/value_objects.dart';
import '../../../domain/financier/user/user.dart';
import '../../database/database.dart' as db;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'user_dto.freezed.dart';

@freezed
abstract class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    required String? id,
    required String name,
    required String email,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) {
    return UserDto(
      id: user.id.getOrCrash(),
      name: user.name.getOrCrash(),
      email: user.email.getOrCrash(),
      createdAt: user.createdAt,
      updatedAt: user.updatedAt,
    );
  }

  User toDomain() {
    return User(
      id: id != null ? UniqueId.fromUniqueString(id!) : UniqueId(),
      name: Name(name),
      email: Email(email),
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  factory UserDto.fromDrift(db.User user) {
    return UserDto(
      id: user.id,
      name: user.name,
      email: user.email,
      createdAt: user.createdAt,
      updatedAt: user.updatedAt,
    );
  }

  db.UsersCompanion toDrift() {
    return db.UsersCompanion(
      id: Value<String>(id ?? const Uuid().v4()),
      name: Value<String>(name),
      email: Value<String>(email),
      createdAt: Value<DateTime>(createdAt),
      updatedAt: Value<DateTime>(updatedAt),
    );
  }
}
