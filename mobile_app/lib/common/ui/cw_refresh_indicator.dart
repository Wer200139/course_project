import 'package:clokwise/packages/ui_kit/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class CWRefreshIndicator extends StatefulWidget {
  static const spacing = 8.0;
  static const height = 48.0;

  static const idleText = 'Потяните, чтобы обновить';
  static const releaseText = idleText;
  static const refreshingText = '';
  static const completeText = '';
  static const failedText = 'Не удалось обновить данные';

  static const textStyle = TextStyle(color: CwColors.primary);

  final Widget child;
  @Deprecated(
    'перешли на систему, когда при pull-to-refresh крутится только маленький loader, чтобы не лишать юзера уже имеющегося контента',
  )
  final VoidCallback? onRefresh;
  final AsyncCallback? onRefreshAsync;

  /// Компонент необходим для того, чтобы добавить возможность pull to refresh и при этом отключить анимацию скролла на ios и android
  /// Анимация скролла вызывает баг интерфейса при котором верхний край списка смещается вместе с иконкой pull to refresh.
  const CWRefreshIndicator({
    required this.child,
    this.onRefresh,
    this.onRefreshAsync,
    super.key,
  });

  @override
  State<CWRefreshIndicator> createState() => _CWRefreshIndicatorState();
}

class _CWRefreshIndicatorState extends State<CWRefreshIndicator> {
  final refreshController = RefreshController();

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: _DisabledScrollBehavior(),
      child: SmartRefresher(
        header: const _SmartRefresherHeader(),
        controller: refreshController,
        onRefresh: () async {
          try {
            widget.onRefresh?.call();
            refreshController.refreshCompleted();
          } catch (e, _) {
            refreshController.refreshFailed();
          }
        },
        child: widget.child,
      ),
    );
  }
}

class _SmartRefresherHeader extends StatelessWidget {
  const _SmartRefresherHeader();

  @override
  Widget build(BuildContext context) {
    return const ClassicHeader(
      idleText: 'Потяните чтобы обновить',
      idleIcon: _IdleIcon(),
      releaseText: 'Потяните чтобы обновить',
      releaseIcon: _ReleaseIcon(),
      refreshingText: CWRefreshIndicator.refreshingText,
      failedText: 'Не удалость обновить',
      failedIcon: _FailedIcon(),
      completeText: CWRefreshIndicator.completeText,
      completeIcon: _CompleteIcon(),
      textStyle: CWRefreshIndicator.textStyle,
      height: CWRefreshIndicator.height,
      spacing: CWRefreshIndicator.spacing,
    );
  }
}

class _RefreshCacheIcon extends StatelessWidget {
  final IconData iconData;

  final _size = 24.0;

  const _RefreshCacheIcon({
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      color: CwColors.primary,
      size: _size,
    );
  }
}

class _IdleIcon extends StatelessWidget {
  const _IdleIcon();

  @override
  Widget build(BuildContext context) {
    return const _RefreshCacheIcon(
      iconData: Icons.arrow_downward_sharp,
    );
  }
}

class _ReleaseIcon extends StatelessWidget {
  const _ReleaseIcon();

  @override
  Widget build(BuildContext context) {
    return const _IdleIcon();
  }
}

class _FailedIcon extends StatelessWidget {
  const _FailedIcon();

  @override
  Widget build(BuildContext context) {
    return const _RefreshCacheIcon(
      iconData: Icons.warning_amber,
    );
  }
}

class _CompleteIcon extends StatelessWidget {
  const _CompleteIcon();

  @override
  Widget build(BuildContext context) {
    return const _RefreshCacheIcon(
      iconData: Icons.check,
    );
  }
}

class _DisabledScrollBehavior extends ScrollBehavior {

  Widget buildViewportChrome(BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
