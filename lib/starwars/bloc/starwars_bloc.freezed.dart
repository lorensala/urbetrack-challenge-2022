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
    required TResult Function(int page) getPeople,
    required TResult Function(int id) getCharacter,
    required TResult Function(
            int userId, DateTime dateTime, String characterName)
        reportSighting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? getPeople,
    TResult? Function(int id)? getCharacter,
    TResult? Function(int userId, DateTime dateTime, String characterName)?
        reportSighting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getPeople,
    TResult Function(int id)? getCharacter,
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
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$_GetPeopleCopyWithImpl<$Res>
    extends _$StarWarsEventCopyWithImpl<$Res, _$_GetPeople>
    implements _$$_GetPeopleCopyWith<$Res> {
  __$$_GetPeopleCopyWithImpl(
      _$_GetPeople _value, $Res Function(_$_GetPeople) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$_GetPeople(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetPeople implements _GetPeople {
  const _$_GetPeople({this.page = -1});

  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'StarWarsEvent.getPeople(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPeople &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPeopleCopyWith<_$_GetPeople> get copyWith =>
      __$$_GetPeopleCopyWithImpl<_$_GetPeople>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) getPeople,
    required TResult Function(int id) getCharacter,
    required TResult Function(
            int userId, DateTime dateTime, String characterName)
        reportSighting,
  }) {
    return getPeople(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? getPeople,
    TResult? Function(int id)? getCharacter,
    TResult? Function(int userId, DateTime dateTime, String characterName)?
        reportSighting,
  }) {
    return getPeople?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getPeople,
    TResult Function(int id)? getCharacter,
    TResult Function(int userId, DateTime dateTime, String characterName)?
        reportSighting,
    required TResult orElse(),
  }) {
    if (getPeople != null) {
      return getPeople(page);
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
  const factory _GetPeople({final int page}) = _$_GetPeople;

  int get page;
  @JsonKey(ignore: true)
  _$$_GetPeopleCopyWith<_$_GetPeople> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCharacterCopyWith<$Res> {
  factory _$$_GetCharacterCopyWith(
          _$_GetCharacter value, $Res Function(_$_GetCharacter) then) =
      __$$_GetCharacterCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
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
    Object? id = null,
  }) {
    return _then(_$_GetCharacter(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetCharacter implements _GetCharacter {
  const _$_GetCharacter({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'StarWarsEvent.getCharacter(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCharacter &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCharacterCopyWith<_$_GetCharacter> get copyWith =>
      __$$_GetCharacterCopyWithImpl<_$_GetCharacter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) getPeople,
    required TResult Function(int id) getCharacter,
    required TResult Function(
            int userId, DateTime dateTime, String characterName)
        reportSighting,
  }) {
    return getCharacter(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? getPeople,
    TResult? Function(int id)? getCharacter,
    TResult? Function(int userId, DateTime dateTime, String characterName)?
        reportSighting,
  }) {
    return getCharacter?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getPeople,
    TResult Function(int id)? getCharacter,
    TResult Function(int userId, DateTime dateTime, String characterName)?
        reportSighting,
    required TResult orElse(),
  }) {
    if (getCharacter != null) {
      return getCharacter(id);
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
  const factory _GetCharacter({required final int id}) = _$_GetCharacter;

  int get id;
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
    required TResult Function(int page) getPeople,
    required TResult Function(int id) getCharacter,
    required TResult Function(
            int userId, DateTime dateTime, String characterName)
        reportSighting,
  }) {
    return reportSighting(userId, dateTime, characterName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? getPeople,
    TResult? Function(int id)? getCharacter,
    TResult? Function(int userId, DateTime dateTime, String characterName)?
        reportSighting,
  }) {
    return reportSighting?.call(userId, dateTime, characterName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? getPeople,
    TResult Function(int id)? getCharacter,
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
mixin _$StarWarsStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
    required TResult Function() reportSuccess,
    required TResult Function() loadingCharacter,
    required TResult Function() characterLoaded,
    required TResult Function(String message) characterError,
    required TResult Function(String message) reportFailed,
    required TResult Function() reportInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? reportSuccess,
    TResult? Function()? loadingCharacter,
    TResult? Function()? characterLoaded,
    TResult? Function(String message)? characterError,
    TResult? Function(String message)? reportFailed,
    TResult? Function()? reportInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    TResult Function()? reportSuccess,
    TResult Function()? loadingCharacter,
    TResult Function()? characterLoaded,
    TResult Function(String message)? characterError,
    TResult Function(String message)? reportFailed,
    TResult Function()? reportInProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Reported value) reportSuccess,
    required TResult Function(_LoadingCharacter value) loadingCharacter,
    required TResult Function(_CharacterLoaded value) characterLoaded,
    required TResult Function(_CharacterError value) characterError,
    required TResult Function(_ReportFailed value) reportFailed,
    required TResult Function(_ReportInProgress value) reportInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Reported value)? reportSuccess,
    TResult? Function(_LoadingCharacter value)? loadingCharacter,
    TResult? Function(_CharacterLoaded value)? characterLoaded,
    TResult? Function(_CharacterError value)? characterError,
    TResult? Function(_ReportFailed value)? reportFailed,
    TResult? Function(_ReportInProgress value)? reportInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Reported value)? reportSuccess,
    TResult Function(_LoadingCharacter value)? loadingCharacter,
    TResult Function(_CharacterLoaded value)? characterLoaded,
    TResult Function(_CharacterError value)? characterError,
    TResult Function(_ReportFailed value)? reportFailed,
    TResult Function(_ReportInProgress value)? reportInProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarWarsStatusCopyWith<$Res> {
  factory $StarWarsStatusCopyWith(
          StarWarsStatus value, $Res Function(StarWarsStatus) then) =
      _$StarWarsStatusCopyWithImpl<$Res, StarWarsStatus>;
}

/// @nodoc
class _$StarWarsStatusCopyWithImpl<$Res, $Val extends StarWarsStatus>
    implements $StarWarsStatusCopyWith<$Res> {
  _$StarWarsStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$StarWarsStatusCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'StarWarsStatus.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
    required TResult Function() reportSuccess,
    required TResult Function() loadingCharacter,
    required TResult Function() characterLoaded,
    required TResult Function(String message) characterError,
    required TResult Function(String message) reportFailed,
    required TResult Function() reportInProgress,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? reportSuccess,
    TResult? Function()? loadingCharacter,
    TResult? Function()? characterLoaded,
    TResult? Function(String message)? characterError,
    TResult? Function(String message)? reportFailed,
    TResult? Function()? reportInProgress,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    TResult Function()? reportSuccess,
    TResult Function()? loadingCharacter,
    TResult Function()? characterLoaded,
    TResult Function(String message)? characterError,
    TResult Function(String message)? reportFailed,
    TResult Function()? reportInProgress,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Reported value) reportSuccess,
    required TResult Function(_LoadingCharacter value) loadingCharacter,
    required TResult Function(_CharacterLoaded value) characterLoaded,
    required TResult Function(_CharacterError value) characterError,
    required TResult Function(_ReportFailed value) reportFailed,
    required TResult Function(_ReportInProgress value) reportInProgress,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Reported value)? reportSuccess,
    TResult? Function(_LoadingCharacter value)? loadingCharacter,
    TResult? Function(_CharacterLoaded value)? characterLoaded,
    TResult? Function(_CharacterError value)? characterError,
    TResult? Function(_ReportFailed value)? reportFailed,
    TResult? Function(_ReportInProgress value)? reportInProgress,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Reported value)? reportSuccess,
    TResult Function(_LoadingCharacter value)? loadingCharacter,
    TResult Function(_CharacterLoaded value)? characterLoaded,
    TResult Function(_CharacterError value)? characterError,
    TResult Function(_ReportFailed value)? reportFailed,
    TResult Function(_ReportInProgress value)? reportInProgress,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends StarWarsStatus {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$StarWarsStatusCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading() : super._();

  @override
  String toString() {
    return 'StarWarsStatus.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
    required TResult Function() reportSuccess,
    required TResult Function() loadingCharacter,
    required TResult Function() characterLoaded,
    required TResult Function(String message) characterError,
    required TResult Function(String message) reportFailed,
    required TResult Function() reportInProgress,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? reportSuccess,
    TResult? Function()? loadingCharacter,
    TResult? Function()? characterLoaded,
    TResult? Function(String message)? characterError,
    TResult? Function(String message)? reportFailed,
    TResult? Function()? reportInProgress,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    TResult Function()? reportSuccess,
    TResult Function()? loadingCharacter,
    TResult Function()? characterLoaded,
    TResult Function(String message)? characterError,
    TResult Function(String message)? reportFailed,
    TResult Function()? reportInProgress,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Reported value) reportSuccess,
    required TResult Function(_LoadingCharacter value) loadingCharacter,
    required TResult Function(_CharacterLoaded value) characterLoaded,
    required TResult Function(_CharacterError value) characterError,
    required TResult Function(_ReportFailed value) reportFailed,
    required TResult Function(_ReportInProgress value) reportInProgress,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Reported value)? reportSuccess,
    TResult? Function(_LoadingCharacter value)? loadingCharacter,
    TResult? Function(_CharacterLoaded value)? characterLoaded,
    TResult? Function(_CharacterError value)? characterError,
    TResult? Function(_ReportFailed value)? reportFailed,
    TResult? Function(_ReportInProgress value)? reportInProgress,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Reported value)? reportSuccess,
    TResult Function(_LoadingCharacter value)? loadingCharacter,
    TResult Function(_CharacterLoaded value)? characterLoaded,
    TResult Function(_CharacterError value)? characterError,
    TResult Function(_ReportFailed value)? reportFailed,
    TResult Function(_ReportInProgress value)? reportInProgress,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends StarWarsStatus {
  const factory _Loading() = _$_Loading;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$StarWarsStatusCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loaded extends _Loaded {
  const _$_Loaded() : super._();

  @override
  String toString() {
    return 'StarWarsStatus.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
    required TResult Function() reportSuccess,
    required TResult Function() loadingCharacter,
    required TResult Function() characterLoaded,
    required TResult Function(String message) characterError,
    required TResult Function(String message) reportFailed,
    required TResult Function() reportInProgress,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? reportSuccess,
    TResult? Function()? loadingCharacter,
    TResult? Function()? characterLoaded,
    TResult? Function(String message)? characterError,
    TResult? Function(String message)? reportFailed,
    TResult? Function()? reportInProgress,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    TResult Function()? reportSuccess,
    TResult Function()? loadingCharacter,
    TResult Function()? characterLoaded,
    TResult Function(String message)? characterError,
    TResult Function(String message)? reportFailed,
    TResult Function()? reportInProgress,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Reported value) reportSuccess,
    required TResult Function(_LoadingCharacter value) loadingCharacter,
    required TResult Function(_CharacterLoaded value) characterLoaded,
    required TResult Function(_CharacterError value) characterError,
    required TResult Function(_ReportFailed value) reportFailed,
    required TResult Function(_ReportInProgress value) reportInProgress,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Reported value)? reportSuccess,
    TResult? Function(_LoadingCharacter value)? loadingCharacter,
    TResult? Function(_CharacterLoaded value)? characterLoaded,
    TResult? Function(_CharacterError value)? characterError,
    TResult? Function(_ReportFailed value)? reportFailed,
    TResult? Function(_ReportInProgress value)? reportInProgress,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Reported value)? reportSuccess,
    TResult Function(_LoadingCharacter value)? loadingCharacter,
    TResult Function(_CharacterLoaded value)? characterLoaded,
    TResult Function(_CharacterError value)? characterError,
    TResult Function(_ReportFailed value)? reportFailed,
    TResult Function(_ReportInProgress value)? reportInProgress,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded extends StarWarsStatus {
  const factory _Loaded() = _$_Loaded;
  const _Loaded._() : super._();
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$StarWarsStatusCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Error(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error extends _Error {
  const _$_Error(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'StarWarsStatus.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
    required TResult Function() reportSuccess,
    required TResult Function() loadingCharacter,
    required TResult Function() characterLoaded,
    required TResult Function(String message) characterError,
    required TResult Function(String message) reportFailed,
    required TResult Function() reportInProgress,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? reportSuccess,
    TResult? Function()? loadingCharacter,
    TResult? Function()? characterLoaded,
    TResult? Function(String message)? characterError,
    TResult? Function(String message)? reportFailed,
    TResult? Function()? reportInProgress,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    TResult Function()? reportSuccess,
    TResult Function()? loadingCharacter,
    TResult Function()? characterLoaded,
    TResult Function(String message)? characterError,
    TResult Function(String message)? reportFailed,
    TResult Function()? reportInProgress,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Reported value) reportSuccess,
    required TResult Function(_LoadingCharacter value) loadingCharacter,
    required TResult Function(_CharacterLoaded value) characterLoaded,
    required TResult Function(_CharacterError value) characterError,
    required TResult Function(_ReportFailed value) reportFailed,
    required TResult Function(_ReportInProgress value) reportInProgress,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Reported value)? reportSuccess,
    TResult? Function(_LoadingCharacter value)? loadingCharacter,
    TResult? Function(_CharacterLoaded value)? characterLoaded,
    TResult? Function(_CharacterError value)? characterError,
    TResult? Function(_ReportFailed value)? reportFailed,
    TResult? Function(_ReportInProgress value)? reportInProgress,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Reported value)? reportSuccess,
    TResult Function(_LoadingCharacter value)? loadingCharacter,
    TResult Function(_CharacterLoaded value)? characterLoaded,
    TResult Function(_CharacterError value)? characterError,
    TResult Function(_ReportFailed value)? reportFailed,
    TResult Function(_ReportInProgress value)? reportInProgress,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends StarWarsStatus {
  const factory _Error(final String message) = _$_Error;
  const _Error._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReportedCopyWith<$Res> {
  factory _$$_ReportedCopyWith(
          _$_Reported value, $Res Function(_$_Reported) then) =
      __$$_ReportedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReportedCopyWithImpl<$Res>
    extends _$StarWarsStatusCopyWithImpl<$Res, _$_Reported>
    implements _$$_ReportedCopyWith<$Res> {
  __$$_ReportedCopyWithImpl(
      _$_Reported _value, $Res Function(_$_Reported) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Reported extends _Reported {
  const _$_Reported() : super._();

  @override
  String toString() {
    return 'StarWarsStatus.reportSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Reported);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
    required TResult Function() reportSuccess,
    required TResult Function() loadingCharacter,
    required TResult Function() characterLoaded,
    required TResult Function(String message) characterError,
    required TResult Function(String message) reportFailed,
    required TResult Function() reportInProgress,
  }) {
    return reportSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? reportSuccess,
    TResult? Function()? loadingCharacter,
    TResult? Function()? characterLoaded,
    TResult? Function(String message)? characterError,
    TResult? Function(String message)? reportFailed,
    TResult? Function()? reportInProgress,
  }) {
    return reportSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    TResult Function()? reportSuccess,
    TResult Function()? loadingCharacter,
    TResult Function()? characterLoaded,
    TResult Function(String message)? characterError,
    TResult Function(String message)? reportFailed,
    TResult Function()? reportInProgress,
    required TResult orElse(),
  }) {
    if (reportSuccess != null) {
      return reportSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Reported value) reportSuccess,
    required TResult Function(_LoadingCharacter value) loadingCharacter,
    required TResult Function(_CharacterLoaded value) characterLoaded,
    required TResult Function(_CharacterError value) characterError,
    required TResult Function(_ReportFailed value) reportFailed,
    required TResult Function(_ReportInProgress value) reportInProgress,
  }) {
    return reportSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Reported value)? reportSuccess,
    TResult? Function(_LoadingCharacter value)? loadingCharacter,
    TResult? Function(_CharacterLoaded value)? characterLoaded,
    TResult? Function(_CharacterError value)? characterError,
    TResult? Function(_ReportFailed value)? reportFailed,
    TResult? Function(_ReportInProgress value)? reportInProgress,
  }) {
    return reportSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Reported value)? reportSuccess,
    TResult Function(_LoadingCharacter value)? loadingCharacter,
    TResult Function(_CharacterLoaded value)? characterLoaded,
    TResult Function(_CharacterError value)? characterError,
    TResult Function(_ReportFailed value)? reportFailed,
    TResult Function(_ReportInProgress value)? reportInProgress,
    required TResult orElse(),
  }) {
    if (reportSuccess != null) {
      return reportSuccess(this);
    }
    return orElse();
  }
}

abstract class _Reported extends StarWarsStatus {
  const factory _Reported() = _$_Reported;
  const _Reported._() : super._();
}

/// @nodoc
abstract class _$$_LoadingCharacterCopyWith<$Res> {
  factory _$$_LoadingCharacterCopyWith(
          _$_LoadingCharacter value, $Res Function(_$_LoadingCharacter) then) =
      __$$_LoadingCharacterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCharacterCopyWithImpl<$Res>
    extends _$StarWarsStatusCopyWithImpl<$Res, _$_LoadingCharacter>
    implements _$$_LoadingCharacterCopyWith<$Res> {
  __$$_LoadingCharacterCopyWithImpl(
      _$_LoadingCharacter _value, $Res Function(_$_LoadingCharacter) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingCharacter extends _LoadingCharacter {
  const _$_LoadingCharacter() : super._();

  @override
  String toString() {
    return 'StarWarsStatus.loadingCharacter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingCharacter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
    required TResult Function() reportSuccess,
    required TResult Function() loadingCharacter,
    required TResult Function() characterLoaded,
    required TResult Function(String message) characterError,
    required TResult Function(String message) reportFailed,
    required TResult Function() reportInProgress,
  }) {
    return loadingCharacter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? reportSuccess,
    TResult? Function()? loadingCharacter,
    TResult? Function()? characterLoaded,
    TResult? Function(String message)? characterError,
    TResult? Function(String message)? reportFailed,
    TResult? Function()? reportInProgress,
  }) {
    return loadingCharacter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    TResult Function()? reportSuccess,
    TResult Function()? loadingCharacter,
    TResult Function()? characterLoaded,
    TResult Function(String message)? characterError,
    TResult Function(String message)? reportFailed,
    TResult Function()? reportInProgress,
    required TResult orElse(),
  }) {
    if (loadingCharacter != null) {
      return loadingCharacter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Reported value) reportSuccess,
    required TResult Function(_LoadingCharacter value) loadingCharacter,
    required TResult Function(_CharacterLoaded value) characterLoaded,
    required TResult Function(_CharacterError value) characterError,
    required TResult Function(_ReportFailed value) reportFailed,
    required TResult Function(_ReportInProgress value) reportInProgress,
  }) {
    return loadingCharacter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Reported value)? reportSuccess,
    TResult? Function(_LoadingCharacter value)? loadingCharacter,
    TResult? Function(_CharacterLoaded value)? characterLoaded,
    TResult? Function(_CharacterError value)? characterError,
    TResult? Function(_ReportFailed value)? reportFailed,
    TResult? Function(_ReportInProgress value)? reportInProgress,
  }) {
    return loadingCharacter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Reported value)? reportSuccess,
    TResult Function(_LoadingCharacter value)? loadingCharacter,
    TResult Function(_CharacterLoaded value)? characterLoaded,
    TResult Function(_CharacterError value)? characterError,
    TResult Function(_ReportFailed value)? reportFailed,
    TResult Function(_ReportInProgress value)? reportInProgress,
    required TResult orElse(),
  }) {
    if (loadingCharacter != null) {
      return loadingCharacter(this);
    }
    return orElse();
  }
}

abstract class _LoadingCharacter extends StarWarsStatus {
  const factory _LoadingCharacter() = _$_LoadingCharacter;
  const _LoadingCharacter._() : super._();
}

/// @nodoc
abstract class _$$_CharacterLoadedCopyWith<$Res> {
  factory _$$_CharacterLoadedCopyWith(
          _$_CharacterLoaded value, $Res Function(_$_CharacterLoaded) then) =
      __$$_CharacterLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CharacterLoadedCopyWithImpl<$Res>
    extends _$StarWarsStatusCopyWithImpl<$Res, _$_CharacterLoaded>
    implements _$$_CharacterLoadedCopyWith<$Res> {
  __$$_CharacterLoadedCopyWithImpl(
      _$_CharacterLoaded _value, $Res Function(_$_CharacterLoaded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CharacterLoaded extends _CharacterLoaded {
  const _$_CharacterLoaded() : super._();

  @override
  String toString() {
    return 'StarWarsStatus.characterLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CharacterLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
    required TResult Function() reportSuccess,
    required TResult Function() loadingCharacter,
    required TResult Function() characterLoaded,
    required TResult Function(String message) characterError,
    required TResult Function(String message) reportFailed,
    required TResult Function() reportInProgress,
  }) {
    return characterLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? reportSuccess,
    TResult? Function()? loadingCharacter,
    TResult? Function()? characterLoaded,
    TResult? Function(String message)? characterError,
    TResult? Function(String message)? reportFailed,
    TResult? Function()? reportInProgress,
  }) {
    return characterLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    TResult Function()? reportSuccess,
    TResult Function()? loadingCharacter,
    TResult Function()? characterLoaded,
    TResult Function(String message)? characterError,
    TResult Function(String message)? reportFailed,
    TResult Function()? reportInProgress,
    required TResult orElse(),
  }) {
    if (characterLoaded != null) {
      return characterLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Reported value) reportSuccess,
    required TResult Function(_LoadingCharacter value) loadingCharacter,
    required TResult Function(_CharacterLoaded value) characterLoaded,
    required TResult Function(_CharacterError value) characterError,
    required TResult Function(_ReportFailed value) reportFailed,
    required TResult Function(_ReportInProgress value) reportInProgress,
  }) {
    return characterLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Reported value)? reportSuccess,
    TResult? Function(_LoadingCharacter value)? loadingCharacter,
    TResult? Function(_CharacterLoaded value)? characterLoaded,
    TResult? Function(_CharacterError value)? characterError,
    TResult? Function(_ReportFailed value)? reportFailed,
    TResult? Function(_ReportInProgress value)? reportInProgress,
  }) {
    return characterLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Reported value)? reportSuccess,
    TResult Function(_LoadingCharacter value)? loadingCharacter,
    TResult Function(_CharacterLoaded value)? characterLoaded,
    TResult Function(_CharacterError value)? characterError,
    TResult Function(_ReportFailed value)? reportFailed,
    TResult Function(_ReportInProgress value)? reportInProgress,
    required TResult orElse(),
  }) {
    if (characterLoaded != null) {
      return characterLoaded(this);
    }
    return orElse();
  }
}

abstract class _CharacterLoaded extends StarWarsStatus {
  const factory _CharacterLoaded() = _$_CharacterLoaded;
  const _CharacterLoaded._() : super._();
}

/// @nodoc
abstract class _$$_CharacterErrorCopyWith<$Res> {
  factory _$$_CharacterErrorCopyWith(
          _$_CharacterError value, $Res Function(_$_CharacterError) then) =
      __$$_CharacterErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_CharacterErrorCopyWithImpl<$Res>
    extends _$StarWarsStatusCopyWithImpl<$Res, _$_CharacterError>
    implements _$$_CharacterErrorCopyWith<$Res> {
  __$$_CharacterErrorCopyWithImpl(
      _$_CharacterError _value, $Res Function(_$_CharacterError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_CharacterError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CharacterError extends _CharacterError {
  const _$_CharacterError(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'StarWarsStatus.characterError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterErrorCopyWith<_$_CharacterError> get copyWith =>
      __$$_CharacterErrorCopyWithImpl<_$_CharacterError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
    required TResult Function() reportSuccess,
    required TResult Function() loadingCharacter,
    required TResult Function() characterLoaded,
    required TResult Function(String message) characterError,
    required TResult Function(String message) reportFailed,
    required TResult Function() reportInProgress,
  }) {
    return characterError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? reportSuccess,
    TResult? Function()? loadingCharacter,
    TResult? Function()? characterLoaded,
    TResult? Function(String message)? characterError,
    TResult? Function(String message)? reportFailed,
    TResult? Function()? reportInProgress,
  }) {
    return characterError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    TResult Function()? reportSuccess,
    TResult Function()? loadingCharacter,
    TResult Function()? characterLoaded,
    TResult Function(String message)? characterError,
    TResult Function(String message)? reportFailed,
    TResult Function()? reportInProgress,
    required TResult orElse(),
  }) {
    if (characterError != null) {
      return characterError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Reported value) reportSuccess,
    required TResult Function(_LoadingCharacter value) loadingCharacter,
    required TResult Function(_CharacterLoaded value) characterLoaded,
    required TResult Function(_CharacterError value) characterError,
    required TResult Function(_ReportFailed value) reportFailed,
    required TResult Function(_ReportInProgress value) reportInProgress,
  }) {
    return characterError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Reported value)? reportSuccess,
    TResult? Function(_LoadingCharacter value)? loadingCharacter,
    TResult? Function(_CharacterLoaded value)? characterLoaded,
    TResult? Function(_CharacterError value)? characterError,
    TResult? Function(_ReportFailed value)? reportFailed,
    TResult? Function(_ReportInProgress value)? reportInProgress,
  }) {
    return characterError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Reported value)? reportSuccess,
    TResult Function(_LoadingCharacter value)? loadingCharacter,
    TResult Function(_CharacterLoaded value)? characterLoaded,
    TResult Function(_CharacterError value)? characterError,
    TResult Function(_ReportFailed value)? reportFailed,
    TResult Function(_ReportInProgress value)? reportInProgress,
    required TResult orElse(),
  }) {
    if (characterError != null) {
      return characterError(this);
    }
    return orElse();
  }
}

abstract class _CharacterError extends StarWarsStatus {
  const factory _CharacterError(final String message) = _$_CharacterError;
  const _CharacterError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_CharacterErrorCopyWith<_$_CharacterError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReportFailedCopyWith<$Res> {
  factory _$$_ReportFailedCopyWith(
          _$_ReportFailed value, $Res Function(_$_ReportFailed) then) =
      __$$_ReportFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ReportFailedCopyWithImpl<$Res>
    extends _$StarWarsStatusCopyWithImpl<$Res, _$_ReportFailed>
    implements _$$_ReportFailedCopyWith<$Res> {
  __$$_ReportFailedCopyWithImpl(
      _$_ReportFailed _value, $Res Function(_$_ReportFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ReportFailed(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReportFailed extends _ReportFailed {
  const _$_ReportFailed(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'StarWarsStatus.reportFailed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReportFailed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReportFailedCopyWith<_$_ReportFailed> get copyWith =>
      __$$_ReportFailedCopyWithImpl<_$_ReportFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
    required TResult Function() reportSuccess,
    required TResult Function() loadingCharacter,
    required TResult Function() characterLoaded,
    required TResult Function(String message) characterError,
    required TResult Function(String message) reportFailed,
    required TResult Function() reportInProgress,
  }) {
    return reportFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? reportSuccess,
    TResult? Function()? loadingCharacter,
    TResult? Function()? characterLoaded,
    TResult? Function(String message)? characterError,
    TResult? Function(String message)? reportFailed,
    TResult? Function()? reportInProgress,
  }) {
    return reportFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    TResult Function()? reportSuccess,
    TResult Function()? loadingCharacter,
    TResult Function()? characterLoaded,
    TResult Function(String message)? characterError,
    TResult Function(String message)? reportFailed,
    TResult Function()? reportInProgress,
    required TResult orElse(),
  }) {
    if (reportFailed != null) {
      return reportFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Reported value) reportSuccess,
    required TResult Function(_LoadingCharacter value) loadingCharacter,
    required TResult Function(_CharacterLoaded value) characterLoaded,
    required TResult Function(_CharacterError value) characterError,
    required TResult Function(_ReportFailed value) reportFailed,
    required TResult Function(_ReportInProgress value) reportInProgress,
  }) {
    return reportFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Reported value)? reportSuccess,
    TResult? Function(_LoadingCharacter value)? loadingCharacter,
    TResult? Function(_CharacterLoaded value)? characterLoaded,
    TResult? Function(_CharacterError value)? characterError,
    TResult? Function(_ReportFailed value)? reportFailed,
    TResult? Function(_ReportInProgress value)? reportInProgress,
  }) {
    return reportFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Reported value)? reportSuccess,
    TResult Function(_LoadingCharacter value)? loadingCharacter,
    TResult Function(_CharacterLoaded value)? characterLoaded,
    TResult Function(_CharacterError value)? characterError,
    TResult Function(_ReportFailed value)? reportFailed,
    TResult Function(_ReportInProgress value)? reportInProgress,
    required TResult orElse(),
  }) {
    if (reportFailed != null) {
      return reportFailed(this);
    }
    return orElse();
  }
}

abstract class _ReportFailed extends StarWarsStatus {
  const factory _ReportFailed(final String message) = _$_ReportFailed;
  const _ReportFailed._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_ReportFailedCopyWith<_$_ReportFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReportInProgressCopyWith<$Res> {
  factory _$$_ReportInProgressCopyWith(
          _$_ReportInProgress value, $Res Function(_$_ReportInProgress) then) =
      __$$_ReportInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReportInProgressCopyWithImpl<$Res>
    extends _$StarWarsStatusCopyWithImpl<$Res, _$_ReportInProgress>
    implements _$$_ReportInProgressCopyWith<$Res> {
  __$$_ReportInProgressCopyWithImpl(
      _$_ReportInProgress _value, $Res Function(_$_ReportInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReportInProgress extends _ReportInProgress {
  const _$_ReportInProgress() : super._();

  @override
  String toString() {
    return 'StarWarsStatus.reportInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReportInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
    required TResult Function() reportSuccess,
    required TResult Function() loadingCharacter,
    required TResult Function() characterLoaded,
    required TResult Function(String message) characterError,
    required TResult Function(String message) reportFailed,
    required TResult Function() reportInProgress,
  }) {
    return reportInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? reportSuccess,
    TResult? Function()? loadingCharacter,
    TResult? Function()? characterLoaded,
    TResult? Function(String message)? characterError,
    TResult? Function(String message)? reportFailed,
    TResult? Function()? reportInProgress,
  }) {
    return reportInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    TResult Function()? reportSuccess,
    TResult Function()? loadingCharacter,
    TResult Function()? characterLoaded,
    TResult Function(String message)? characterError,
    TResult Function(String message)? reportFailed,
    TResult Function()? reportInProgress,
    required TResult orElse(),
  }) {
    if (reportInProgress != null) {
      return reportInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
    required TResult Function(_Reported value) reportSuccess,
    required TResult Function(_LoadingCharacter value) loadingCharacter,
    required TResult Function(_CharacterLoaded value) characterLoaded,
    required TResult Function(_CharacterError value) characterError,
    required TResult Function(_ReportFailed value) reportFailed,
    required TResult Function(_ReportInProgress value) reportInProgress,
  }) {
    return reportInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
    TResult? Function(_Reported value)? reportSuccess,
    TResult? Function(_LoadingCharacter value)? loadingCharacter,
    TResult? Function(_CharacterLoaded value)? characterLoaded,
    TResult? Function(_CharacterError value)? characterError,
    TResult? Function(_ReportFailed value)? reportFailed,
    TResult? Function(_ReportInProgress value)? reportInProgress,
  }) {
    return reportInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    TResult Function(_Reported value)? reportSuccess,
    TResult Function(_LoadingCharacter value)? loadingCharacter,
    TResult Function(_CharacterLoaded value)? characterLoaded,
    TResult Function(_CharacterError value)? characterError,
    TResult Function(_ReportFailed value)? reportFailed,
    TResult Function(_ReportInProgress value)? reportInProgress,
    required TResult orElse(),
  }) {
    if (reportInProgress != null) {
      return reportInProgress(this);
    }
    return orElse();
  }
}

abstract class _ReportInProgress extends StarWarsStatus {
  const factory _ReportInProgress() = _$_ReportInProgress;
  const _ReportInProgress._() : super._();
}

/// @nodoc
mixin _$StarWarsState {
  List<Character> get characters => throw _privateConstructorUsedError;
  Character? get selectedCharacter => throw _privateConstructorUsedError;
  int get nextPage => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  StarWarsStatus get status => throw _privateConstructorUsedError;
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
      {List<Character> characters,
      Character? selectedCharacter,
      int nextPage,
      int count,
      StarWarsStatus status,
      bool hasReachedMax});

  $CharacterCopyWith<$Res>? get selectedCharacter;
  $StarWarsStatusCopyWith<$Res> get status;
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
    Object? selectedCharacter = freezed,
    Object? nextPage = null,
    Object? count = null,
    Object? status = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_value.copyWith(
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      selectedCharacter: freezed == selectedCharacter
          ? _value.selectedCharacter
          : selectedCharacter // ignore: cast_nullable_to_non_nullable
              as Character?,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StarWarsStatus,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res>? get selectedCharacter {
    if (_value.selectedCharacter == null) {
      return null;
    }

    return $CharacterCopyWith<$Res>(_value.selectedCharacter!, (value) {
      return _then(_value.copyWith(selectedCharacter: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StarWarsStatusCopyWith<$Res> get status {
    return $StarWarsStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
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
      {List<Character> characters,
      Character? selectedCharacter,
      int nextPage,
      int count,
      StarWarsStatus status,
      bool hasReachedMax});

  @override
  $CharacterCopyWith<$Res>? get selectedCharacter;
  @override
  $StarWarsStatusCopyWith<$Res> get status;
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
    Object? selectedCharacter = freezed,
    Object? nextPage = null,
    Object? count = null,
    Object? status = null,
    Object? hasReachedMax = null,
  }) {
    return _then(_$_StarwarsState(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      selectedCharacter: freezed == selectedCharacter
          ? _value.selectedCharacter
          : selectedCharacter // ignore: cast_nullable_to_non_nullable
              as Character?,
      nextPage: null == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StarWarsStatus,
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
      {final List<Character> characters = const [],
      this.selectedCharacter,
      this.nextPage = 1,
      this.count = 0,
      this.status = const StarWarsStatus.initial(),
      this.hasReachedMax = false})
      : _characters = characters;

  final List<Character> _characters;
  @override
  @JsonKey()
  List<Character> get characters {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  @override
  final Character? selectedCharacter;
  @override
  @JsonKey()
  final int nextPage;
  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final StarWarsStatus status;
  @override
  @JsonKey()
  final bool hasReachedMax;

  @override
  String toString() {
    return 'StarWarsState(characters: $characters, selectedCharacter: $selectedCharacter, nextPage: $nextPage, count: $count, status: $status, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StarwarsState &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            (identical(other.selectedCharacter, selectedCharacter) ||
                other.selectedCharacter == selectedCharacter) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_characters),
      selectedCharacter,
      nextPage,
      count,
      status,
      hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StarwarsStateCopyWith<_$_StarwarsState> get copyWith =>
      __$$_StarwarsStateCopyWithImpl<_$_StarwarsState>(this, _$identity);
}

abstract class _StarwarsState implements StarWarsState {
  const factory _StarwarsState(
      {final List<Character> characters,
      final Character? selectedCharacter,
      final int nextPage,
      final int count,
      final StarWarsStatus status,
      final bool hasReachedMax}) = _$_StarwarsState;

  @override
  List<Character> get characters;
  @override
  Character? get selectedCharacter;
  @override
  int get nextPage;
  @override
  int get count;
  @override
  StarWarsStatus get status;
  @override
  bool get hasReachedMax;
  @override
  @JsonKey(ignore: true)
  _$$_StarwarsStateCopyWith<_$_StarwarsState> get copyWith =>
      throw _privateConstructorUsedError;
}
