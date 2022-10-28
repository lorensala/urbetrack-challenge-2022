import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SnackBarTimer extends HookWidget {
  const SnackBarTimer(this.duration, this.backgroundColor, this.textColor,
      {super.key});

  final Duration duration;
  final Color backgroundColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    final timer = useState(duration);

    useEffect(() {
      final timerSubscription =
          Timer.periodic(const Duration(seconds: 1), (value) {
        timer.value -= const Duration(seconds: 1);
      });

      return timerSubscription.cancel;
    }, []);

    return SizedBox(
      height: 26,
      width: 26,
      child: Center(
        child: Stack(
          children: [
            SizedBox(
              height: 24,
              width: 24,
              child: CircleAvatar(
                backgroundColor: backgroundColor,
                child: Text(
                  timer.value.inSeconds.toString(),
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: textColor,
                      ),
                ),
              ),
            ),
            SizedBox(
              height: 24,
              width: 24,
              child: CircularProgressIndicator(
                color: backgroundColor,
                value: timer.value.inSeconds / duration.inSeconds,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
