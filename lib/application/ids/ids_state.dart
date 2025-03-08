part of 'ids_bloc.dart';

@freezed
class IdsState with _$IdsState {
  const IdsState._();
  const factory IdsState({
    required String? userId,
    required Budget? activeBudget,
    required List<Account>? accounts,
  }) = _IdsState;

  factory IdsState.initial() => const IdsState(
        userId: null,
        activeBudget: null,
        accounts: null,
      );

  String? get activeBudgetId => activeBudget?.id;

  List<String>? get accountIds => accounts?.map((a) => a.id).toList();

  Account? getAccountById(String id) => accounts?.singleWhere((a) => a.id == id);
}
