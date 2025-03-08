import 'package:dartz/dartz.dart';
import 'currency_list.dart';
import 'icon_list.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateStringIsNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateStringInAllowedLength(String input, {int min = 0, int max = 10}) {
  if (input.length >= min && input.length <= max) {
    return right(input);
  } else {
    return left(ValueFailure.hasIncorrectLength(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateEmail(String input) {
  if (RegExp(
          r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
      .hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.incorrectEmail(failedValue: input));
  }
}

Either<ValueFailure<int>, int> validateCurrencyId(int input) {
  if (!input.isNegative && currencies.length >= input) {
    return right(input);
  } else {
    return left(ValueFailure.notExistCurrency(failedValue: input));
  }
}

Either<ValueFailure<double>, double> validateBalance(double input) {
  return right(double.parse((input).toStringAsFixed(2)));
}

Either<ValueFailure<int>, int> validateIcon(int input) {
  if (!input.isNegative && icons.length >= input) {
    return right(input);
  } else {
    return left(ValueFailure.incorrectIcon(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateTransactionCategoryType(String input) {
  if (<String>['income', 'expense'].contains(input)) {
    return right(input);
  } else {
    return left(ValueFailure.incorrectTransactionCategoryType(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateTransactionType(String input) {
  if (<String>['income', 'expense', 'transfer_to', 'transfer_from'].contains(input)) {
    return right(input);
  } else {
    return left(ValueFailure.incorrectTransactionType(failedValue: input));
  }
}
