import 'dart:async';

import 'package:clokwise/features/snackbar/data/repositories/models/snack_bar_model.dart';
import 'package:clokwise/packages/core/cw_disposable.dart';

class SnackBarRepository implements CwDisposable {
  final _snackBarStreamController = StreamController<SnackBarModel>.broadcast();
  Stream<SnackBarModel> get snackBarStream => _snackBarStreamController.stream;

  SnackBarRepository();

  @override
  FutureOr<void> dispose() async {
    await _snackBarStreamController.close();
  }

  void addPush({required String text}) {
    _snackBarStreamController.add(
      SnackBarModel(
        text: text,
        type: SnackBarTypeEnum.push,
      ),
    );
  }

  void addInfo({required String text}) {
    _snackBarStreamController.add(
      SnackBarModel(
        text: text,
        type: SnackBarTypeEnum.info,
      ),
    );
  }

  void addWarning({required String text}) {
    _snackBarStreamController.add(
      SnackBarModel(
        text: text,
        type: SnackBarTypeEnum.warning,
      ),
    );
  }

  void addSuccess({required String text}) {
    _snackBarStreamController.add(
      SnackBarModel(
        text: text,
        type: SnackBarTypeEnum.success,
      ),
    );
  }

  void addError({required String text}) {
    _snackBarStreamController.add(
      SnackBarModel(
        text: text,
        type: SnackBarTypeEnum.error,
      ),
    );
  }
}
