import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urbetrack_challenge/character/data/character_repository.dart';
import 'package:urbetrack_challenge/home_screen.dart';

import 'bloc_observer.dart';
import 'character/bloc/character_bloc.dart';
import 'character/data/character_api.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  final dio = Dio();

  final characterApi = CharacterApi(dio);
  final characterRepository = CharacterRepository(characterApi);
  // final characterService = CharacterService(characterRepository);

  final characterBloc = CharacterBloc(characterRepository);

  runApp(MultiRepositoryProvider(
    providers: [
      RepositoryProvider.value(value: characterRepository),
    ],
    child: MultiBlocProvider(
      providers: [
        BlocProvider.value(value: characterBloc),
      ],
      child: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: HomeScreen(),
    );
  }
}
