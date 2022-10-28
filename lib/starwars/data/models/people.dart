import 'package:freezed_annotation/freezed_annotation.dart';

import 'character.dart';

part 'people.freezed.dart';
part 'people.g.dart';

@freezed
class PeopleResponse with _$PeopleResponse {
  const factory PeopleResponse({
    int? count,
    String? next,
    String? previous,
    List<CharacterResponse>? results,
  }) = _PeopleResponse;

  factory PeopleResponse.fromJson(Map<String, dynamic> json) =>
      _$PeopleResponseFromJson(json);
}
