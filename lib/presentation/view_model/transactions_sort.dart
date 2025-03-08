import '../../domain/core/value_objects.dart';
import '../../domain/financier/transaction/transaction.dart';

class _Money {
  final CurrencyId currencyId;
  final Balance balance;
  _Money({
    required this.currencyId,
    required this.balance,
  });

  _Money addBalance(Balance balance) {
    double balanceDouble = balance.getOrElse(0);
    double newBalanceDouble = balance.getOrElse(0);

    return _Money(
      balance: Balance(balanceDouble + newBalanceDouble),
      currencyId: currencyId,
    );
  }

  String get currencyCode => currencyId.code;
  String get balanceStr => '${balance.getOrElse(0)}'.endsWith('.0')
      ? '${balance.getOrElse(0)}'.replaceFirst('.0', '')
      : '${balance.getOrElse(0)}';
}

class TotalAmounts {
  final _Money totalIncome;
  final _Money totalExpense;
  TotalAmounts({
    required this.totalIncome,
    required this.totalExpense,
  });

  double get balance => totalIncome.balance.getOrElse(0) - totalExpense.balance.getOrElse(0);

  String get getBalanceStr {
    final currencyCode = totalIncome.currencyCode;
    final formattedBalance = balance >= 0 ? '+$currencyCode ${balance.abs()}' : '-$currencyCode ${balance.abs()}';
    return formattedBalance.endsWith('.0') ? formattedBalance.replaceFirst('.0', '') : formattedBalance;
  }
}

class TransactionsSort {
  final List<String> _currency = [];

  List<TransactionWithRelationship> transactionWithRelationships;
  List<TotalAmounts> totalAmounts;

  TransactionsSort({
    required this.transactionWithRelationships,
    required this.totalAmounts,
  });

  factory TransactionsSort.initial() => TransactionsSort(
        transactionWithRelationships: [],
        totalAmounts: [],
      );

  void addTransactionWithR(TransactionWithRelationship transactionWithRelationship) {
    /// Getting account of transaction
    final account = transactionWithRelationship.account;

    /// Transaction without account is not absolute.
    if (account == null) return;

    /// Added new transaction in list property.
    transactionWithRelationships.add(transactionWithRelationship);

    final currencyCode = account.currencyId.code;
    final transaction = transactionWithRelationship.transaction;
    final balance = transaction.balance;

    if ([TransactionType.expense, TransactionType.transferFrom].contains(transaction.type)) {
      /// Here is counting amounts for [totalExpense].
      if (_currency.contains(currencyCode)) {
        totalAmounts = totalAmounts.map((totalAmount) {
          if (totalAmount.totalExpense.currencyCode == currencyCode) {
            return TotalAmounts(
              totalExpense: totalAmount.totalExpense.addBalance(balance),
              totalIncome: totalAmount.totalIncome,
            );
          }
          return totalAmount;
        }).toList();
      } else {
        _currency.add(currencyCode);
        totalAmounts.add(
          TotalAmounts(
            totalExpense: _Money(balance: balance, currencyId: account.currencyId),
            totalIncome: _Money(balance: Balance(0), currencyId: account.currencyId),
          ),
        );
      }
    } else if ([TransactionType.income, TransactionType.transferTo].contains(transaction.type)) {
      /// Here is counting amounts for [totalIncome].
      if (_currency.contains(currencyCode)) {
        totalAmounts = totalAmounts.map((totalAmount) {
          if (totalAmount.totalIncome.currencyCode == currencyCode) {
            return TotalAmounts(
              totalIncome: totalAmount.totalIncome.addBalance(balance),
              totalExpense: totalAmount.totalExpense,
            );
          }
          return totalAmount;
        }).toList();
      } else {
        _currency.add(currencyCode);
        totalAmounts.add(
          TotalAmounts(
            totalIncome: _Money(balance: balance, currencyId: account.currencyId),
            totalExpense: _Money(balance: Balance(0), currencyId: account.currencyId),
          ),
        );
      }
    }
  }
}
