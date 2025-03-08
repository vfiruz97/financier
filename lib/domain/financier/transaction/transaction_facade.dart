import 'package:dartz/dartz.dart';
import '../../core/value_objects.dart';
import 'transaction.dart';
import 'transaction_failure.dart';

abstract class ITransactionFacade {
  Future<Either<TransactionFailure, Unit>> create(Transaction transaction);
  Future<Either<TransactionFailure, Unit>> update(Transaction transaction);
  Future<Option<IList<TransactionWithRelationship>>> getAll();
  Future<Option<TransactionWithRelationship>> getById(UniqueId id);
  Future<Unit> delete(Transaction transaction);
  Future<Unit> calculateAndSaveAccountBalance(Transaction transaction,
      {bool isUpdating = false, bool isDeleting = false});
}
