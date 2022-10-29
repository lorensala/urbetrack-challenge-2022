import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import 'dart:math' as math;

import '../helpers/asset_provider.dart';

class YodaLoader extends HookWidget {
  const YodaLoader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var text = useState('Loading');

    useEffect(() {
      final timer = Timer.periodic(const Duration(milliseconds: 200), (timer) {
        if (text.value.length == 10) {
          text.value = 'Loading';
        } else {
          text.value += '.';
        }
      });

      return () => timer.cancel();
    }, []);

    return Center(
        child: Column(
      children: [
        const Yoda(),
        Text(text.value, style: Theme.of(context).textTheme.headlineLarge)
      ],
    ));
  }
}

class Yoda extends HookWidget {
  const Yoda({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =
        useAnimationController(duration: const Duration(milliseconds: 3000));
    final angle = useMemoized(() => math.Random().nextDouble() * 2 * math.pi);
    final asset = Theme.of(context).brightness == Brightness.dark
        ? AssetProvider.yodaDark
        : AssetProvider.yodaLight;

    useEffect(() {
      controller.repeat();
      return null;
    }, []);

    return SizedBox(
        height: 500,
        width: 500,
        child: Transform.rotate(
            angle: angle, child: Lottie.asset(asset, controller: controller)));
  }
}
