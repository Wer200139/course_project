import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageManager {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  SecureStorageManager();

  Future<String?> getAuthToken() {
    return _secureStorage.read(key: SecureStorageKeys.authToken.name);
  }

  Future<String?> getRefreshToken() {
    return _secureStorage.read(key: SecureStorageKeys.refreshToken.name);
  }

  Future<void> setAuthToken({required String token}) async {
    await _secureStorage.write(
      key: SecureStorageKeys.authToken.name,
      value: token,
    );
  }

  Future<void> setRefreshToken({required String token}) async {
    await _secureStorage.write(
      key: SecureStorageKeys.refreshToken.name,
      value: token,
    );
  }

  Future<void> deleteAuthToken() async {
    await _secureStorage.delete(key: SecureStorageKeys.authToken.name);
  }

  Future<void> deleteRefreshToken() async {
    await _secureStorage.delete(key: SecureStorageKeys.authToken.name);
  }
}

enum SecureStorageKeys {
  authToken,
  refreshToken,
}
