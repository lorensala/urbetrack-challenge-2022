import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
        builder: ((context, child, animation) {
          return SafeArea(
            child: child,
          );
        }),
        bottomNavigationBuilder: (context, tabsRouter) => _BottomNavigationBar(
            tabsRouter.activeIndex, tabsRouter.setActiveIndex),
        routes: const [
          CharacterRouter(),
          ConnectionRouter(),
        ]);
  }
}

class _BottomNavigationBar extends HookWidget {
  const _BottomNavigationBar(
    this.activeIndex,
    this.onTap, {
    Key? key,
  }) : super(key: key);

  final int activeIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: activeIndex,
        items: [
          BottomNavigationBarItem(
              icon: _BottomNavBarIcon(
                asset: AssetProvider.characters,
                selected: activeIndex == 0,
              ),
              label: 'Characters'),
          BottomNavigationBarItem(
              icon: _BottomNavBarIcon(
                asset: AssetProvider.connection,
                selected: activeIndex == 1,
              ),
              label: 'Connection'),
        ],
        onTap: onTap);
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
