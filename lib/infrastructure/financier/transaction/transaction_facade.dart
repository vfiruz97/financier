import '../../../domain/financier/transaction/transaction.dart';
import '../../../domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/financier/transaction/transaction_facade.dart';
import '../../../domain/financier/transaction/transaction_failure.dart';
import '../../database/daos/account_dao.dart';
import '../../database/daos/transaction_dao.dart';
import '../account/account_dto.dart';
import 'transaction_dto.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ITransactionFacade)
class TransactionFacade implements ITransactionFacade {
  final TransactionsDao transactionsDao;
  final AccountsDao accountsDao;
  TransactionFacade(this.transactionsDao, this.accountsDao);

  @override
  Future<Either<TransactionFailure, Unit>> create(Transaction transaction) async {
    try {
      await calculateAndSaveAccountBalance(transaction);
      await transactionsDao.addTransaction(TransactionDto.fromDomain(transaction).toDrift());
      return right(unit);
    } catch (e) {
      return left(const TransactionFailure.unexpected());
    }
  }

  @override
  Future<Unit> delete(Transaction transaction) async {
    await calculateAndSaveAccountBalance(transaction, isDeleting: true);
    await transactionsDao.deleteTransaction(TransactionDto.fromDomain(transaction).toDrift());
    return unit;
  }

  @override
  Future<Option<IList<TransactionWithRelationship>>> getAll() async {
    final list = await transactionsDao.getAll();
    if (list.isEmpty) {
      return none();
    }
    return some(list);
  }

  @override
  Future<Option<TransactionWithRelationship>> getById(UniqueId id) async {
    final transaction = await transactionsDao.getById(id.getOrCrash());
    return transaction != null ? some(transaction) : none();
  }

  @override
  Future<Either<TransactionFailure, Unit>> update(Transaction transaction) async {
    try {
      await calculateAndSaveAccountBalance(transaction, isUpdating: true);
      await transactionsDao.updateTransaction(TransactionDto.fromDomain(transaction).toDrift());
      return right(unit);
    } catch (e) {
      return left(const TransactionFailure.unexpected());
    }
  }

  @override
  Future<Unit> calculateAndSaveAccountBalance(Transaction transaction,
      {bool isUpdating = false, bool isDeleting = false}) async {
    final accountId = transaction.accountId;
    final accountWithR = await accountsDao.getById(accountId);
    if (accountWithR != null) {
      late double newAccountBalance;
      final accountBalance = accountWithR.account.balance.getOrElse(0);
      double amount = transaction.balance.getOrElse(0);

      if (isUpdating) {
        final transactionWithR = await transactionsDao.getById(transaction.id.getOrCrash());
        if (transactionWithR != null) {
          final oldTBalance = transactionWithR.transaction.balance.getOrElse(0);
          amount = (amount - oldTBalance).abs();
        }
      }

      if (isDeleting) {
        if (transaction.type == TransactionType.income || transaction.type == TransactionType.transferTo) {
          newAccountBalance = accountBalance - amount;
        } else if (transaction.type == TransactionType.expense || transaction.type == TransactionType.transferFrom) {
          newAccountBalance = accountBalance + amount;
        }
      } else {
        if (transaction.type == TransactionType.income || transaction.type == TransactionType.transferTo) {
          newAccountBalance = accountBalance + amount;
        } else if (transaction.type == TransactionType.expense || transaction.type == TransactionType.transferFrom) {
          newAccountBalance = accountBalance - amount;
        }
      }

      await accountsDao.updateAccount(
          AccountDto.fromDomain(accountWithR.account.copyWith(balance: Balance(newAccountBalance))).toDrift());
    }
    return unit;
  }
}
