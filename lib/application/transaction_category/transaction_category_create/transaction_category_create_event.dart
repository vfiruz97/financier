part of 'transaction_category_create_bloc.dart';

@freezed
class TransactionCategoryCreateEvent with _$TransactionCategoryCreateEvent {
  const factory TransactionCategoryCreateEvent.changeName(String nameStr) = _ChangeName;
  const factory TransactionCategoryCreateEvent.changeType(TransactionCategoryType transactionCategoryType) = _ChangeType;
  const factory TransactionCategoryCreateEvent.submit() = _Submit;
}
