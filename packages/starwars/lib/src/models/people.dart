import 'package:freezed_annotation/freezed_annotation.dart';

import 'character.dart';

part 'people.freezed.dart';

@freezed
class People with _$People {
  const People._();

  const factory People({
    required int count,
    required int nextPage,
    @Default([]) List<Character> results,
  }) = _People;

  factory People.empty() => const People(count: -1, nextPage: -1);
}
