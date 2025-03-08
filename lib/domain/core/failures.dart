import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.empty({required T failedValue}) = Empty<T>;
  const factory ValueFailure.hasIncorrectLength({required T failedValue}) = HasIncorrectLength<T>;
  const factory ValueFailure.incorrectEmail({required T failedValue}) = IncorrectEmail<T>;
  const factory ValueFailure.notExistCurrency({required T failedValue}) = NotExistCurrency<T>;
  const factory ValueFailure.incorrectBalance({required T failedValue}) = IncorrectBalance<T>;
  const factory ValueFailure.incorrectIcon({required T failedValue}) = IncorrectIcon<T>;
  const factory ValueFailure.incorrectTransactionCategoryType({required T failedValue}) =
      IncorrectTransactionCategoryType<T>;
  const factory ValueFailure.incorrectTransactionType({required T failedValue}) = IncorrectTransactionType<T>;
}
