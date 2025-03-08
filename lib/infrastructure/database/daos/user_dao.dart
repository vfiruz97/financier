import '../database.dart';
import '../tables/users.dart';
import 'package:drift/drift.dart';

part 'user_dao.g.dart';

@DriftAccessor(tables: [Users])
class UsersDao extends DatabaseAccessor<AppDatabase> with _$UsersDaoMixin {
  UsersDao(super.db);

  Future<int> addUser(UsersCompanion entry) {
    return into(users).insert(entry);
  }

  Future updateUser(UsersCompanion entry) {
    return update(users).replace(entry);
  }

  Future<User?> getById(String id) {
    return (select(users)..where((u) => u.id.equals(id))).getSingleOrNull();
  }

  Future<User?> getByEmail(String email) {
    return (select(users)..where((u) => u.email.equals(email))).getSingleOrNull();
  }
}
