import '../../../domain/financier/transaction_category/transaction_category.dart';
import '../../../domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/financier/transaction_category/transaction_category_facade.dart';
import '../../../domain/financier/transaction_category/transaction_category_failure.dart';
import '../../database/daos/transaction_category_dao.dart';
import 'transaction_category_dto.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ITransactionCategoryFacade)
class TransactionCategoryFacade implements ITransactionCategoryFacade {
  final TransactionCategoriesDao transactionCategoriesDao;
  TransactionCategoryFacade(this.transactionCategoriesDao);

  @override
  Future<Either<TransactionCategoryFailure, Unit>> create(
    TransactionCategory transactionCategory,
  ) async {
    try {
      final order = (await getAllByType(transactionCategory.type)).fold(() => 1, (l) => l.length());
      await transactionCategoriesDao.addTransactionCategory(
          TransactionCategoryDto.fromDomain(transactionCategory.copyWith(order: order + 1)).toDrift());
      return right(unit);
    } catch (e) {
      return left(const TransactionCategoryFailure.unexpected());
    }
  }

  @override
  Future<Unit> delete(TransactionCategory transactionCategory) async {
    await transactionCategoriesDao
        .deleteTransactionCategory(TransactionCategoryDto.fromDomain(transactionCategory).toDrift());
    return unit;
  }

  @override
  Future<Option<IList<TransactionCategory>>> getAll() async {
    final list = await transactionCategoriesDao.getAll();
    if (list.isEmpty) {
      return none();
    }
    return some(list);
  }

  @override
  Future<Option<IList<TransactionCategory>>> getAllByType(TransactionCategoryType type) async {
    final list = await transactionCategoriesDao.getAllByType(type.index);
    if (list.isEmpty) {
      return none();
    }
    return some(list);
  }

  @override
  Future<Option<TransactionCategory>> getById(UniqueId id) async {
    final category = await transactionCategoriesDao.getById(id.getOrCrash());
    return category != null ? some(category) : none();
  }

  @override
  Future<Either<TransactionCategoryFailure, Unit>> update(TransactionCategory transactionCategory) async {
    try {
      await transactionCategoriesDao
          .updateTransactionCategory(TransactionCategoryDto.fromDomain(transactionCategory).toDrift());
      return right(unit);
    } catch (e) {
      return left(const TransactionCategoryFailure.unexpected());
    }
  }

  @override
  Future<Either<TransactionCategoryFailure, Unit>> updateOrder(
      IList<TransactionCategory> transactionCategories, TransactionCategory transactionCategory,
      [bool up = true]) async {
    try {
      int order = transactionCategory.order;
      final entryCount = transactionCategories.length();
      if (up) {
        if (order > 1) {
          await update(transactionCategory.copyWith(order: order - 1));
          transactionCategories
              .filter((tC) => tC.order == (order - 1) && tC.id?.getOrCrash() != transactionCategory.id?.getOrCrash())
              .forEach((tC) async => await update(tC.copyWith(order: order)));
        } else {
          transactionCategories
              .filter((tC) => tC.order == 1 && tC.id?.getOrCrash() != transactionCategory.id?.getOrCrash())
              .forEach((tC) async => await update(tC.copyWith(order: 2)));
        }
      } else {
        if (order < entryCount) {
          await update(transactionCategory.copyWith(order: order + 1));
          transactionCategories
              .filter((tC) => tC.order == (order + 1) && tC.id?.getOrCrash() != transactionCategory.id?.getOrCrash())
              .forEach((tC) async => await update(tC.copyWith(order: order)));
        } else {
          transactionCategories
              .filter((tC) => tC.order == entryCount && tC.id?.getOrCrash() != transactionCategory.id?.getOrCrash())
              .forEach((tC) async => await update(tC.copyWith(order: entryCount - 1)));
        }
      }
      return right(unit);
    } catch (e) {
      return left(const TransactionCategoryFailure.unexpected());
    }
  }

  @override
  Future<Unit> softDelete(TransactionCategory transactionCategory) async {
    await update(transactionCategory.copyWith(deleteAt: DateTime.now()));
    return unit;
  }
}
