import '../../core/value_objects.dart';
import '../account/account.dart';
import '../transaction_category/transaction_category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'transaction.freezed.dart';

enum TransactionType { income, expense, transferFrom, transferTo }

@freezed
abstract class Transaction with _$Transaction {
  const Transaction._();
  const factory Transaction({
    required UniqueId id,
    required String accountId,
    required String? categoryId,
    required Balance balance,
    required TransactionType type,
    required Description? description,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Transaction;

  factory Transaction.empty() => Transaction(
        id: UniqueId(),
        accountId: '',
        categoryId: null,
        balance: Balance(0),
        type: TransactionType.income,
        description: null,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

  String get createdAtFormated => DateFormat('y-M-dd HH:mm').format(createdAt);
}

@freezed
abstract class TransactionWithRelationship with _$TransactionWithRelationship {
  const factory TransactionWithRelationship({
    required Transaction transaction,
    required Account? account,
    required TransactionCategory? category,
  }) = _TransactionWithRelationship;
}
