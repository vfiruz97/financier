import 'package:drift/drift.dart' hide JsonKey;
import '../../../domain/core/value_objects.dart';
import '../../../domain/financier/transaction/transaction.dart';
import '../../database/database.dart' as db;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_dto.freezed.dart';

@freezed
abstract class TransactionDto with _$TransactionDto {
  const TransactionDto._();

  factory TransactionDto({
    required String id,
    required String accountId,
    required String? categoryId,
    required double balance,
    required int type,
    required String? description,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Transaction;

  factory TransactionDto.fromDomain(Transaction transaction) {
    return TransactionDto(
      id: transaction.id.getOrCrash(),
      accountId: transaction.accountId,
      categoryId: transaction.categoryId,
      balance: transaction.balance.getOrCrash(),
      type: transaction.type.index,
      description: transaction.description?.getOrCrash(),
      createdAt: transaction.createdAt,
      updatedAt: transaction.updatedAt,
    );
  }

  Transaction toDomain() {
    return Transaction(
      id: UniqueId.fromUniqueString(id),
      accountId: accountId,
      categoryId: categoryId,
      balance: Balance(balance),
      type: TransactionType.values[type],
      description: description != null ? Description(description!) : null,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  factory TransactionDto.fromDrift(db.Transaction transaction) {
    return TransactionDto(
      id: transaction.id,
      accountId: transaction.accountId,
      categoryId: transaction.categoryId,
      balance: transaction.balance,
      type: transaction.type,
      description: transaction.description,
      createdAt: transaction.createdAt,
      updatedAt: transaction.updatedAt,
    );
  }

  db.TransactionsCompanion toDrift() {
    return db.TransactionsCompanion(
      id: Value(id),
      accountId: Value(accountId),
      categoryId: Value(categoryId),
      balance: Value(balance),
      type: Value(type),
      description: Value(description),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }
}
