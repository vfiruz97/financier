import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_category_failure.freezed.dart';

@freezed
abstract class TransactionCategoryFailure with _$TransactionCategoryFailure {
  const factory TransactionCategoryFailure.unexpected() = _UnexpectedTransactionCategoryFailure;
}
