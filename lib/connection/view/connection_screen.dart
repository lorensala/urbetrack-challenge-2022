import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/connection_cubit.dart';
import '../../helpers/helpers.dart';

import '../../widgets/widgets.dart';

class ConnectionScreen extends StatelessWidget {
  const ConnectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: kAppPadding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const _ConnectionStatusText(),
            BlocBuilder<ConnectionCubit, bool>(
              builder: (context, conn) {
                return Satellite(isConnected: conn);
              },
            ),
            const _ConnectionMessage(),
            const _ConnectionButton()
          ],
        ),
      ),
    );
  }
}

class _ConnectionStatusText extends StatelessWidget {
  const _ConnectionStatusText();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectionCubit, bool>(
      builder: (context, conn) {
        return Text.rich(
          TextSpan(
            text: 'Status: ',
            style: Theme.of(context).textTheme.headlineMedium,
            children: [
              TextSpan(
                text: conn ? 'Connected' : 'Disconnected',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: conn
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.error,
                    ),
              ),
            ],
          ),
          style: Theme.of(context).textTheme.headlineLarge,
        );
      },
    );
  }
}

class _ConnectionMessage extends StatelessWidget {
  const _ConnectionMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
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
        ],
      ),
    );
  }
}

class _ConnectionButton extends StatelessWidget {
  const _ConnectionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectionCubit, bool>(
      builder: (context, conn) {
        return Button(
          enabled: conn,
          label: conn ? 'Disconnect' : 'Connect',
          isLoading: false,
          onPressed: () =>
              context.read<ConnectionCubit>().changeConnectionStatus(),
        );
      },
    );
  }
}
