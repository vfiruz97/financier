import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import '../../../domain/financier/transaction_category/transaction_category.dart' as domain;
import '../database.dart';
import '../tables/transaction_categories.dart';
import '../../financier/transaction_category/transaction_category_dto.dart';

part 'transaction_category_dao.g.dart';

@DriftAccessor(tables: [TransactionCategories])
class TransactionCategoriesDao extends DatabaseAccessor<AppDatabase> with _$TransactionCategoriesDaoMixin {
  TransactionCategoriesDao(super.db);

  Future<int> addTransactionCategory(TransactionCategoriesCompanion entry) {
    return into(transactionCategories).insert(entry);
  }

  Future<bool> updateTransactionCategory(TransactionCategoriesCompanion entry) {
    return update(transactionCategories).replace(entry);
  }

  Future<int> deleteTransactionCategory(TransactionCategoriesCompanion entry) {
    return (delete(transactionCategories)..where((tbl) => tbl.id.equals(entry.id.value))).go();
  }

  Future<IList<domain.TransactionCategory>> getAll() async {
    final rows = await (select(transactionCategories)
          ..where((tbl) => tbl.deleteAt.isNull())
          ..orderBy([
            (t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc),
          ]))
        .get();

    return ilist(rows.map((tc) {
      return TransactionCategoryDto.fromDrift(tc).toDomain();
    }).toList());
  }

  Future<IList<domain.TransactionCategory>> getAllByType(int type) async {
    final rows = await (select(transactionCategories)
          ..where((tbl) => tbl.deleteAt.isNull() & tbl.type.equals(type))
          ..orderBy([
            (t) => OrderingTerm(expression: t.order, mode: OrderingMode.desc),
          ]))
        .get();

    return ilist(rows.map((tc) {
      return TransactionCategoryDto.fromDrift(tc).toDomain();
    }).toList());
  }

  Stream<List<domain.TransactionCategory>> watchAllByType(int type) {
    final rows = (select(transactionCategories)
      ..where((tbl) => tbl.deleteAt.isNull() & tbl.type.equals(type))
      ..orderBy([
        (t) => OrderingTerm(expression: t.order, mode: OrderingMode.asc),
      ]));

    return rows.map((tc) {
      return TransactionCategoryDto.fromDrift(tc).toDomain();
    }).watch();
  }

  Future<domain.TransactionCategory?> getById(String id) async {
    final row = await (select(transactionCategories)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    return row != null ? TransactionCategoryDto.fromDrift(row).toDomain() : null;
  }
}
