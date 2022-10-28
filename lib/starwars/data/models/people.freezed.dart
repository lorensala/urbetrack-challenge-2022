// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'people.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PeopleResponse _$PeopleResponseFromJson(Map<String, dynamic> json) {
  return _PeopleResponse.fromJson(json);
}

/// @nodoc
mixin _$PeopleResponse {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<CharacterResponse>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeopleResponseCopyWith<PeopleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleResponseCopyWith<$Res> {
  factory $PeopleResponseCopyWith(
          PeopleResponse value, $Res Function(PeopleResponse) then) =
      _$PeopleResponseCopyWithImpl<$Res, PeopleResponse>;
  @useResult
  $Res call(
      {int? count,
      String? next,
      String? previous,
      List<CharacterResponse>? results});
}

/// @nodoc
class _$PeopleResponseCopyWithImpl<$Res, $Val extends PeopleResponse>
    implements $PeopleResponseCopyWith<$Res> {
  _$PeopleResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CharacterResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PeopleResponseCopyWith<$Res>
    implements $PeopleResponseCopyWith<$Res> {
  factory _$$_PeopleResponseCopyWith(
          _$_PeopleResponse value, $Res Function(_$_PeopleResponse) then) =
      __$$_PeopleResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? count,
      String? next,
      String? previous,
      List<CharacterResponse>? results});
}

/// @nodoc
class __$$_PeopleResponseCopyWithImpl<$Res>
    extends _$PeopleResponseCopyWithImpl<$Res, _$_PeopleResponse>
    implements _$$_PeopleResponseCopyWith<$Res> {
  __$$_PeopleResponseCopyWithImpl(
      _$_PeopleResponse _value, $Res Function(_$_PeopleResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$_PeopleResponse(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CharacterResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PeopleResponse implements _PeopleResponse {
  const _$_PeopleResponse(
      {this.count,
      this.next,
      this.previous,
      final List<CharacterResponse>? results})
      : _results = results;

  factory _$_PeopleResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PeopleResponseFromJson(json);

  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<CharacterResponse>? _results;
  @override
  List<CharacterResponse>? get results {
    final value = _results;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PeopleResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PeopleResponse &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PeopleResponseCopyWith<_$_PeopleResponse> get copyWith =>
      __$$_PeopleResponseCopyWithImpl<_$_PeopleResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PeopleResponseToJson(
      this,
    );
  }
}

abstract class _PeopleResponse implements PeopleResponse {
  const factory _PeopleResponse(
      {final int? count,
      final String? next,
      final String? previous,
      final List<CharacterResponse>? results}) = _$_PeopleResponse;

  factory _PeopleResponse.fromJson(Map<String, dynamic> json) =
      _$_PeopleResponse.fromJson;

  @override
  int? get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<CharacterResponse>? get results;
  @override
  @JsonKey(ignore: true)
  _$$_PeopleResponseCopyWith<_$_PeopleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
