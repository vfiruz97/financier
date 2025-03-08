import 'package:drift/drift.dart' hide JsonKey;
import '../../../domain/core/value_objects.dart';
import '../../../domain/financier/transaction_category/transaction_category.dart';
import '../../database/database.dart' as db;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'transaction_category_dto.freezed.dart';

@freezed
abstract class TransactionCategoryDto with _$TransactionCategoryDto {
  const TransactionCategoryDto._();

  factory TransactionCategoryDto({
    required String? id,
    required String name,
    required int type,
    required int order,
    required DateTime? deleteAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _TransactionCategoryDto;

  factory TransactionCategoryDto.fromDomain(TransactionCategory transactionCategory) {
    return TransactionCategoryDto(
      id: transactionCategory.id?.getOrCrash(),
      name: transactionCategory.name.getOrCrash(),
      type: transactionCategory.type.index,
      order: transactionCategory.order,
      deleteAt: transactionCategory.deleteAt,
      createdAt: transactionCategory.createdAt,
      updatedAt: transactionCategory.updatedAt,
    );
  }

  TransactionCategory toDomain() {
    return TransactionCategory(
      id: id == null ? UniqueId() : UniqueId.fromUniqueString(id!),
      name: Name(name),
      type: TransactionCategoryType.values[type],
      order: order,
      deleteAt: deleteAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  factory TransactionCategoryDto.fromDrift(db.TransactionCategory transactionCategory) {
    return TransactionCategoryDto(
      id: transactionCategory.id,
      name: transactionCategory.name,
      type: transactionCategory.type,
      order: transactionCategory.order,
      deleteAt: transactionCategory.deleteAt,
      createdAt: transactionCategory.createdAt,
      updatedAt: transactionCategory.updatedAt,
    );
  }

  db.TransactionCategoriesCompanion toDrift() {
    return db.TransactionCategoriesCompanion(
      id: Value(id ?? const Uuid().v4()),
      name: Value(name),
      type: Value(type),
      order: Value(order),
      deleteAt: Value(deleteAt),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }
}
