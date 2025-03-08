import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ILocalDb {
  String? get(String key);
  Future<bool> put(String key, String value);
  Future<bool> remove(String key);
}

@Singleton(as: ILocalDb)
class LocaleDb implements ILocalDb {
  final SharedPreferences sharedPreferences;
  const LocaleDb(this.sharedPreferences);

  @override
  String? get(String key) {
    return sharedPreferences.getString(key);
  }

  @override
  Future<bool> put(String key, String value) async {
    return await sharedPreferences.setString(key, value);
  }

  @override
  Future<bool> remove(String key) async {
    return await sharedPreferences.remove(key);
  }
}
