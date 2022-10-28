import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'character/bloc/character_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
    context.read<CharacterBloc>().add(const CharacterEvent.getCharacters());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: BlocBuilder<CharacterBloc, CharacterState>(
        buildWhen: ((previous, current) =>
            previous.characters != current.characters),
        builder: (context, state) {
          switch (state.status) {
            case CharacterStatus.initial:
            case CharacterStatus.loading:
              return const Center(child: CircularProgressIndicator());
            case CharacterStatus.error:
              return const Center(child: Text('Error'));
            case CharacterStatus.loaded:
              return ListView.builder(
                physics: const ClampingScrollPhysics(),
                controller: _scrollController,
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

  void _onScroll() {
    if (_isBottom) {
      context.read<CharacterBloc>().add(const CharacterEvent.getCharacters());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
