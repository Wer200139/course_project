import 'package:get/get.dart';

class CustomInjector {
  static T put<T>(
    T dependency, {
    String? tag,
  }) =>
      Get.put(dependency, tag: tag);

  static T find<T>({String? tag}) => Get.find<T>(tag: tag);

  static void lazyPut<T>(
    T dependency, {
    String? tag,
  }) =>
      Get.lazyPut(() => dependency, tag: tag);

  static void delete<T>() => Get.delete<T>();

  static void reloadAll({required bool force}) => Get.reloadAll(force: force);
}
