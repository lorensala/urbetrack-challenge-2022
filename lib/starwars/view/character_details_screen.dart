import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:urbetrack_challenge/helpers/helpers.dart';
import 'package:urbetrack_challenge/starwars/data/models/character.dart';

import '../../connection/cubit/connection_cubit.dart';
import '../../widgets/widgets.dart';
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

    return BlocConsumer<StarWarsBloc, StarWarsState>(
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
            return const YodaLoader();
          case StarWarsStatus.error:
            return const Center(child: Text('Something went wrong'));
          default:
            if (state.characterDetails == null) {
              return const SizedBox.shrink();
            }

            final character = state.characterDetails!;

            return SingleChildScrollView(
              child: Padding(
                padding: kPagePadding,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _DetailLabel(label: 'Name', value: character.name),
                    _DetailLabel(
                      label: 'Height',
                      value: character.height,
                      suffix: const Text('cm'),
                    ),
                    _DetailLabel(
                      label: 'Mass',
                      value: character.mass,
                      suffix: const Text('kg'),
                    ),
                    _DetailLabel(
                        label: 'Hair Color', value: character.hairColor),
                    _DetailLabel(
                        label: 'Homeworld',
                        value: character.planetDetails.name),
                    _DetailLabel(
                        label: 'Vehicules',
                        value:
                            '${character.vehicleDetails.map((vehicule) => vehicule.name)}'),
                    _DetailLabel(
                        label: 'Starships',
                        value:
                            '${character.starshipDetails.map((starship) => starship.name)}'),
                    const SizedBox(height: 16),
                    BlocBuilder<ConnectionCubit, bool>(
                      builder: (context, conn) {
                        return Column(
                          children: [
                            Button(
                              color: conn
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(context).colorScheme.secondary,
                              child: state.status ==
                                      StarWarsStatus.reportInProgress
                                  ? SizedBox(
                                      height: 24,
                                      width: 24,
                                      child: CircularProgressIndicator(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ),
                                    )
                                  : Text('Report sighting',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                            color: conn
                                                ? Theme.of(context)
                                                    .colorScheme
                                                    .onPrimary
                                                : Theme.of(context)
                                                    .colorScheme
                                                    .onSecondary,
                                          )),
                              onPressed: () {
                                final isConnected =
                                    context.read<ConnectionCubit>().state;
                                if (!isConnected) return;

                                context.read<StarWarsBloc>().add(
                                    StarWarsEvent.reportSighting(
                                        userId: state.characterDetails!.id,
                                        dateTime: DateTime.now(),
                                        characterName:
                                            state.characterDetails!.name));
                              },
                            ),
                            conn
                                ? const SizedBox.shrink()
                                : const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('You\'re not connected'),
                                  ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
        }
      },
    );
  }
}

class _DetailLabel extends StatelessWidget {
  const _DetailLabel({required this.label, required this.value, this.suffix});

  final String label;
  final String value;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 8),
          Container(
            padding: kPagePadding,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: kBorderRadius,
            ),
            child: Row(
              children: [
                Text(
                  value,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const Spacer(),
                suffix ?? const SizedBox.shrink(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
