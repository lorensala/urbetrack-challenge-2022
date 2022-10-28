import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urbetrack_challenge/starwars/bloc/starwars_bloc.dart';

import '../../widgets/widgets.dart';

class CharactersListScreen extends StatelessWidget {
  const CharactersListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StarWarsBloc, StarWarsState>(
      buildWhen: ((previous, current) =>
          previous.characters != current.characters),
      builder: (context, state) {
        switch (state.status) {
          case StarWarsStatus.loading:
            return const YodaLoader();
          case StarWarsStatus.error:
            return _Error(message: state.message);
          case StarWarsStatus.reported:
          default:
            return const CharactersList();
        }
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
