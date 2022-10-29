import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../helpers/helpers.dart';

class DetailContainer extends StatelessWidget {
  const DetailContainer(
      {super.key, required this.label, required this.value, this.suffix});

  final String label;
  final String value;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return ZoomIn(
      duration: const Duration(milliseconds: 100),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Container(
              padding: kAppPadding,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: kBorderRadius,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      value,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  if (suffix != null) const Spacer(),
                  suffix ?? const SizedBox.shrink(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
