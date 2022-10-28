import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import '../helpers/asset_provider.dart';
import '../helpers/helpers.dart';
import '../starwars/data/models/character.dart';

import '../router/app_router.dart';
import '../starwars/bloc/starwars_bloc.dart';

class CharactersList extends HookWidget {
  const CharactersList({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<StarWarsBloc>(context);

    final ScrollController scrollController = useScrollController();

    useEffect(() {
      scrollController.addListener(() {
        if (_isBottom(scrollController)) {
          bloc.add(const StarWarsEvent.getPeople());
        }
      });

      bloc.add(const StarWarsEvent.getPeople());
      return null;
    }, []);

    return BlocBuilder<StarWarsBloc, StarWarsState>(
      builder: (context, state) {
        return ListView.separated(
          padding: kAppPadding,
          physics: const ClampingScrollPhysics(),
          controller: scrollController,
          itemCount: state.hasReachedMax
              ? state.characters.length
              : state.characters.length + 1,
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemBuilder: (context, index) {
            return index >= state.characters.length
                ? const Center(
                    child: SizedBox(
                        height: 24,
                        width: 24,
                        child: CircularProgressIndicator()),
                  )
                : ZoomIn(
                    duration: const Duration(milliseconds: 100),
                    child: CharacterListTile(state.characters[index]));
          },
        );
      },
    );
  }

  bool _isBottom(ScrollController scrollController) {
    if (!scrollController.hasClients) return false;
    final maxScroll = scrollController.position.maxScrollExtent;
    final currentScroll = scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}

class CharacterListTile extends StatelessWidget {
  const CharacterListTile(
    this.characterResponse, {
    Key? key,
  }) : super(key: key);

  final CharacterResponse characterResponse;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AutoRouter.of(context).push(
        CharacterDetailsRoute(characterResponse: characterResponse),
      ),
      child: Container(
        padding: kAppPadding,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text(
                    characterResponse.name,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                const SizedBox(height: 8),
                Text(capitalize(characterResponse.gender),
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary,
                        )),
              ],
            ),
            const Spacer(),
            SvgPicture.asset(
              AssetProvider.chevronRight,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
          ],
        ),
      ),
    );
  }
}
