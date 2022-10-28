// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'character_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharacterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCharacters,
    required TResult Function(int id) getCharacter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCharacters,
    TResult? Function(int id)? getCharacter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCharacters,
    TResult Function(int id)? getCharacter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCharacters value) getCharacters,
    required TResult Function(_GetCharacter value) getCharacter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCharacters value)? getCharacters,
    TResult? Function(_GetCharacter value)? getCharacter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCharacters value)? getCharacters,
    TResult Function(_GetCharacter value)? getCharacter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterEventCopyWith<$Res> {
  factory $CharacterEventCopyWith(
          CharacterEvent value, $Res Function(CharacterEvent) then) =
      _$CharacterEventCopyWithImpl<$Res, CharacterEvent>;
}

/// @nodoc
class _$CharacterEventCopyWithImpl<$Res, $Val extends CharacterEvent>
    implements $CharacterEventCopyWith<$Res> {
  _$CharacterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetCharactersCopyWith<$Res> {
  factory _$$_GetCharactersCopyWith(
          _$_GetCharacters value, $Res Function(_$_GetCharacters) then) =
      __$$_GetCharactersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetCharactersCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$_GetCharacters>
    implements _$$_GetCharactersCopyWith<$Res> {
  __$$_GetCharactersCopyWithImpl(
      _$_GetCharacters _value, $Res Function(_$_GetCharacters) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetCharacters implements _GetCharacters {
  const _$_GetCharacters();

  @override
  String toString() {
    return 'CharacterEvent.getCharacters()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetCharacters);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCharacters,
    required TResult Function(int id) getCharacter,
  }) {
    return getCharacters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCharacters,
    TResult? Function(int id)? getCharacter,
  }) {
    return getCharacters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCharacters,
    TResult Function(int id)? getCharacter,
    required TResult orElse(),
  }) {
    if (getCharacters != null) {
      return getCharacters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCharacters value) getCharacters,
    required TResult Function(_GetCharacter value) getCharacter,
  }) {
    return getCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCharacters value)? getCharacters,
    TResult? Function(_GetCharacter value)? getCharacter,
  }) {
    return getCharacters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCharacters value)? getCharacters,
    TResult Function(_GetCharacter value)? getCharacter,
    required TResult orElse(),
  }) {
    if (getCharacters != null) {
      return getCharacters(this);
    }
    return orElse();
  }
}

abstract class _GetCharacters implements CharacterEvent {
  const factory _GetCharacters() = _$_GetCharacters;
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
    extends _$CharacterEventCopyWithImpl<$Res, _$_GetCharacter>
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
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetCharacter implements _GetCharacter {
  const _$_GetCharacter(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'CharacterEvent.getCharacter(id: $id)';
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
    required TResult Function() getCharacters,
    required TResult Function(int id) getCharacter,
  }) {
    return getCharacter(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCharacters,
    TResult? Function(int id)? getCharacter,
  }) {
    return getCharacter?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCharacters,
    TResult Function(int id)? getCharacter,
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
    required TResult Function(_GetCharacters value) getCharacters,
    required TResult Function(_GetCharacter value) getCharacter,
  }) {
    return getCharacter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCharacters value)? getCharacters,
    TResult? Function(_GetCharacter value)? getCharacter,
  }) {
    return getCharacter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCharacters value)? getCharacters,
    TResult Function(_GetCharacter value)? getCharacter,
    required TResult orElse(),
  }) {
    if (getCharacter != null) {
      return getCharacter(this);
    }
    return orElse();
  }
}

abstract class _GetCharacter implements CharacterEvent {
  const factory _GetCharacter(final int id) = _$_GetCharacter;

  int get id;
  @JsonKey(ignore: true)
  _$$_GetCharacterCopyWith<_$_GetCharacter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharacterState {
  List<Character> get characters => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  CharacterStatus get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterStateCopyWith<CharacterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStateCopyWith<$Res> {
  factory $CharacterStateCopyWith(
          CharacterState value, $Res Function(CharacterState) then) =
      _$CharacterStateCopyWithImpl<$Res, CharacterState>;
  @useResult
  $Res call(
      {List<Character> characters,
      String? next,
      int count,
      CharacterStatus status,
      String? message,
      bool hasReachedMax});
}

/// @nodoc
class _$CharacterStateCopyWithImpl<$Res, $Val extends CharacterState>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
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
              as List<Character>,
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
              as CharacterStatus,
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
abstract class _$$_CharacterStateCopyWith<$Res>
    implements $CharacterStateCopyWith<$Res> {
  factory _$$_CharacterStateCopyWith(
          _$_CharacterState value, $Res Function(_$_CharacterState) then) =
      __$$_CharacterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Character> characters,
      String? next,
      int count,
      CharacterStatus status,
      String? message,
      bool hasReachedMax});
}

/// @nodoc
class __$$_CharacterStateCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$_CharacterState>
    implements _$$_CharacterStateCopyWith<$Res> {
  __$$_CharacterStateCopyWithImpl(
      _$_CharacterState _value, $Res Function(_$_CharacterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? next = freezed,
    Object? count = null,
    Object? status = null,
    Object? message = freezed,
    Object? hasReachedMax = null,
  }) {
    return _then(_$_CharacterState(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
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
              as CharacterStatus,
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

class _$_CharacterState implements _CharacterState {
  const _$_CharacterState(
      {final List<Character> characters = const [],
      this.next,
      this.count = 0,
      this.status = CharacterStatus.initial,
      this.message,
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
  final String? next;
  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final CharacterStatus status;
  @override
  final String? message;
  @override
  @JsonKey()
  final bool hasReachedMax;

  @override
  String toString() {
    return 'CharacterState(characters: $characters, next: $next, count: $count, status: $status, message: $message, hasReachedMax: $hasReachedMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharacterState &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
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
      next,
      count,
      status,
      message,
      hasReachedMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharacterStateCopyWith<_$_CharacterState> get copyWith =>
      __$$_CharacterStateCopyWithImpl<_$_CharacterState>(this, _$identity);
}

abstract class _CharacterState implements CharacterState {
  const factory _CharacterState(
      {final List<Character> characters,
      final String? next,
      final int count,
      final CharacterStatus status,
      final String? message,
      final bool hasReachedMax}) = _$_CharacterState;

  @override
  List<Character> get characters;
  @override
  String? get next;
  @override
  int get count;
  @override
  CharacterStatus get status;
  @override
  String? get message;
  @override
  bool get hasReachedMax;
  @override
  @JsonKey(ignore: true)
  _$$_CharacterStateCopyWith<_$_CharacterState> get copyWith =>
      throw _privateConstructorUsedError;
}
