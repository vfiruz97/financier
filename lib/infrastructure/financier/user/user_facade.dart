import '../../../domain/financier/user/user.dart';
import '../../../domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/financier/user/user_facade.dart';
import '../../../domain/financier/user/user_failure.dart';
import '../../database/daos/user_dao.dart';
import 'user_dto.dart';

class UserFacade implements IuserFacade {
  final UsersDao usersDao;

  UserFacade({required this.usersDao});

  @override
  Future<Either<UserFailure, Unit>> create(User user) async {
    try {
      await usersDao.addUser(UserDto.fromDomain(user).toDrift());
      return right(unit);
    } catch (e) {
      return left(const UserFailure.unexpected());
    }
  }

  @override
  Future<Option<User>> getById(UniqueId id) async {
    final user = await usersDao.getById(id.getOrCrash());
    if (user != null) {
      return some(UserDto.fromDrift(user).toDomain());
    } else {
      return none();
    }
  }

  @override
  Future<Either<UserFailure, Unit>> update(User user) async {
    try {
      if (await usersDao.updateUser(UserDto.fromDomain(user).toDrift())) {
        return right(unit);
      } else {
        return left(const UserFailure.unexpected());
      }
    } catch (e) {
      return left(const UserFailure.unexpected());
    }
  }
}
