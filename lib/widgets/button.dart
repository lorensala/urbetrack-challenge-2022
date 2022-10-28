import 'package:flutter/material.dart';

import '../helpers/helpers.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.onPressed,
    required this.enabled,
    required this.isLoading,
    required this.label,
  }) : super(key: key);

  final String label;
  final VoidCallback onPressed;
  final bool enabled;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        margin: const EdgeInsets.symmetric(vertical: 16),
        padding: kAppPadding,
        decoration: BoxDecoration(
          color: enabled
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.secondary,
          borderRadius: kBorderRadius,
        ),
        duration: const Duration(milliseconds: 300),
        child: isLoading
            ? SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              )
            : Text(label,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: enabled
                        ? Theme.of(context).colorScheme.onPrimary
                        : Theme.of(context).colorScheme.onBackground)),
      ),
    );
  }
}
