import 'package:dartz/dartz.dart';
import '../../../domain/financier/transaction/transaction.dart';
import '../database.dart';
import 'package:drift/drift.dart';
import '../tables/transactions.dart';
import '../../financier/account/account_dto.dart';
import '../../financier/transaction/transaction_dto.dart';
import '../../financier/transaction_category/transaction_category_dto.dart';

part 'transaction_dao.g.dart';

@DriftAccessor(tables: [Transactions])
class TransactionsDao extends DatabaseAccessor<AppDatabase> with _$TransactionsDaoMixin {
  TransactionsDao(super.db);

  Future<int> addTransaction(TransactionsCompanion entry) {
    return into(transactions).insert(entry);
  }

  Future<bool> updateTransaction(TransactionsCompanion entry) {
    return update(transactions).replace(entry);
  }

  Future<int> deleteTransaction(TransactionsCompanion entry) {
    return (delete(transactions)..where((tbl) => tbl.id.equals(entry.id.value))).go();
  }

  Future<int> deleteTransactionWhereAccountIdIn(List<String> accountIds) {
    return (delete(transactions)..where((tbl) => tbl.accountId.isIn(accountIds))).go();
  }

  Future<IList<TransactionWithRelationship>> getAllWhereCreatedBetween({
    required DateTime startDate,
    required DateTime endDate,
  }) async {
    final startDate0 = DateTime(startDate.year, startDate.month, startDate.day);
    final endDate0 = DateTime(endDate.year, endDate.month, endDate.day, 23, 59, 59);

    final accounts = db.accounts;
    final categories = db.transactionCategories;
    final rows =
        await (select(transactions)..where((tbl) => tbl.createdAt.isBetweenValues(startDate0, endDate0))).join([
      leftOuterJoin(accounts, accounts.id.equalsExp(transactions.accountId)),
      leftOuterJoin(categories, categories.id.equalsExp(transactions.categoryId)),
    ]).get();

    final transactionsList = rows.map((row) {
      final transactionRow = row.readTable(transactions);
      final accountRow = row.readTableOrNull(accounts);
      final categoryRow = row.readTableOrNull(categories);

      return TransactionWithRelationship(
        transaction: TransactionDto.fromDrift(transactionRow).toDomain(),
        account: accountRow != null ? AccountDto.fromDrift(accountRow).toDomain() : null,
        category: categoryRow != null ? TransactionCategoryDto.fromDrift(categoryRow).toDomain() : null,
      );
    }).toList();

    return ilist(transactionsList);
  }

  Future<IList<TransactionWithRelationship>> getAll() async {
    final accounts = db.accounts;
    final categories = db.transactionCategories;
    final rows = await (select(transactions)
          ..orderBy([
            (t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc),
          ]))
        .join([
      leftOuterJoin(accounts, accounts.id.equalsExp(transactions.accountId)),
      leftOuterJoin(categories, categories.id.equalsExp(transactions.categoryId)),
    ]).get();

    final transactionsList = rows.map((row) {
      final transactionRow = row.readTable(transactions);
      final accountRow = row.readTableOrNull(accounts);
      final categoryRow = row.readTableOrNull(categories);

      return TransactionWithRelationship(
        transaction: TransactionDto.fromDrift(transactionRow).toDomain(),
        account: accountRow != null ? AccountDto.fromDrift(accountRow).toDomain() : null,
        category: categoryRow != null ? TransactionCategoryDto.fromDrift(categoryRow).toDomain() : null,
      );
    }).toList();

    return ilist(transactionsList);
  }

  Stream<List<TransactionWithRelationship>> watchAllWhereAccountIdInAndLimit(List<String> accountIds, {int limit = 5}) {
    final accounts = db.accounts;
    final categories = db.transactionCategories;
    final rows = (select(transactions)
          ..where((tbl) => tbl.accountId.isIn(accountIds))
          ..orderBy([
            (t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc),
          ])
          ..limit(limit))
        .join([
      leftOuterJoin(accounts, accounts.id.equalsExp(transactions.accountId)),
      leftOuterJoin(categories, categories.id.equalsExp(transactions.categoryId)),
    ]);

    return rows.map((row) {
      final transactionRow = row.readTable(transactions);
      final accountRow = row.readTableOrNull(accounts);
      final categoryRow = row.readTableOrNull(categories);

      return TransactionWithRelationship(
        transaction: TransactionDto.fromDrift(transactionRow).toDomain(),
        account: accountRow != null ? AccountDto.fromDrift(accountRow).toDomain() : null,
        category: categoryRow != null ? TransactionCategoryDto.fromDrift(categoryRow).toDomain() : null,
      );
    }).watch();
  }

  Stream<List<TransactionWithRelationship>> watchAllWhereAccountIdIn(List<String> accountIds) {
    final accounts = db.accounts;
    final categories = db.transactionCategories;
    final rows = (select(transactions)
          ..where((tbl) => tbl.accountId.isIn(accountIds))
          ..orderBy([
            (t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc),
          ]))
        .join([
      leftOuterJoin(accounts, accounts.id.equalsExp(transactions.accountId)),
      leftOuterJoin(categories, categories.id.equalsExp(transactions.categoryId)),
    ]);

    return rows.map((row) {
      final transactionRow = row.readTable(transactions);
      final accountRow = row.readTableOrNull(accounts);
      final categoryRow = row.readTableOrNull(categories);

      return TransactionWithRelationship(
        transaction: TransactionDto.fromDrift(transactionRow).toDomain(),
        account: accountRow != null ? AccountDto.fromDrift(accountRow).toDomain() : null,
        category: categoryRow != null ? TransactionCategoryDto.fromDrift(categoryRow).toDomain() : null,
      );
    }).watch();
  }

  Stream<List<TransactionWithRelationship>> watchAllWhereAccountIdInAndDateBetweenAndType(
    List<String> accountIds, {
    required DateTime startDate,
    required DateTime endDate,
    required int type,
  }) {
    final startDate0 = DateTime(startDate.year, startDate.month, startDate.day);
    final endDate0 = DateTime(endDate.year, endDate.month, endDate.day, 23, 59, 59);

    final accounts = db.accounts;
    final categories = db.transactionCategories;
    final rows = (select(transactions)
          ..where((tbl) =>
              tbl.accountId.isIn(accountIds) &
              tbl.createdAt.isBetweenValues(startDate0, endDate0) &
              tbl.type.equals(type))
          ..orderBy([
            (t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc),
          ]))
        .join([
      leftOuterJoin(accounts, accounts.id.equalsExp(transactions.accountId)),
      leftOuterJoin(categories, categories.id.equalsExp(transactions.categoryId)),
    ]);

    return rows.map((row) {
      final transactionRow = row.readTable(transactions);
      final accountRow = row.readTableOrNull(accounts);
      final categoryRow = row.readTableOrNull(categories);

      return TransactionWithRelationship(
        transaction: TransactionDto.fromDrift(transactionRow).toDomain(),
        account: accountRow != null ? AccountDto.fromDrift(accountRow).toDomain() : null,
        category: categoryRow != null ? TransactionCategoryDto.fromDrift(categoryRow).toDomain() : null,
      );
    }).watch();
  }

  Stream<List<TransactionWithRelationship>> watchAllWhereAccountIdInAndDateBetween(
    List<String> accountIds, {
    required DateTime startDate,
    required DateTime endDate,
  }) {
    final startDate0 = DateTime(startDate.year, startDate.month, startDate.day);
    final endDate0 = DateTime(endDate.year, endDate.month, endDate.day, 23, 59, 59);

    final accounts = db.accounts;
    final categories = db.transactionCategories;
    final rows = (select(transactions)
          ..where((tbl) => tbl.accountId.isIn(accountIds) & tbl.createdAt.isBetweenValues(startDate0, endDate0))
          ..orderBy([
            (t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc),
          ]))
        .join([
      leftOuterJoin(accounts, accounts.id.equalsExp(transactions.accountId)),
      leftOuterJoin(categories, categories.id.equalsExp(transactions.categoryId)),
    ]);

    return rows.map((row) {
      final transactionRow = row.readTable(transactions);
      final accountRow = row.readTableOrNull(accounts);
      final categoryRow = row.readTableOrNull(categories);

      return TransactionWithRelationship(
        transaction: TransactionDto.fromDrift(transactionRow).toDomain(),
        account: accountRow != null ? AccountDto.fromDrift(accountRow).toDomain() : null,
        category: categoryRow != null ? TransactionCategoryDto.fromDrift(categoryRow).toDomain() : null,
      );
    }).watch();
  }

  Future<TransactionWithRelationship?> getById(String id) async {
    final accounts = db.accounts;
    final categories = db.transactionCategories;
    final row = await (select(transactions)
          ..where((tbl) => tbl.id.equals(id))
          ..orderBy([
            (t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc),
          ]))
        .join([
      leftOuterJoin(accounts, accounts.id.equalsExp(transactions.accountId)),
      leftOuterJoin(categories, categories.id.equalsExp(transactions.categoryId)),
    ]).getSingleOrNull();

    if (row != null) {
      final transactionRow = row.readTable(transactions);
      final accountRow = row.readTableOrNull(accounts);
      final categoryRow = row.readTableOrNull(categories);

      return TransactionWithRelationship(
        transaction: TransactionDto.fromDrift(transactionRow).toDomain(),
        account: accountRow != null ? AccountDto.fromDrift(accountRow).toDomain() : null,
        category: categoryRow != null ? TransactionCategoryDto.fromDrift(categoryRow).toDomain() : null,
      );
    }

    return null;
  }

  Stream<TransactionWithRelationship?> watchById(String id) {
    final accounts = db.accounts;
    final categories = db.transactionCategories;

    return (select(transactions)
          ..where((tbl) => tbl.id.equals(id))
          ..orderBy([
            (t) => OrderingTerm(expression: t.createdAt, mode: OrderingMode.desc),
          ]))
        .join([
      leftOuterJoin(accounts, accounts.id.equalsExp(transactions.accountId)),
      leftOuterJoin(categories, categories.id.equalsExp(transactions.categoryId)),
    ]).map((row) {
      final transactionRow = row.readTable(transactions);
      final accountRow = row.readTableOrNull(accounts);
      final categoryRow = row.readTableOrNull(categories);

      return TransactionWithRelationship(
        transaction: TransactionDto.fromDrift(transactionRow).toDomain(),
        account: accountRow != null ? AccountDto.fromDrift(accountRow).toDomain() : null,
        category: categoryRow != null ? TransactionCategoryDto.fromDrift(categoryRow).toDomain() : null,
      );
    }).watchSingleOrNull();
  }
}
