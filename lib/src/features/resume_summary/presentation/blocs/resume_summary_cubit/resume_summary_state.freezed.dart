// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_summary_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResumeSummaryState {
  List<ResumeSummaryDto> get summaries;
  ResumeSummaryDataDto? get resumeSummaryData;
  FormStatus get status;

  /// Create a copy of ResumeSummaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResumeSummaryStateCopyWith<ResumeSummaryState> get copyWith =>
      _$ResumeSummaryStateCopyWithImpl<ResumeSummaryState>(
          this as ResumeSummaryState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResumeSummaryState &&
            const DeepCollectionEquality().equals(other.summaries, summaries) &&
            (identical(other.resumeSummaryData, resumeSummaryData) ||
                other.resumeSummaryData == resumeSummaryData) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(summaries),
      resumeSummaryData,
      status);

  @override
  String toString() {
    return 'ResumeSummaryState(summaries: $summaries, resumeSummaryData: $resumeSummaryData, status: $status)';
  }
}

/// @nodoc
abstract mixin class $ResumeSummaryStateCopyWith<$Res> {
  factory $ResumeSummaryStateCopyWith(
          ResumeSummaryState value, $Res Function(ResumeSummaryState) _then) =
      _$ResumeSummaryStateCopyWithImpl;
  @useResult
  $Res call(
      {List<ResumeSummaryDto> summaries,
      ResumeSummaryDataDto? resumeSummaryData,
      FormStatus status});

  $ResumeSummaryDataDtoCopyWith<$Res>? get resumeSummaryData;
  $FormStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$ResumeSummaryStateCopyWithImpl<$Res>
    implements $ResumeSummaryStateCopyWith<$Res> {
  _$ResumeSummaryStateCopyWithImpl(this._self, this._then);

  final ResumeSummaryState _self;
  final $Res Function(ResumeSummaryState) _then;

  /// Create a copy of ResumeSummaryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summaries = null,
    Object? resumeSummaryData = freezed,
    Object? status = null,
  }) {
    return _then(_self.copyWith(
      summaries: null == summaries
          ? _self.summaries
          : summaries // ignore: cast_nullable_to_non_nullable
              as List<ResumeSummaryDto>,
      resumeSummaryData: freezed == resumeSummaryData
          ? _self.resumeSummaryData
          : resumeSummaryData // ignore: cast_nullable_to_non_nullable
              as ResumeSummaryDataDto?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
    ));
  }

  /// Create a copy of ResumeSummaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResumeSummaryDataDtoCopyWith<$Res>? get resumeSummaryData {
    if (_self.resumeSummaryData == null) {
      return null;
    }

    return $ResumeSummaryDataDtoCopyWith<$Res>(_self.resumeSummaryData!,
        (value) {
      return _then(_self.copyWith(resumeSummaryData: value));
    });
  }

  /// Create a copy of ResumeSummaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormStatusCopyWith<$Res> get status {
    return $FormStatusCopyWith<$Res>(_self.status, (value) {
      return _then(_self.copyWith(status: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ResumeSummaryState].
extension ResumeSummaryStatePatterns on ResumeSummaryState {
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
    TResult Function(_ResumeSummaryState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResumeSummaryState() when $default != null:
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
    TResult Function(_ResumeSummaryState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResumeSummaryState():
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
    TResult? Function(_ResumeSummaryState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResumeSummaryState() when $default != null:
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
    TResult Function(List<ResumeSummaryDto> summaries,
            ResumeSummaryDataDto? resumeSummaryData, FormStatus status)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ResumeSummaryState() when $default != null:
        return $default(_that.summaries, _that.resumeSummaryData, _that.status);
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
    TResult Function(List<ResumeSummaryDto> summaries,
            ResumeSummaryDataDto? resumeSummaryData, FormStatus status)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResumeSummaryState():
        return $default(_that.summaries, _that.resumeSummaryData, _that.status);
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
    TResult? Function(List<ResumeSummaryDto> summaries,
            ResumeSummaryDataDto? resumeSummaryData, FormStatus status)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ResumeSummaryState() when $default != null:
        return $default(_that.summaries, _that.resumeSummaryData, _that.status);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ResumeSummaryState implements ResumeSummaryState {
  const _ResumeSummaryState(
      {final List<ResumeSummaryDto> summaries = const [],
      this.resumeSummaryData = null,
      this.status = const FormStatus.initial()})
      : _summaries = summaries;

  final List<ResumeSummaryDto> _summaries;
  @override
  @JsonKey()
  List<ResumeSummaryDto> get summaries {
    if (_summaries is EqualUnmodifiableListView) return _summaries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_summaries);
  }

  @override
  @JsonKey()
  final ResumeSummaryDataDto? resumeSummaryData;
  @override
  @JsonKey()
  final FormStatus status;

  /// Create a copy of ResumeSummaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResumeSummaryStateCopyWith<_ResumeSummaryState> get copyWith =>
      __$ResumeSummaryStateCopyWithImpl<_ResumeSummaryState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResumeSummaryState &&
            const DeepCollectionEquality()
                .equals(other._summaries, _summaries) &&
            (identical(other.resumeSummaryData, resumeSummaryData) ||
                other.resumeSummaryData == resumeSummaryData) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_summaries),
      resumeSummaryData,
      status);

  @override
  String toString() {
    return 'ResumeSummaryState(summaries: $summaries, resumeSummaryData: $resumeSummaryData, status: $status)';
  }
}

/// @nodoc
abstract mixin class _$ResumeSummaryStateCopyWith<$Res>
    implements $ResumeSummaryStateCopyWith<$Res> {
  factory _$ResumeSummaryStateCopyWith(
          _ResumeSummaryState value, $Res Function(_ResumeSummaryState) _then) =
      __$ResumeSummaryStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<ResumeSummaryDto> summaries,
      ResumeSummaryDataDto? resumeSummaryData,
      FormStatus status});

  @override
  $ResumeSummaryDataDtoCopyWith<$Res>? get resumeSummaryData;
  @override
  $FormStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$ResumeSummaryStateCopyWithImpl<$Res>
    implements _$ResumeSummaryStateCopyWith<$Res> {
  __$ResumeSummaryStateCopyWithImpl(this._self, this._then);

  final _ResumeSummaryState _self;
  final $Res Function(_ResumeSummaryState) _then;

  /// Create a copy of ResumeSummaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? summaries = null,
    Object? resumeSummaryData = freezed,
    Object? status = null,
  }) {
    return _then(_ResumeSummaryState(
      summaries: null == summaries
          ? _self._summaries
          : summaries // ignore: cast_nullable_to_non_nullable
              as List<ResumeSummaryDto>,
      resumeSummaryData: freezed == resumeSummaryData
          ? _self.resumeSummaryData
          : resumeSummaryData // ignore: cast_nullable_to_non_nullable
              as ResumeSummaryDataDto?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
    ));
  }

  /// Create a copy of ResumeSummaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResumeSummaryDataDtoCopyWith<$Res>? get resumeSummaryData {
    if (_self.resumeSummaryData == null) {
      return null;
    }

    return $ResumeSummaryDataDtoCopyWith<$Res>(_self.resumeSummaryData!,
        (value) {
      return _then(_self.copyWith(resumeSummaryData: value));
    });
  }

  /// Create a copy of ResumeSummaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormStatusCopyWith<$Res> get status {
    return $FormStatusCopyWith<$Res>(_self.status, (value) {
      return _then(_self.copyWith(status: value));
    });
  }
}

// dart format on
