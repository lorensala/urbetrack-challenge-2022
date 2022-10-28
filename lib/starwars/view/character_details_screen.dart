import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:urbetrack_challenge/starwars/models/character_details.dart';
import '../../helpers/helpers.dart';
import '../data/models/character.dart';

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

    return ColoredBox(
      color: Theme.of(context).colorScheme.background,
      child: BlocConsumer<StarWarsBloc, StarWarsState>(
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
                  padding: kAppPadding,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _CharacterDetails(character: character),
                      const _ReportButton(),
                    ],
                  ),
                ),
              );
          }
        },
      ),
    );
  }
}

class _ReportButton extends StatelessWidget {
  const _ReportButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectionCubit, bool>(
      builder: (context, conn) {
        return Column(
          children: [
            BlocBuilder<StarWarsBloc, StarWarsState>(
              builder: (context, state) {
                return Button(
                  label: 'Report sighting',
                  isLoading: state.status == StarWarsStatus.reportInProgress,
                  onPressed: () {
                    final isConnected = context.read<ConnectionCubit>().state;
                    if (!isConnected) return;

                    context.read<StarWarsBloc>().add(
                        StarWarsEvent.reportSighting(
                            userId: state.characterDetails!.id,
                            dateTime: DateTime.now(),
                            characterName: state.characterDetails!.name));
                  },
                  enabled: conn,
                );
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
    );
  }
}

class _CharacterDetails extends StatelessWidget {
  const _CharacterDetails({
    Key? key,
    required this.character,
  }) : super(key: key);

  final CharacterDetails character;

  @override
  Widget build(BuildContext context) {
    return Column(
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
        _DetailLabel(label: 'Hair Color', value: character.hairColor),
        _DetailLabel(label: 'Homeworld', value: character.planetDetails.name),
        _DetailLabel(
            label: 'Vehicules',
            value:
                '${character.vehicleDetails.map((vehicule) => vehicule.name)}'),
        _DetailLabel(
            label: 'Starships',
            value:
                '${character.starshipDetails.map((starship) => starship.name)}'),
      ],
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
            padding: kAppPadding,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: kBorderRadius,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    value,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                if (suffix != null) const Spacer(),
                suffix ?? const SizedBox.shrink(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
