import '../../locale_database/locale_db.dart';
import 'package:injectable/injectable.dart';

abstract class IAuthLocale {
  String? getAuthToken();
  Future<bool> setAuthToken(String token);
  Future<bool> removeAuthToken();
}

@Singleton(as: IAuthLocale)
class AuthLocale implements IAuthLocale {
  final ILocalDb localeDb;
  const AuthLocale(this.localeDb);

  static const authTokenKey = '_oxda1w_a_tlk12m';

  @override
  String? getAuthToken() {
    return localeDb.get(authTokenKey);
  }

  @override
  Future<bool> removeAuthToken() async {
    return await localeDb.remove(authTokenKey);
  }

  @override
  Future<bool> setAuthToken(String token) async {
    return await localeDb.put(authTokenKey, token);
  }
}
