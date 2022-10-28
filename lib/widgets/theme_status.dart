import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../helpers/asset_provider.dart';
import '../helpers/helpers.dart';
import '../theme/cubit/theme_cubit.dart';

class ThemeStatus extends StatelessWidget {
  const ThemeStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, bool>(
      builder: (context, state) {
        return GestureDetector(
            onTap: () => context.read<ThemeCubit>().toggleTheme(),
            child: Padding(
              padding: kPagePadding,
              child: SvgPicture.asset(
                state ? AssetProvider.sun : AssetProvider.moon,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ));
      },
    );
  }
}
