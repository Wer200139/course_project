import 'package:clokwise/common/data/network/clients/main_network_client.dart';
import 'package:clokwise/common/injectable/custom_injector.dart';
import 'package:clokwise/common/managers/notification_manager/notification_manager.dart';
import 'package:clokwise/common/managers/secure_storage_manager/secure_storage_manager.dart';
import 'package:clokwise/common/managers/shared_preferences_manager/shared_preferences_manager.dart';
import 'package:clokwise/features/snackbar/data/repositories/snack_bar_repository.dart';

class DependencyManager {
  static Future<void> initDependencies() async {
    final secureStorageManager = SecureStorageManager();

    CustomInjector.put(secureStorageManager);
    CustomInjector.put(
        MainNetworkClient(secureStorageManager: secureStorageManager));

    CustomInjector.put(SharedPreferencesManager());
    await CustomInjector.find<SharedPreferencesManager>().init();
    CustomInjector.put(NotificationManager());
    await CustomInjector.find<NotificationManager>().init();

    CustomInjector.put(SnackBarRepository());
  }
}
