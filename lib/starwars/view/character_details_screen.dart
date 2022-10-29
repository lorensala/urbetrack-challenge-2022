import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:starwars/starwars.dart';

import '../../helpers/helpers.dart';

import '../../connection/cubit/connection_cubit.dart';
import '../../widgets/widgets.dart';
import '../bloc/starwars_bloc.dart';

class CharacterDetailsScreen extends HookWidget {
  const CharacterDetailsScreen({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      context
          .read<StarWarsBloc>()
          .add(StarWarsEvent.getCharacter(id: character.id));

      return null;
    }, []);

    return ColoredBox(
      color: Theme.of(context).colorScheme.background,
      child: BlocConsumer<StarWarsBloc, StarWarsState>(
        listener: (context, state) {
          state.status.whenOrNull(
            reportSuccess: () =>
                context.showSuccessSnackBar('Reported successfully'),
            reportFailed: (message) => context.showErrorSnackBar(message),
          );
        },
        builder: (context, state) {
          return state.status.maybeWhen(
              loadingCharacter: () => const YodaLoader(),
              characterError: (message) =>
                  const Center(child: Text('Something went wrong')),
              orElse: () {
                if (state.selectedCharacter == null) {
                  return const SizedBox.shrink();
                }

                final character = state.selectedCharacter!;

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
              });
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
                  isLoading: state.status.isReportInProgress,
                  onPressed: () {
                    final isConnected = context.read<ConnectionCubit>().state;
                    if (!isConnected) return;
                    context.read<StarWarsBloc>().add(
                        StarWarsEvent.reportSighting(
                            userId: state.selectedCharacter!.id,
                            dateTime: DateTime.now(),
                            characterName: state.selectedCharacter!.name));
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

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DetailContainer(label: 'Name', value: character.name),
        DetailContainer(
          label: 'Height',
          value: character.height.toString(),
          suffix: const Text('cm'),
        ),
        DetailContainer(
          label: 'Mass',
          value: character.mass.toString(),
          suffix: const Text('kg'),
        ),
        DetailContainer(label: 'Hair Color', value: character.hairColor),
        DetailContainer(label: 'Homeworld', value: character.homeworld.name),
        DetailContainer(
            label: 'Vehicules',
            value: getStringFromList(
                character.vehicle.map((e) => e.name).toList())),
        DetailContainer(
            label: 'Starships',
            value: getStringFromList(
                character.starship.map((e) => e.name).toList()))
      ],
    );
  }
}
