part of 'transaction_category_update_bloc.dart';

@freezed
class TransactionCategoryUpdateEvent with _$TransactionCategoryUpdateEvent {
  const factory TransactionCategoryUpdateEvent.initial() = _Initial;
  const factory TransactionCategoryUpdateEvent.changeName(String nameStr) = _ChangeName;
  const factory TransactionCategoryUpdateEvent.toogleDeleteTransaction() = _ToogleDeleteTransaction;
  const factory TransactionCategoryUpdateEvent.assignTransactionCategory(TransactionCategory transactionCategory) =
      _AssignTransactionCategory;
  const factory TransactionCategoryUpdateEvent.updateOrDelete() = _UpdateOrDelete;
  const factory TransactionCategoryUpdateEvent.updateOrder(
          IList<TransactionCategory> transactionCategories, TransactionCategory transactionCategory, bool up) =
      _UpdateOrder;
}
