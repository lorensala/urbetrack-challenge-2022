import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';

import '../helpers/asset_provider.dart';

class Satellite extends HookWidget {
  const Satellite({
    required this.isConnected,
    Key? key,
  }) : super(key: key);

  final bool isConnected;

  @override
  Widget build(BuildContext context) {
    final asset = _getAsset(context);

    final controller = useAnimationController(
      duration: const Duration(seconds: 10),
    );

    useEffect(() {
      if (isConnected) {
        controller.repeat();
      } else {
        controller.stop();
      }
      return null;
    }, [isConnected]);

    return SizedBox(
      height: 220,
      width: 220,
      child: Center(
        child: AnimatedContainer(
            height: isConnected ? 220 : 200,
            width: isConnected ? 220 : 200,
            duration: const Duration(milliseconds: 200),
            child: Lottie.asset(asset, controller: controller)),
      ),
    );
  }

  _getAsset(BuildContext context) {
    if (isConnected) {
      return Theme.of(context).brightness == Brightness.dark
          ? AssetProvider.sateliteDark
          : AssetProvider.sateliteLight;
    } else {
      return AssetProvider.sateliteDisconnected;
    }
  }
}
