// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_summary_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResumeSummaryDto {
  String get id;
  String get title;
  String get summary;
  @JsonKey(name: 'created_at')
  String get createdAt;
  Map<String, dynamic>? get metadata;

  /// Create a copy of ResumeSummaryDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResumeSummaryDtoCopyWith<ResumeSummaryDto> get copyWith =>
      _$ResumeSummaryDtoCopyWithImpl<ResumeSummaryDto>(
          this as ResumeSummaryDto, _$identity);

  /// Serializes this ResumeSummaryDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResumeSummaryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, summary, createdAt,
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'ResumeSummaryDto(id: $id, title: $title, summary: $summary, createdAt: $createdAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $ResumeSummaryDtoCopyWith<$Res> {
  factory $ResumeSummaryDtoCopyWith(
          ResumeSummaryDto value, $Res Function(ResumeSummaryDto) _then) =
      _$ResumeSummaryDtoCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String title,
      String summary,
      @JsonKey(name: 'created_at') String createdAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class _$ResumeSummaryDtoCopyWithImpl<$Res>
    implements $ResumeSummaryDtoCopyWith<$Res> {
  _$ResumeSummaryDtoCopyWithImpl(this._self, this._then);

  final ResumeSummaryDto _self;
  final $Res Function(ResumeSummaryDto) _then;

  /// Create a copy of ResumeSummaryDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? summary = null,
    Object? createdAt = null,
    Object? metadata = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ResumeSummaryDto].
extension ResumeSummaryDtoPatterns on ResumeSummaryDto {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ResumeSummaryDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResumeSummaryDto() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ResumeSummaryDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResumeSummaryDto():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ResumeSummaryDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResumeSummaryDto() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String title,
            String summary,
            @JsonKey(name: 'created_at') String createdAt,
            Map<String, dynamic>? metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResumeSummaryDto() when $default != null:
        return $default(_that.id, _that.title, _that.summary, _that.createdAt,
            _that.metadata);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String title,
            String summary,
            @JsonKey(name: 'created_at') String createdAt,
            Map<String, dynamic>? metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResumeSummaryDto():
        return $default(_that.id, _that.title, _that.summary, _that.createdAt,
            _that.metadata);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String title,
            String summary,
            @JsonKey(name: 'created_at') String createdAt,
            Map<String, dynamic>? metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResumeSummaryDto() when $default != null:
        return $default(_that.id, _that.title, _that.summary, _that.createdAt,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ResumeSummaryDto implements ResumeSummaryDto {
  const _ResumeSummaryDto(
      {required this.id,
      required this.title,
      required this.summary,
      @JsonKey(name: 'created_at') required this.createdAt,
      final Map<String, dynamic>? metadata})
      : _metadata = metadata;
  factory _ResumeSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$ResumeSummaryDtoFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String summary;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of ResumeSummaryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResumeSummaryDtoCopyWith<_ResumeSummaryDto> get copyWith =>
      __$ResumeSummaryDtoCopyWithImpl<_ResumeSummaryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResumeSummaryDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResumeSummaryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, summary, createdAt,
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'ResumeSummaryDto(id: $id, title: $title, summary: $summary, createdAt: $createdAt, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$ResumeSummaryDtoCopyWith<$Res>
    implements $ResumeSummaryDtoCopyWith<$Res> {
  factory _$ResumeSummaryDtoCopyWith(
          _ResumeSummaryDto value, $Res Function(_ResumeSummaryDto) _then) =
      __$ResumeSummaryDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String summary,
      @JsonKey(name: 'created_at') String createdAt,
      Map<String, dynamic>? metadata});
}

/// @nodoc
class __$ResumeSummaryDtoCopyWithImpl<$Res>
    implements _$ResumeSummaryDtoCopyWith<$Res> {
  __$ResumeSummaryDtoCopyWithImpl(this._self, this._then);

  final _ResumeSummaryDto _self;
  final $Res Function(_ResumeSummaryDto) _then;

  /// Create a copy of ResumeSummaryDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? summary = null,
    Object? createdAt = null,
    Object? metadata = freezed,
  }) {
    return _then(_ResumeSummaryDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: freezed == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on
