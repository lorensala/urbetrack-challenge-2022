import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:urbetrack_challenge/starwars/data/models/character.dart';

import '../../connection/cubit/connection_cubit.dart';
import '../bloc/starwars_bloc.dart';

class CharacterDetailsScreen extends HookWidget {
  const CharacterDetailsScreen({super.key, required this.characterResponse});

  final CharacterResponse characterResponse;

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context.read<StarWarsBloc>().add(
          StarWarsEvent.getCharacter(characterResponse: characterResponse));
      return null;
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: Text(characterResponse.name),
      ),
      body: BlocConsumer<StarWarsBloc, StarWarsState>(
        listener: (context, state) {
          if (state.status == StarWarsStatus.reportFailed) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Something went wrong'),
              ),
            );
          }
          if (state.status == StarWarsStatus.reported) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Reported'),
              ),
            );
          }
        },
        builder: (context, state) {
          switch (state.status) {
            case StarWarsStatus.loading:
              return const Center(child: CircularProgressIndicator());
            case StarWarsStatus.error:
              return const Center(child: Text('Something went wrong'));
            default:
              if (state.characterDetails == null) {
                return const SizedBox.shrink();
              }

              return Column(
                children: [
                  Text('Name: ${state.characterDetails!.name}'),
                  Text('Height: ${state.characterDetails!.height}'),
                  Text('Mass: ${state.characterDetails!.mass}'),
                  Text('Hair color: ${state.characterDetails!.hairColor}'),
                  Text('Vehicles: ${state.characterDetails!.vehicleDetails}'),
                  Text('Starships: ${state.characterDetails!.starshipDetails}'),
                  Text('Homeworld: ${state.characterDetails!.planetDetails}'),
                  ElevatedButton(
                      onPressed: () {
                        final isConnected =
                            context.read<ConnectionCubit>().state;
                        if (!isConnected) return;

                        context.read<StarWarsBloc>().add(
                            StarWarsEvent.reportSighting(
                                userId: state.characterDetails!.id,
                                dateTime: DateTime.now(),
                                characterName: state.characterDetails!.name));
                      },
                      child: state.status == StarWarsStatus.reportInProgress
                          ? const CircularProgressIndicator.adaptive()
                          : const Text('Report sighting'))
                ],
              );
          }
        },
      ),
    );
  }
}
