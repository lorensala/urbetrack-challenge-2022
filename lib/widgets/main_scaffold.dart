import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../helpers/asset_provider.dart';

import '../router/app_router.dart';
import 'widgets.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
        appBarBuilder: (context, tabsRouter) => AppBar(
              leading: AutoLeadingButton(
                  color: Theme.of(context).colorScheme.onBackground),
              title: const Text('Star Wars Sightings'),
              actions: const [
                ConnectionStatus(),
                ThemeStatus(),
              ],
            ),
        bottomNavigationBuilder: (context, tabsRouter) => BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            items: [
              BottomNavigationBarItem(
                  icon: _BottomNavBarIcon(
                    asset: AssetProvider.characters,
                    selected: tabsRouter.activeIndex == 0,
                  ),
                  label: 'Characters'),
              BottomNavigationBarItem(
                  icon: _BottomNavBarIcon(
                    asset: AssetProvider.connection,
                    selected: tabsRouter.activeIndex == 1,
                  ),
                  label: 'Connection'),
            ],
            onTap: tabsRouter.setActiveIndex),
        routes: const [
          CharacterRouter(),
          ConnectionRouter(),
        ]);
  }
}

class _BottomNavBarIcon extends StatelessWidget {
  const _BottomNavBarIcon(
      {Key? key, required this.asset, required this.selected})
      : super(key: key);

  final String asset;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      asset,
      color: selected
          ? Theme.of(context).colorScheme.primary
          : Theme.of(context).colorScheme.onSecondary,
    );
  }
}
