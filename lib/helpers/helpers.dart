import 'package:flutter/material.dart';
import 'package:urbetrack_challenge/widgets/widgets.dart';

const kAssetsSvgPath = 'assets/svg';
const kAssetsLottiePath = 'assets/lottie';

const kConnectionKey = '__connection__';
const kIsDarkKey = '__isDark__';

const kAppPadding = EdgeInsets.all(16);
const kBorderRadius = BorderRadius.all(Radius.circular(8));

class Failure {
  final String message;

  Failure([this.message = 'Something went wrong']);
}

String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

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

SnackBar buildSuccessSnackBar(
    BuildContext context, String message, Duration duration) {
  return SnackBar(
    duration: duration,
    backgroundColor: Theme.of(context).colorScheme.onBackground,
    content: Row(
      children: [
        SnackBarTimer(duration, Theme.of(context).colorScheme.background,
            Theme.of(context).colorScheme.onBackground),
        const SizedBox(width: 16),
        Text(message,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                )),
      ],
    ),
  );
}

SnackBar buildErrorSnackBar(
    BuildContext context, String message, Duration duration) {
  return SnackBar(
    duration: duration,
    backgroundColor: Theme.of(context).colorScheme.error,
    content: Row(
      children: [
        SnackBarTimer(duration, Theme.of(context).colorScheme.background,
            Theme.of(context).colorScheme.onBackground),
        const SizedBox(width: 16),
        Text(message,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                )),
      ],
    ),
  );
}
