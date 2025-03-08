import '../../domain/core/value_objects.dart';
import '../../domain/financier/transaction/transaction.dart';

class TransactionExpenseByCategory {
  final List<String> _categories = [];
  bool isEmpty = true;

  double totalBalance = 0;

  final int currencyId;
  final Map<String, double> mapData;

  TransactionExpenseByCategory({required this.mapData, required this.currencyId});

  factory TransactionExpenseByCategory.withCurrencyId(int currencyId) =>
      TransactionExpenseByCategory(mapData: {}, currencyId: currencyId);

  void addTransactionWithR(TransactionWithRelationship transactionWithRelationship) {
    final account = transactionWithRelationship.account;
    final category = transactionWithRelationship.category;

    /// Transaction without account and category is not absolute.
    if (account == null || category == null) return;

    final currencyId = account.currencyId.getOrCrash();

    /// Transaction with another currency is not considered.
    if (currencyId != currencyId) return;

    final categoryName = category.name.getOrCrash();
    final balance = transactionWithRelationship.transaction.balance;

    if (_categories.contains(categoryName)) {
      mapData[categoryName] = Balance(mapData[categoryName]! + balance.getOrElse(0)).getOrElse(0);
      if (isEmpty) isEmpty = false;
    } else {
      _categories.add(categoryName);
      mapData[categoryName] = balance.getOrElse(0);
      if (isEmpty) isEmpty = false;
    }

    totalBalance = Balance(totalBalance + balance.getOrElse(0)).getOrElse(0);
  }
}
