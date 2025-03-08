import 'package:dartz/dartz.dart';
import '../../core/value_objects.dart';

import 'transaction_category.dart';
import 'transaction_category_failure.dart';

abstract class ITransactionCategoryFacade {
  Future<Either<TransactionCategoryFailure, Unit>> create(TransactionCategory transactionCategory);
  Future<Either<TransactionCategoryFailure, Unit>> update(TransactionCategory transactionCategory);
  Future<Either<TransactionCategoryFailure, Unit>> updateOrder(
      IList<TransactionCategory> transactionCategories, TransactionCategory transactionCategory,
      [bool up = true]);
  Future<Option<TransactionCategory>> getById(UniqueId id);
  Future<Option<IList<TransactionCategory>>> getAll();
  Future<Option<IList<TransactionCategory>>> getAllByType(TransactionCategoryType type);
  Future<Unit> delete(TransactionCategory transactionCategory);
  Future<Unit> softDelete(TransactionCategory transactionCategory);
}
