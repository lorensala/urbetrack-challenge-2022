import 'package:flutter/material.dart';

import '../helpers/helpers.dart';
import 'widgets.dart';

class Error extends StatelessWidget {
  const Error({
    Key? key,
    required this.message,
    required this.onRetry,
    required this.isLoading,
  }) : super(key: key);

  final String message;
  final VoidCallback onRetry;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kAppPadding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Ups! Something went wrong',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: Theme.of(context).colorScheme.error),
          ),
          Text(
            'Error: $message',
            style: Theme.of(context).textTheme.headlineSmall!,
            textAlign: TextAlign.center,
          ),
          Button(
              onPressed: onRetry,
              enabled: !isLoading,
              isLoading: isLoading,
              label: 'Try again')
        ],
      ),
    );
  }
}
