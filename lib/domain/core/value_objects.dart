import 'package:dartz/dartz.dart';
import 'currency_list.dart';
import 'icon_list.dart';
import 'package:flutter/widgets.dart';
import 'package:uuid/uuid.dart';

import 'errors.dart';
import 'failures.dart';
import 'validators.dart';

/// abstract class [ValueObject]
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  T getOrElse(T dflt) {
    return value.getOrElse(() => dflt);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  bool isValid() {
    return value.isRight();
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

/// class [UniqueId] - is used as object value
class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(right(const Uuid().v4()));
  }

  factory UniqueId.fromUniqueString(String uniqueIdStr) {
    return UniqueId._(right(uniqueIdStr));
  }

  const UniqueId._(this.value);
}

/// class [Name] - is used as object value
class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Name(String name) {
    return Name._(validateStringIsNotEmpty(name).flatMap((name) => validateStringInAllowedLength(name, max: 28)));
  }

  const Name._(this.value);
}

/// class [Email] - is used as object value
class Email extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Email(String name) {
    return Email._(validateStringIsNotEmpty(name)
        .flatMap((name) => validateStringInAllowedLength(name, max: 28).flatMap(validateEmail)));
  }

  const Email._(this.value);
}

/// class [Password] - is used as object value
class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String password) {
    return Password._(validateStringInAllowedLength(password, min: 6, max: 26));
  }

  const Password._(this.value);
}

/// class [CurrencyId] - is used as object value
class CurrencyId extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory CurrencyId(int currencyId) {
    return CurrencyId._(validateCurrencyId(currencyId));
  }

  const CurrencyId._(this.value);

  String get code => currencies[value.getOrElse(() => 4)]['a_code'] as String;
}

/// class [Balance] - is used as object value
class Balance extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory Balance(double balance) {
    return Balance._(validateBalance(balance));
  }

  const Balance._(this.value);
}

/// class [IconAvatar] - is used as object value
class IconAvatar extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory IconAvatar(int index) {
    return IconAvatar._(validateIcon(index));
  }

  const IconAvatar._(this.value);

  IconData get icon => icons[value.getOrElse(() => 0)];
}

/// class [TCategoryType] - is used as object value
class TCategoryType extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory TCategoryType(String transactionCategoryType) {
    return TCategoryType._(validateTransactionCategoryType(transactionCategoryType));
  }

  const TCategoryType._(this.value);
}

/// class [TransictionType] - is used as object value
class TransictionType extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory TransictionType(String categoryType) {
    return TransictionType._(validateTransactionType(categoryType));
  }

  const TransictionType._(this.value);
}

/// class [Description] - is used as object value
class Description extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Description(String description) {
    return Description._(validateStringInAllowedLength(description, max: 68));
  }

  const Description._(this.value);
}
