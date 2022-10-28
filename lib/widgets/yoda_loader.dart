import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';

import '../helpers/asset_provider.dart';

class YodaLoader extends HookWidget {
  const YodaLoader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final asset = Theme.of(context).brightness == Brightness.dark
        ? AssetProvider.yodaDark
        : AssetProvider.yodaLight;
    final controller =
        useAnimationController(duration: const Duration(milliseconds: 5000));
    var text = useState('Loading');

    useEffect(() {
      controller.repeat();
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
        SizedBox(
            height: 500,
            width: 500,
            child: Lottie.asset(asset, controller: controller)),
        Text(text.value, style: Theme.of(context).textTheme.headlineLarge)
      ],
    ));
  }
}
