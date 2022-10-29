import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/starwars_bloc.dart';

import '../../widgets/widgets.dart';

class CharactersListScreen extends StatelessWidget {
  const CharactersListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StarWarsBloc, StarWarsState>(
      buildWhen: ((previous, current) =>
          previous.characters != current.characters),
      builder: (context, state) {
        return state.status.maybeWhen(
            error: (message) => _Error(message: message),
            loading: () => const YodaLoader(),
            orElse: () => const CharactersList());
      },
    );
  }
}

class _Error extends StatelessWidget {
  const _Error({
    Key? key,
    this.message,
  }) : super(key: key);

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(message ?? 'Error loading characters'));
  }
}
