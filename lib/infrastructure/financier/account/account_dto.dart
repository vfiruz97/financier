import 'package:drift/drift.dart' hide JsonKey;
import '../../../domain/core/value_objects.dart';
import '../../../domain/financier/account/account.dart';
import '../../database/database.dart' as db;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'account_dto.freezed.dart';

@freezed
abstract class AccountDto with _$AccountDto {
  const AccountDto._();

  factory AccountDto({
    required String? id,
    required String name,
    required String budgetId,
    required int currencyId,
    required double balance,
    required int iconAvatar,
    required DateTime? deletedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _AccountDto;

  factory AccountDto.fromDomain(Account account) {
    return AccountDto(
      id: account.id.getOrCrash(),
      name: account.name.getOrCrash(),
      budgetId: account.budgetId,
      currencyId: account.currencyId.getOrCrash(),
      balance: account.balance.getOrCrash(),
      iconAvatar: account.iconAvatar.getOrCrash(),
      deletedAt: account.deletedAt,
      createdAt: account.createdAt,
      updatedAt: account.updatedAt,
    );
  }

  Account toDomain() {
    return Account(
      id: id == null ? UniqueId() : UniqueId.fromUniqueString(id!),
      name: Name(name),
      budgetId: budgetId,
      currencyId: CurrencyId(currencyId),
      balance: Balance(balance),
      iconAvatar: IconAvatar(iconAvatar),
      deletedAt: deletedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  factory AccountDto.fromDrift(db.Account account) {
    return AccountDto(
      id: account.id,
      name: account.name,
      budgetId: account.budgetId,
      currencyId: account.currencyId,
      balance: account.balance,
      iconAvatar: account.iconAvatar,
      deletedAt: account.deletedAt,
      createdAt: account.createdAt,
      updatedAt: account.updatedAt,
    );
  }

  db.AccountsCompanion toDrift() {
    return db.AccountsCompanion(
      id: Value(id ?? const Uuid().v4()),
      name: Value(name),
      budgetId: Value(budgetId),
      currencyId: Value(currencyId),
      balance: Value(balance),
      iconAvatar: Value(iconAvatar),
      deletedAt: Value(deletedAt),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }
}
