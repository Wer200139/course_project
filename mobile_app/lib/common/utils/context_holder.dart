import 'dart:async';
import 'package:flutter/material.dart';

class ContextHolder {
  static late BuildContext _context;
  static final _contextInitialized = Completer<void>();

  static void init(BuildContext context) {
    if (!_contextInitialized.isCompleted) {
      _context = context;
      _contextInitialized.complete();
    }
  }

  static Future<BuildContext> get context async {
    try {
      return await _contextInitialized.future.timeout(const Duration(seconds: 5)).then((_) => _context);
    } on TimeoutException {
      throw Exception('Контекст не был инициализирован в течение 5 секунд');
    }
  }
}