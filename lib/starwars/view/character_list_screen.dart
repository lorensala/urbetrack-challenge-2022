import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:urbetrack_challenge/starwars/view/character_details_screen.dart';
import '../../helpers/helpers.dart';
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
            orElse: () => LayoutBuilder(builder: (context, contraints) {
                  return LayoutBuilder(builder: (context, constraints) {
                    if (constraints.maxWidth > 700) {
                      return _buildTabletScreen();
                    } else {
                      return _buildMobileScreen();
                    }
                  });
                }));
      },
    );
  }

  Widget _buildTabletScreen() {
    return Builder(builder: (context) {
      return Row(
        children: [
          const Expanded(
            child: CharactersList(),
          ),
          Expanded(
            child: BlocBuilder<StarWarsBloc, StarWarsState>(
              builder: (context, state) {
                return state.status.maybeWhen(loadingCharacter: () {
                  return const YodaLoader();
                }, orElse: () {
                  return state.selectedCharacter != null
                      ? CharacterDetailsScreen(
                          character: state.selectedCharacter!)
                      : const _IdleScreen();
                });
              },
            ),
          ),
        ],
      );
    });
  }

  Widget _buildMobileScreen() {
    return const CharactersList();
  }
}

class _IdleScreen extends HookWidget {
  const _IdleScreen();

  @override
  Widget build(BuildContext context) {
    final Map<String, String> phrase = useMemoized(() {
      return getRandomPhrase();
    }, []);

    return Padding(
      padding: kAppPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Select a character to see more details',
              style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 25),
          Text('"${phrase['phrase']!}"',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(fontStyle: FontStyle.italic)),
          const SizedBox(height: 8),
          Text(
            '- ${phrase['author']!}',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 8),
          Text(phrase['movie']!),
        ],
      ),
    );
  }
}
