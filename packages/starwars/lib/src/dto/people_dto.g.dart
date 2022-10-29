// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PeopleDto _$$_PeopleDtoFromJson(Map<String, dynamic> json) => _$_PeopleDto(
      count: json['count'] as int,
      next: json['next'] as String?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => CharacterDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PeopleDtoToJson(_$_PeopleDto instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'results': instance.results,
    };
