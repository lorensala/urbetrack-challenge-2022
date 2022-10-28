// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'starwars_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StarWarsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPeople,
    required TResult Function(CharacterResponse characterResponse) getCharacter,
    required TResult Function(
            int userId, DateTime dateTime, String characterName)
        reportSighting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPeople,
    TResult? Function(CharacterResponse characterResponse)? getCharacter,
    TResult? Function(int userId, DateTime dateTime, String characterName)?
        reportSighting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPeople,
    TResult Function(CharacterResponse characterResponse)? getCharacter,
    TResult Function(int userId, DateTime dateTime, String characterName)?
        reportSighting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPeople value) getPeople,
    required TResult Function(_GetCharacter value) getCharacter,
    required TResult Function(_ReportSighting value) reportSighting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPeople value)? getPeople,
    TResult? Function(_GetCharacter value)? getCharacter,
    TResult? Function(_ReportSighting value)? reportSighting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPeople value)? getPeople,
    TResult Function(_GetCharacter value)? getCharacter,
    TResult Function(_ReportSighting value)? reportSighting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarWarsEventCopyWith<$Res> {
  factory $StarWarsEventCopyWith(
          StarWarsEvent value, $Res Function(StarWarsEvent) then) =
      _$StarWarsEventCopyWithImpl<$Res, StarWarsEvent>;
}

/// @nodoc
class _$StarWarsEventCopyWithImpl<$Res, $Val extends StarWarsEvent>
    implements $StarWarsEventCopyWith<$Res> {
  _$StarWarsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetPeopleCopyWith<$Res> {
  factory _$$_GetPeopleCopyWith(
          _$_GetPeople value, $Res Function(_$_GetPeople) then) =
      __$$_GetPeopleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetPeopleCopyWithImpl<$Res>
    extends _$StarWarsEventCopyWithImpl<$Res, _$_GetPeople>
    implements _$$_GetPeopleCopyWith<$Res> {
  __$$_GetPeopleCopyWithImpl(
      _$_GetPeople _value, $Res Function(_$_GetPeople) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetPeople implements _GetPeople {
  const _$_GetPeople();

  @override
  String toString() {
    return 'StarWarsEvent.getPeople()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetPeople);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPeople,
    required TResult Function(CharacterResponse characterResponse) getCharacter,
    required TResult Function(
            int userId, DateTime dateTime, String characterName)
        reportSighting,
  }) {
    return getPeople();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPeople,
    TResult? Function(CharacterResponse characterResponse)? getCharacter,
    TResult? Function(int userId, DateTime dateTime, String characterName)?
        reportSighting,
  }) {
    return getPeople?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPeople,
    TResult Function(CharacterResponse characterResponse)? getCharacter,
    TResult Function(int userId, DateTime dateTime, String characterName)?
        reportSighting,
    required TResult orElse(),
  }) {
    if (getPeople != null) {
      return getPeople();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPeople value) getPeople,
    required TResult Function(_GetCharacter value) getCharacter,
    required TResult Function(_ReportSighting value) reportSighting,
  }) {
    return getPeople(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPeople value)? getPeople,
    TResult? Function(_GetCharacter value)? getCharacter,
    TResult? Function(_ReportSighting value)? reportSighting,
  }) {
    return getPeople?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPeople value)? getPeople,
    TResult Function(_GetCharacter value)? getCharacter,
    TResult Function(_ReportSighting value)? reportSighting,
    required TResult orElse(),
  }) {
    if (getPeople != null) {
      return getPeople(this);
    }
    return orElse();
  }
}

abstract class _GetPeople implements StarWarsEvent {
  const factory _GetPeople() = _$_GetPeople;
}

/// @nodoc
abstract class _$$_GetCharacterCopyWith<$Res> {
  factory _$$_GetCharacterCopyWith(
          _$_GetCharacter value, $Res Function(_$_GetCharacter) then) =
      __$$_GetCharacterCopyWithImpl<$Res>;
  @useResult
  $Res call({CharacterResponse characterResponse});

  $CharacterResponseCopyWith<$Res> get characterResponse;
}

/// @nodoc
class __$$_GetCharacterCopyWithImpl<$Res>
    extends _$StarWarsEventCopyWithImpl<$Res, _$_GetCharacter>
    implements _$$_GetCharacterCopyWith<$Res> {
  __$$_GetCharacterCopyWithImpl(
      _$_GetCharacter _value, $Res Function(_$_GetCharacter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterResponse = null,
  }) {
    return _then(_$_GetCharacter(
      characterResponse: null == characterResponse
          ? _value.characterResponse
          : characterResponse // ignore: cast_nullable_to_non_nullable
              as CharacterResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterResponseCopyWith<$Res> get characterResponse {
    return $CharacterResponseCopyWith<$Res>(_value.characterResponse, (value) {
      return _then(_value.copyWith(characterResponse: value));
    });
  }
}

/// @nodoc

class _$_GetCharacter implements _GetCharacter {
  const _$_GetCharacter({required this.characterResponse});

  @override
  final CharacterResponse characterResponse;

  @override
  String toString() {
    return 'StarWarsEvent.getCharacter(characterResponse: $characterResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCharacter &&
            (identical(other.characterResponse, characterResponse) ||
                other.characterResponse == characterResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, characterResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCharacterCopyWith<_$_GetCharacter> get copyWith =>
      __$$_GetCharacterCopyWithImpl<_$_GetCharacter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPeople,
    required TResult Function(CharacterResponse characterResponse) getCharacter,
    required TResult Function(
            int userId, DateTime dateTime, String characterName)
        reportSighting,
  }) {
    return getCharacter(characterResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPeople,
    TResult? Function(CharacterResponse characterResponse)? getCharacter,
    TResult? Function(int userId, DateTime dateTime, String characterName)?
        reportSighting,
  }) {
    return getCharacter?.call(characterResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPeople,
    TResult Function(CharacterResponse characterResponse)? getCharacter,
    TResult Function(int userId, DateTime dateTime, String characterName)?
        reportSighting,
    required TResult orElse(),
  }) {
    if (getCharacter != null) {
      return getCharacter(characterResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPeople value) getPeople,
    required TResult Function(_GetCharacter value) getCharacter,
    required TResult Function(_ReportSighting value) reportSighting,
  }) {
    return getCharacter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPeople value)? getPeople,
    TResult? Function(_GetCharacter value)? getCharacter,
    TResult? Function(_ReportSighting value)? reportSighting,
  }) {
    return getCharacter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPeople value)? getPeople,
    TResult Function(_GetCharacter value)? getCharacter,
    TResult Function(_ReportSighting value)? reportSighting,
    required TResult orElse(),
  }) {
    if (getCharacter != null) {
      return getCharacter(this);
    }
    return orElse();
  }
}

abstract class _GetCharacter implements StarWarsEvent {
  const factory _GetCharacter(
      {required final CharacterResponse characterResponse}) = _$_GetCharacter;

  CharacterResponse get characterResponse;
  @JsonKey(ignore: true)
  _$$_GetCharacterCopyWith<_$_GetCharacter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReportSightingCopyWith<$Res> {
  factory _$$_ReportSightingCopyWith(
          _$_ReportSighting value, $Res Function(_$_ReportSighting) then) =
      __$$_ReportSightingCopyWithImpl<$Res>;
  @useResult
  $Res call({int userId, DateTime dateTime, String characterName});
}

/// @nodoc
class __$$_ReportSightingCopyWithImpl<$Res>
    extends _$StarWarsEventCopyWithImpl<$Res, _$_ReportSighting>
    implements _$$_ReportSightingCopyWith<$Res> {
  __$$_ReportSightingCopyWithImpl(
      _$_ReportSighting _value, $Res Function(_$_ReportSighting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? dateTime = null,
    Object? characterName = null,
  }) {
    return _then(_$_ReportSighting(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      characterName: null == characterName
          ? _value.characterName
          : characterName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReportSighting implements _ReportSighting {
  const _$_ReportSighting(
      {required this.userId,
      required this.dateTime,
      required this.characterName});

  @override
  final int userId;
  @override
  final DateTime dateTime;
  @override
  final String characterName;

  @override
  String toString() {
    return 'StarWarsEvent.reportSighting(userId: $userId, dateTime: $dateTime, characterName: $characterName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReportSighting &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.characterName, characterName) ||
                other.characterName == characterName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, dateTime, characterName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReportSightingCopyWith<_$_ReportSighting> get copyWith =>
      __$$_ReportSightingCopyWithImpl<_$_ReportSighting>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPeople,
    required TResult Function(CharacterResponse characterResponse) getCharacter,
    required TResult Function(
            int userId, DateTime dateTime, String characterName)
        reportSighting,
  }) {
    return reportSighting(userId, dateTime, characterName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPeople,
    TResult? Function(CharacterResponse characterResponse)? getCharacter,
    TResult? Function(int userId, DateTime dateTime, String characterName)?
        reportSighting,
  }) {
    return reportSighting?.call(userId, dateTime, characterName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPeople,
    TResult Function(CharacterResponse characterResponse)? getCharacter,
    TResult Function(int userId, DateTime dateTime, String characterName)?
        reportSighting,
    required TResult orElse(),
  }) {
    if (reportSighting != null) {
      return reportSighting(userId, dateTime, characterName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPeople value) getPeople,
    required TResult Function(_GetCharacter value) getCharacter,
    required TResult Function(_ReportSighting value) reportSighting,
  }) {
    return reportSighting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPeople value)? getPeople,
    TResult? Function(_GetCharacter value)? getCharacter,
    TResult? Function(_ReportSighting value)? reportSighting,
  }) {
    return reportSighting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPeople value)? getPeople,
    TResult Function(_GetCharacter value)? getCharacter,
    TResult Function(_ReportSighting value)? reportSighting,
    required TResult orElse(),
  }) {
    if (reportSighting != null) {
      return reportSighting(this);
    }
    return orElse();
  }
}

abstract class _ReportSighting implements StarWarsEvent {
  const factory _ReportSighting(
      {required final int userId,
      required final DateTime dateTime,
      required final String characterName}) = _$_ReportSighting;

  int get userId;
  DateTime get dateTime;
  String get characterName;
  @JsonKey(ignore: true)
  _$$_ReportSightingCopyWith<_$_ReportSighting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StarWarsState {
  List<CharacterResponse> get characters => throw _privateConstructorUsedError;
  CharacterDetails? get characterDetails => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  StarWarsStatus get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StarWarsStateCopyWith<StarWarsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarWarsStateCopyWith<$Res> {
  factory $StarWarsStateCopyWith(
          StarWarsState value, $Res Function(StarWarsState) then) =
      _$StarWarsStateCopyWithImpl<$Res, StarWarsState>;
  @useResult
  $Res call(
      {List<CharacterResponse> characters,
      CharacterDetails? characterDetails,
      String? next,
      int count,
      StarWarsStatus status,
      String? message,
      bool hasReachedMax});
}

/// @nodoc
class _$StarWarsStateCopyWithImpl<$Res, $Val extends StarWarsState>
    implements $StarWarsStateCopyWith<$Res> {
  _$StarWarsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? characterDetails = freezed,
    Object? next = freezed,
    Object? count = null,
    Object? status = null,
    Object? message = freezed,
    Object? hasReachedMax = null,
  }) {
    return _then(_value.copyWith(
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterResponse>,
      characterDetails: freezed == characterDetails
          ? _value.characterDetails
          : characterDetails // ignore: cast_nullable_to_non_nullable
              as CharacterDetails?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StarWarsStatus,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StarwarsStateCopyWith<$Res>
    implements $StarWarsStateCopyWith<$Res> {
  factory _$$_StarwarsStateCopyWith(
          _$_StarwarsState value, $Res Function(_$_StarwarsState) then) =
      __$$_StarwarsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CharacterResponse> characters,
      CharacterDetails? characterDetails,
      String? next,
      int count,
      StarWarsStatus status,
      String? message,
      bool hasReachedMax});
}

/// @nodoc
class __$$_StarwarsStateCopyWithImpl<$Res>
    extends _$StarWarsStateCopyWithImpl<$Res, _$_StarwarsState>
    implements _$$_StarwarsStateCopyWith<$Res> {
  __$$_StarwarsStateCopyWithImpl(
      _$_StarwarsState _value, $Res Function(_$_StarwarsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? characterDetails = freezed,
    Object? next = freezed,
    Object? count = null,
    Object? status = null,
    Object? message = freezed,
    Object? hasReachedMax = null,
  }) {
    return _then(_$_StarwarsState(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterResponse>,
      characterDetails: freezed == characterDetails
          ? _value.characterDetails
          : characterDetails // ignore: cast_nullable_to_non_nullable
              as CharacterDetails?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StarWarsStatus,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_StarwarsState implements _StarwarsState {
  const _$_StarwarsState(
      {final List<CharacterResponse> characters = const [],
      this.characterDetails,
      this.next = '$kBaseUrl/people',
      this.count = 0,
      this.status = StarWarsStatus.initial,
      this.message,
      this.hasReachedMax = false})
      : _characters = characters;

  final List<CharacterResponse> _characters;
  @override
  @JsonKey()
  List<CharacterResponse> get characters {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  final CharacterDetails? characterDetails;
  @override
  @JsonKey()
  final String? next;
  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final StarWarsStatus status;
  @override
  final String? message;
  @override
  @JsonKey()
  final bool hasReachedMax;

  @override
  String toString() {
    return 'StarWarsState(characters: $characters, characterDetails: $characterDetails, next: $next, count: $count, status: $status, message: $message, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StarwarsState &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.characterDetails, characterDetails) ||
                other.characterDetails == characterDetails) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_characters),
      characterDetails,
      next,
      count,
      status,
      message,
      hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StarwarsStateCopyWith<_$_StarwarsState> get copyWith =>
      __$$_StarwarsStateCopyWithImpl<_$_StarwarsState>(this, _$identity);
}

abstract class _StarwarsState implements StarWarsState {
  const factory _StarwarsState(
      {final List<CharacterResponse> characters,
      final CharacterDetails? characterDetails,
      final String? next,
      final int count,
      final StarWarsStatus status,
      final String? message,
      final bool hasReachedMax}) = _$_StarwarsState;

  @override
  List<CharacterResponse> get characters;
  @override
  CharacterDetails? get characterDetails;
  @override
  String? get next;
  @override
  int get count;
  @override
  StarWarsStatus get status;
  @override
  String? get message;
  @override
  bool get hasReachedMax;
  @override
  @JsonKey(ignore: true)
  _$$_StarwarsStateCopyWith<_$_StarwarsState> get copyWith =>
      throw _privateConstructorUsedError;
}
