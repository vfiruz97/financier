import 'package:dartz/dartz.dart';
import '../../core/value_objects.dart';

import 'account.dart';
import 'account_failure.dart';

abstract class IAccountFacade {
  Future<Either<AccountFailure, Unit>> create(Account account);
  Future<Either<AccountFailure, Unit>> update(Account account);
  Future<Option<AccountWithRelationship>> getById(UniqueId id);
  Future<Option<IList<AccountWithRelationship>>> getAll();
  Future<Option<IList<AccountWithRelationship>>> getAllWithDeleted();
  Future<Option<IList<AccountWithRelationship>>> getAllDeleted();
  Future<Unit> restoreAccount(Account account);
  Future<Unit> delete(Account account);
  Future<Unit> softDelete(Account account);
}
