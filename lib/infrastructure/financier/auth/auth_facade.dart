import 'package:crypt/crypt.dart';
import 'package:drift/drift.dart';
import '../../../domain/auth/auth.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/auth/auth_facade.dart';
import '../../../domain/auth/auth_failure.dart';
import '../../database/daos/budget_dao.dart';
import '../../database/daos/user_dao.dart';
import '../../database/database.dart' hide User;
import 'auth_locale.dart';
import '../user/user_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

@Singleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final IAuthLocale authLocale;
  final UsersDao usersDao;
  final BudgetsDao budgetsDao;

  const AuthFacade(this.authLocale, this.usersDao, this.budgetsDao);

  @override
  Future<Either<AuthFailure, Auth>> getSignedUser() async {
    final token = authLocale.getAuthToken();
    if (token != null) {
      final token0 = token.split(' ');
      final user = await usersDao.getByEmail(token0.last);
      if (user != null) {
        return right(Auth(token: token0.first, user: UserDto.fromDrift(user).toDomain()));
      }
    }
    return left(const AuthFailure.unexpected());
  }

  @override
  Future<Either<AuthFailure, Auth>> registerWithEmailAndPassword(String email, String password) async {
    final user = await usersDao.getByEmail(email);
    if (user != null) {
      return left(const AuthFailure.emailAlreadyInUse());
    }

    final passwordHashStr = Crypt.sha256(password, salt: 'abcd12efghij21klmewno!3%p').toString();

    final userId = const Uuid().v4();
    await usersDao.addUser(
      UsersCompanion(
        id: Value(userId),
        name: const Value('Financier'),
        email: Value(email),
        password: Value(passwordHashStr),
      ),
    );

    // add default budget
    await budgetsDao.addBudget(BudgetsCompanion(
        id: Value(const Uuid().v4()),
        name: const Value('My budget'),
        userId: Value(userId),
        active: const Value(true),
        createdAt: Value(DateTime.now()),
        updatedAt: Value(DateTime.now())));

    return await signInWithEmailAndPassword(email, password);
  }

  @override
  Future<Either<AuthFailure, Auth>> signInWithEmailAndPassword(String email, String password) async {
    final user = await usersDao.getByEmail(email);

    if (user != null) {
      if (Crypt(user.password).match(password)) {
        final token = '${const Uuid().v4()} $email';
        await authLocale.setAuthToken(token);

        return right(Auth(token: token.split(' ').first, user: UserDto.fromDrift(user).toDomain()));
      }
    }

    return left(const AuthFailure.invalidCraditional());
  }

  @override
  Future<Unit> signOut() async {
    await authLocale.removeAuthToken();
    return unit;
  }
}
