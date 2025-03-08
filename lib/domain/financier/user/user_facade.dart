import 'package:dartz/dartz.dart';
import '../../core/value_objects.dart';

import 'user.dart';
import 'user_failure.dart';

abstract class IuserFacade {
  Future<Either<UserFailure, Unit>> create(User user);
  Future<Either<UserFailure, Unit>> update(User user);
  Future<Option<User>> getById(UniqueId id);
}
