// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'starship.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Starship {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get cargoCapacity => throw _privateConstructorUsedError;
  String get consumables => throw _privateConstructorUsedError;
  int get crew => throw _privateConstructorUsedError;
  double get length => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  int get passengers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StarshipCopyWith<Starship> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarshipCopyWith<$Res> {
  factory $StarshipCopyWith(Starship value, $Res Function(Starship) then) =
      _$StarshipCopyWithImpl<$Res, Starship>;
  @useResult
  $Res call(
      {int id,
      String name,
      int cargoCapacity,
      String consumables,
      int crew,
      double length,
      String model,
      int passengers});
}

/// @nodoc
class _$StarshipCopyWithImpl<$Res, $Val extends Starship>
    implements $StarshipCopyWith<$Res> {
  _$StarshipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cargoCapacity = null,
    Object? consumables = null,
    Object? crew = null,
    Object? length = null,
    Object? model = null,
    Object? passengers = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cargoCapacity: null == cargoCapacity
          ? _value.cargoCapacity
          : cargoCapacity // ignore: cast_nullable_to_non_nullable
              as int,
      consumables: null == consumables
          ? _value.consumables
          : consumables // ignore: cast_nullable_to_non_nullable
              as String,
      crew: null == crew
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as int,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      passengers: null == passengers
          ? _value.passengers
          : passengers // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StarshipCopyWith<$Res> implements $StarshipCopyWith<$Res> {
  factory _$$_StarshipCopyWith(
          _$_Starship value, $Res Function(_$_Starship) then) =
      __$$_StarshipCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int cargoCapacity,
      String consumables,
      int crew,
      double length,
      String model,
      int passengers});
}

/// @nodoc
class __$$_StarshipCopyWithImpl<$Res>
    extends _$StarshipCopyWithImpl<$Res, _$_Starship>
    implements _$$_StarshipCopyWith<$Res> {
  __$$_StarshipCopyWithImpl(
      _$_Starship _value, $Res Function(_$_Starship) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cargoCapacity = null,
    Object? consumables = null,
    Object? crew = null,
    Object? length = null,
    Object? model = null,
    Object? passengers = null,
  }) {
    return _then(_$_Starship(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cargoCapacity: null == cargoCapacity
          ? _value.cargoCapacity
          : cargoCapacity // ignore: cast_nullable_to_non_nullable
              as int,
      consumables: null == consumables
          ? _value.consumables
          : consumables // ignore: cast_nullable_to_non_nullable
              as String,
      crew: null == crew
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as int,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as double,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      passengers: null == passengers
          ? _value.passengers
          : passengers // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Starship implements _Starship {
  const _$_Starship(
      {required this.id,
      required this.name,
      required this.cargoCapacity,
      required this.consumables,
      required this.crew,
      required this.length,
      required this.model,
      required this.passengers});

  @override
  final int id;
  @override
  final String name;
  @override
  final int cargoCapacity;
  @override
  final String consumables;
  @override
  final int crew;
  @override
  final double length;
  @override
  final String model;
  @override
  final int passengers;

  @override
  String toString() {
    return 'Starship(id: $id, name: $name, cargoCapacity: $cargoCapacity, consumables: $consumables, crew: $crew, length: $length, model: $model, passengers: $passengers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Starship &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cargoCapacity, cargoCapacity) ||
                other.cargoCapacity == cargoCapacity) &&
            (identical(other.consumables, consumables) ||
                other.consumables == consumables) &&
            (identical(other.crew, crew) || other.crew == crew) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.passengers, passengers) ||
                other.passengers == passengers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, cargoCapacity,
      consumables, crew, length, model, passengers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StarshipCopyWith<_$_Starship> get copyWith =>
      __$$_StarshipCopyWithImpl<_$_Starship>(this, _$identity);
}

abstract class _Starship implements Starship {
  const factory _Starship(
      {required final int id,
      required final String name,
      required final int cargoCapacity,
      required final String consumables,
      required final int crew,
      required final double length,
      required final String model,
      required final int passengers}) = _$_Starship;

  @override
  int get id;
  @override
  String get name;
  @override
  int get cargoCapacity;
  @override
  String get consumables;
  @override
  int get crew;
  @override
  double get length;
  @override
  String get model;
  @override
  int get passengers;
  @override
  @JsonKey(ignore: true)
  _$$_StarshipCopyWith<_$_Starship> get copyWith =>
      throw _privateConstructorUsedError;
}
