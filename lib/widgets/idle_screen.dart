import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../helpers/helpers.dart';

class IdleScreen extends HookWidget {
  const IdleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> phrase = useMemoized(() {
      return getRandomPhrase();
    }, []);

    return Padding(
      padding: kAppPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Select a character to see more details',
              style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 25),
          Text('"${phrase['phrase']!}"',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontStyle: FontStyle.italic)),
          const SizedBox(height: 8),
          Text(
            '- ${phrase['author']!}',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 8),
          Text(phrase['movie']!),
        ],
      ),
    );
  }
}
