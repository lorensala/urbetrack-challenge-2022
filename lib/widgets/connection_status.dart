import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../connection/cubit/connection_cubit.dart';
import '../helpers/helpers.dart';

class ConnectionStatus extends StatelessWidget {
  const ConnectionStatus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectionCubit, bool>(
      builder: (context, connected) {
        return Padding(
          padding: kAppPadding,
          child: CircleAvatar(
            radius: 10,
            backgroundColor: connected
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.error,
          ),
        );
      },
    );
  }
}
