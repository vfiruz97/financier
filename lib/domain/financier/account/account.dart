import '../../core/value_objects.dart';
import '../budget/budget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';

@freezed
abstract class Account with _$Account {
  const factory Account({
    required UniqueId id,
    required Name name,
    required String budgetId,
    required CurrencyId currencyId,
    required Balance balance,
    required IconAvatar iconAvatar,
    required DateTime? deletedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Account;

  factory Account.empty() => Account(
        id: UniqueId(),
        name: Name(''),
        budgetId: '',
        currencyId: CurrencyId(4),
        balance: Balance(0),
        iconAvatar: IconAvatar(1),
        deletedAt: null,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
}

@freezed
abstract class AccountWithRelationship with _$AccountWithRelationship {
  const factory AccountWithRelationship({
    required Account account,
    required Budget? budget,
  }) = _AccountWithRelationship;
}
