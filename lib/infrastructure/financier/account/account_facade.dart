import '../../../domain/financier/account/account.dart';
import '../../../domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/financier/account/account_facade.dart';
import '../../../domain/financier/account/account_failure.dart';
import '../../database/daos/account_dao.dart';
import 'account_dto.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IAccountFacade)
class AccountFacade implements IAccountFacade {
  final AccountsDao accountsDao;
  AccountFacade({required this.accountsDao});

  @override
  Future<Either<AccountFailure, Unit>> create(Account account) async {
    try {
      await accountsDao.addAccount(AccountDto.fromDomain(account).toDrift());
      return right(unit);
    } catch (e) {
      return left(const AccountFailure.unexpected());
    }
  }

  @override
  Future<Option<IList<AccountWithRelationship>>> getAll() async {
    final accounts = await accountsDao.getAll();
    return some(accounts);
  }

  @override
  Future<Option<IList<AccountWithRelationship>>> getAllDeleted() async {
    final accounts = await accountsDao.getAllDeleted();
    return some(accounts);
  }

  @override
  Future<Option<IList<AccountWithRelationship>>> getAllWithDeleted() async {
    final accounts = await accountsDao.getAllWithDeleted();
    return some(accounts);
  }

  @override
  Future<Option<AccountWithRelationship>> getById(UniqueId id) async {
    final account = await accountsDao.getById(id.getOrCrash());
    if (account != null) {
      return some(account);
    }
    return none();
  }

  @override
  Future<Either<AccountFailure, Unit>> update(Account account) async {
    try {
      await accountsDao.updateAccount(AccountDto.fromDomain(account).toDrift());
      return right(unit);
    } catch (e) {
      return left(const AccountFailure.unexpected());
    }
  }

  @override
  Future<Unit> delete(Account account) async {
    await accountsDao.deleteAccount(AccountDto.fromDomain(account).toDrift());
    return unit;
  }

  @override
  Future<Unit> softDelete(Account account) async {
    await accountsDao.updateAccount(AccountDto.fromDomain(account.copyWith(deletedAt: DateTime.now())).toDrift());
    return unit;
  }

  @override
  Future<Unit> restoreAccount(Account account) async {
    await accountsDao.updateAccount(AccountDto.fromDomain(account.copyWith(deletedAt: null)).toDrift());
    return unit;
  }
}
