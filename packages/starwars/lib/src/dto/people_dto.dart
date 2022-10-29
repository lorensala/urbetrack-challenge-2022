import 'package:freezed_annotation/freezed_annotation.dart';

import '../helpers/helpers.dart';
import '../models/people.dart';
import 'character_dto.dart';

part 'people_dto.freezed.dart';
part 'people_dto.g.dart';

@freezed
class PeopleDto with _$PeopleDto {
  const PeopleDto._();

  const factory PeopleDto({
    required int count,
    String? next,
    @Default([]) List<CharacterDto> results,
  }) = _PeopleDto;

  People toDomain() {
    return People(
        count: count,
        nextPage: getPageFromQueryParams(next ?? ''),
        results: results.map((x) => x.toDomain()).toList());
  }

  factory PeopleDto.fromJson(Map<String, dynamic> json) =>
      _$PeopleDtoFromJson(json);
}
