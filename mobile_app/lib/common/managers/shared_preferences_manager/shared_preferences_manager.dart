import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  late SharedPreferences _sharedPreferences;

  SharedPreferencesManager();

  Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  bool? getBool({required SharedPreferencesKeys key}) {
    return _sharedPreferences.getBool(key.name);
  }

  String? getString({required SharedPreferencesKeys key}) {
    return _sharedPreferences.getString(key.name);
  }

  void setBool({
    required SharedPreferencesKeys key,
    required bool value,
  }) {
    _sharedPreferences.setBool(
      key.name,
      value,
    );
  }

  void setString({
    required SharedPreferencesKeys key,
    required String value,
  }) {
    _sharedPreferences.setString(
      key.name,
      value,
    );
  }
}

enum SharedPreferencesKeys {
  role,
}
