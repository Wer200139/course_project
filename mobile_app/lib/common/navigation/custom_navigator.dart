import 'package:clokwise/common/router/go_router_settings.dart';
import 'package:flutter/material.dart';

typedef NavigateMethod = void Function(
    String name, {
    Map<String, String> params,
    Map<String, String> queryParams,
    Object? extra,
    });

/// Модуль для работы с навигацией
/// Создан, чтобы убрать зависимость кода в проекте от конкретной библиотеки для навигации
class CustomNavigator {
  static final _router = GoRouterSettings.router;

  static Future<T?> showModal<T extends Object?>({
    required BuildContext context,
    required Widget child,
  }) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => child,
        fullscreenDialog: true,
      ),
    );
  }

  static void goNamed(
      String name, {
        Map<String, String> params = const {},
        Map<String, String> queryParams = const {},
        Object? extra,
      }) {
    _router.goNamed(
      name,
      pathParameters: params,
      queryParameters: queryParams,
      extra: extra,
    );
  }

  static Future<T?> pushNamed<T extends Object?>(
      String name, {
        Map<String, String> params = const {},
        Map<String, String> queryParams = const {},
        Object? extra,
      }) {
    return _router.pushNamed(
      name,
      pathParameters: params,
      queryParameters: queryParams,
      extra: extra,
    );
  }

  static void pop<T extends Object?>({
    T? result,
  }) {
    _router.pop(result);
  }

  /// Для закрытия множества модалок
  /// Для работы с именованными роутами необходимо указывать имя непосредственно в page builder
  /// https://github.com/flutter/flutter/issues/16602
  static void popUntil({
    required BuildContext context,
    required RoutePredicate predicate,
  }) {
    Navigator.of(context).popUntil(predicate);
  }

  /// Необходим для использования в совокупности с willPopScope, обычный pop не перехватывается
  /// https://github.com/flutter/flutter/issues/31054
  static void maybePop({required BuildContext context}) {
    Navigator.maybePop(context);
  }
}
