import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:urbetrack_challenge/connection/cubit/connection_cubit.dart';
import 'package:urbetrack_challenge/helpers/asset_provider.dart';
import 'package:urbetrack_challenge/helpers/helpers.dart';

import '../../widgets/widgets.dart';

class ConnectionScreen extends StatelessWidget {
  const ConnectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: kPagePadding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
                height: 200,
                width: 200,
                child: Lottie.asset(
                  Theme.of(context).brightness == Brightness.dark
                      ? AssetProvider.sateliteDark
                      : AssetProvider.sateliteLight,
                )),
            Text(
              'Warning!',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Theme.of(context).colorScheme.error),
            ),
            Text(
              'Don\'t allow your connection for too long, or else they will take over the world!',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
            BlocBuilder<ConnectionCubit, bool>(
              builder: (context, conn) {
                return Button(
                  color: conn
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.secondary,
                  child: Text(conn ? 'Disconnect' : 'Connect',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: conn
                              ? Theme.of(context).colorScheme.onPrimary
                              : Theme.of(context).colorScheme.onBackground)),
                  onPressed: () =>
                      context.read<ConnectionCubit>().changeConnectionStatus(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
