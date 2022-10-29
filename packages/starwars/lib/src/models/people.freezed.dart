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

/// @nodoc
mixin _$People {
  int get count => throw _privateConstructorUsedError;
  int get nextPage => throw _privateConstructorUsedError;
  List<Character> get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PeopleCopyWith<People> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleCopyWith<$Res> {
  factory $PeopleCopyWith(People value, $Res Function(People) then) =
      _$PeopleCopyWithImpl<$Res, People>;
  @useResult
  $Res call({int count, int nextPage, List<Character> results});
}

/// @nodoc
class _$PeopleCopyWithImpl<$Res, $Val extends People>
    implements $PeopleCopyWith<$Res> {
  _$PeopleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? nextPage = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PeopleCopyWith<$Res> implements $PeopleCopyWith<$Res> {
  factory _$$_PeopleCopyWith(_$_People value, $Res Function(_$_People) then) =
      __$$_PeopleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, int nextPage, List<Character> results});
}

/// @nodoc
class __$$_PeopleCopyWithImpl<$Res>
    extends _$PeopleCopyWithImpl<$Res, _$_People>
    implements _$$_PeopleCopyWith<$Res> {
  __$$_PeopleCopyWithImpl(_$_People _value, $Res Function(_$_People) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? nextPage = null,
    Object? results = null,
  }) {
    return _then(_$_People(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc

class _$_People extends _People {
  const _$_People(
      {required this.count,
      required this.nextPage,
      final List<Character> results = const []})
      : _results = results,
        super._();

  @override
  final int count;
  @override
  final int nextPage;
  final List<Character> _results;
  @override
  @JsonKey()
  List<Character> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'People(count: $count, nextPage: $nextPage, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_People &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count, nextPage,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PeopleCopyWith<_$_People> get copyWith =>
      __$$_PeopleCopyWithImpl<_$_People>(this, _$identity);
}

abstract class _People extends People {
  const factory _People(
      {required final int count,
      required final int nextPage,
      final List<Character> results}) = _$_People;
  const _People._() : super._();

  @override
  int get count;
  @override
  int get nextPage;
  @override
  List<Character> get results;
  @override
  @JsonKey(ignore: true)
  _$$_PeopleCopyWith<_$_People> get copyWith =>
      throw _privateConstructorUsedError;
}
