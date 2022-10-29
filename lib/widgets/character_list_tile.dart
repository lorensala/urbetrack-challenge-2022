import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:starwars/starwars.dart';

import '../helpers/asset_provider.dart';
import '../helpers/helpers.dart';
import '../router/app_router.dart';
import '../starwars/bloc/starwars_bloc.dart';

class CharacterListTile extends StatelessWidget {
  const CharacterListTile(
    this.character, {
    Key? key,
  }) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (MediaQuery.of(context).size.width > 700) {
          context
              .read<StarWarsBloc>()
              .add(StarWarsEvent.getCharacter(id: character.id));
        } else {
          context.router.push(CharacterDetailsRoute(character: character));
        }
      },
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
                    character.name,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                const SizedBox(height: 8),
                Text(capitalize(character.gender),
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
