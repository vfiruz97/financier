import '../../core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_category.freezed.dart';

enum TransactionCategoryType { income, expense }

@freezed
abstract class TransactionCategory with _$TransactionCategory {
  const factory TransactionCategory({
    required UniqueId? id,
    required Name name,
    required TransactionCategoryType type,
    required int order,
    required DateTime? deleteAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _TransactionCategory;

  factory TransactionCategory.empty() => TransactionCategory(
        id: UniqueId(),
        name: Name(''),
        type: TransactionCategoryType.expense,
        order: 1,
        deleteAt: null,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
}
