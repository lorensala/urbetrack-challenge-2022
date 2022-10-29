import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../bloc/starwars_bloc.dart';

import '../../widgets/widgets.dart';

class CharactersListScreen extends HookWidget {
  const CharactersListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<StarWarsBloc>(context);
    useEffect(() {
      bloc.add(const StarWarsEvent.getPeople());
      return null;
    }, []);

    return BlocBuilder<StarWarsBloc, StarWarsState>(
      builder: (context, state) {
        return state.status.maybeWhen(
            error: (message) => Error(
                  message: message,
                  isLoading: state.status.isLoading,
                  onRetry: () => bloc.add(const StarWarsEvent.getPeople()),
                ),
            initial: () => const YodaLoader(),
            orElse: () => const CharactersList());
      },
    );
  }
}
