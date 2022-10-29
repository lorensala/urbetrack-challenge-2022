import 'package:flutter/material.dart';

import 'helpers.dart';

extension StringExtension on List<String> {
  String toBulletList() {
    if (isEmpty) return '--';

    final listWithBullets = map((e) => '• $e').toList();
    return listWithBullets.join('\n');
  }
}

extension SnackbarExtension on BuildContext {
  void showSuccessSnackBar(String message,
      {Duration duration = const Duration(seconds: 3)}) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(buildSuccessSnackBar(this, message, duration));
  }

  void showErrorSnackBar(String message,
      {Duration duration = const Duration(seconds: 3)}) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(buildErrorSnackBar(this, message, duration));
  }
}
