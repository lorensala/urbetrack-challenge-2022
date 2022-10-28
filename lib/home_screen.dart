import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:urbetrack_challenge/connection/cubit/connection_cubit.dart';
import 'package:urbetrack_challenge/router/app_router.dart';
import 'package:urbetrack_challenge/starwars/bloc/starwars_bloc.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = useScrollController();

    useEffect(() {
      scrollController.addListener(() {
        if (_isBottom(scrollController)) {
          context.read<StarWarsBloc>().add(const StarWarsEvent.getPeople());
        }
      });

      context.read<StarWarsBloc>().add(const StarWarsEvent.getPeople());
      return null;
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.wifi),
            onPressed: () {
              context.read<ConnectionCubit>().changeConnectionStatus();
            },
          ),
        ],
        leading: BlocBuilder<ConnectionCubit, bool>(
            builder: (context, state) => Text('$state')),
      ),
      body: BlocBuilder<StarWarsBloc, StarWarsState>(
        buildWhen: ((previous, current) =>
            previous.characters != current.characters),
        builder: (context, state) {
          switch (state.status) {
            case StarWarsStatus.loading:
              return const Center(child: CircularProgressIndicator.adaptive());
            case StarWarsStatus.error:
              return const Center(child: Text('Error'));
            case StarWarsStatus.reported:
            default:
              return ListView.builder(
                physics: const ClampingScrollPhysics(),
                controller: scrollController,
                itemCount: state.hasReachedMax
                    ? state.characters.length
                    : state.characters.length + 1,
                itemBuilder: (context, index) {
                  return index >= state.characters.length
                      ? const Center(
                          child: SizedBox(
                              height: 24,
                              width: 24,
                              child: CircularProgressIndicator()),
                        )
                      : ListTile(
                          onTap: () => context.router.push(
                              CharacterDetailsRoute(
                                  characterResponse: state.characters[index])),
                          title: Text(state.characters[index].name),
                          subtitle: Text(state.characters[index].gender),
                        );
                },
              );
          }
        },
      ),
    );
  }

  bool _isBottom(ScrollController scrollController) {
    if (!scrollController.hasClients) return false;
    final maxScroll = scrollController.position.maxScrollExtent;
    final currentScroll = scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
