// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'people_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PeopleDto _$PeopleDtoFromJson(Map<String, dynamic> json) {
  return _PeopleDto.fromJson(json);
}

/// @nodoc
mixin _$PeopleDto {
  int get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  List<CharacterDto> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeopleDtoCopyWith<PeopleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleDtoCopyWith<$Res> {
  factory $PeopleDtoCopyWith(PeopleDto value, $Res Function(PeopleDto) then) =
      _$PeopleDtoCopyWithImpl<$Res, PeopleDto>;
  @useResult
  $Res call({int count, String? next, List<CharacterDto> results});
}

/// @nodoc
class _$PeopleDtoCopyWithImpl<$Res, $Val extends PeopleDto>
    implements $PeopleDtoCopyWith<$Res> {
  _$PeopleDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CharacterDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PeopleDtoCopyWith<$Res> implements $PeopleDtoCopyWith<$Res> {
  factory _$$_PeopleDtoCopyWith(
          _$_PeopleDto value, $Res Function(_$_PeopleDto) then) =
      __$$_PeopleDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, String? next, List<CharacterDto> results});
}

/// @nodoc
class __$$_PeopleDtoCopyWithImpl<$Res>
    extends _$PeopleDtoCopyWithImpl<$Res, _$_PeopleDto>
    implements _$$_PeopleDtoCopyWith<$Res> {
  __$$_PeopleDtoCopyWithImpl(
      _$_PeopleDto _value, $Res Function(_$_PeopleDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = freezed,
    Object? results = null,
  }) {
    return _then(_$_PeopleDto(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CharacterDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PeopleDto extends _PeopleDto {
  const _$_PeopleDto(
      {required this.count,
      this.next,
      final List<CharacterDto> results = const []})
      : _results = results,
        super._();

  factory _$_PeopleDto.fromJson(Map<String, dynamic> json) =>
      _$$_PeopleDtoFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  final List<CharacterDto> _results;
  @override
  @JsonKey()
  List<CharacterDto> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'PeopleDto(count: $count, next: $next, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PeopleDto &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, next, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PeopleDtoCopyWith<_$_PeopleDto> get copyWith =>
      __$$_PeopleDtoCopyWithImpl<_$_PeopleDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PeopleDtoToJson(
      this,
    );
  }
}

abstract class _PeopleDto extends PeopleDto {
  const factory _PeopleDto(
      {required final int count,
      final String? next,
      final List<CharacterDto> results}) = _$_PeopleDto;
  const _PeopleDto._() : super._();

  factory _PeopleDto.fromJson(Map<String, dynamic> json) =
      _$_PeopleDto.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  List<CharacterDto> get results;
  @override
  @JsonKey(ignore: true)
  _$$_PeopleDtoCopyWith<_$_PeopleDto> get copyWith =>
      throw _privateConstructorUsedError;
}
