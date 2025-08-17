// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_picker_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FilePickerState {
  FormStatus get status;
  File? get pickedFile;

  /// Create a copy of FilePickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FilePickerStateCopyWith<FilePickerState> get copyWith =>
      _$FilePickerStateCopyWithImpl<FilePickerState>(
          this as FilePickerState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FilePickerState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.pickedFile, pickedFile) ||
                other.pickedFile == pickedFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, pickedFile);

  @override
  String toString() {
    return 'FilePickerState(status: $status, pickedFile: $pickedFile)';
  }
}

/// @nodoc
abstract mixin class $FilePickerStateCopyWith<$Res> {
  factory $FilePickerStateCopyWith(
          FilePickerState value, $Res Function(FilePickerState) _then) =
      _$FilePickerStateCopyWithImpl;
  @useResult
  $Res call({FormStatus status, File? pickedFile});

  $FormStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$FilePickerStateCopyWithImpl<$Res>
    implements $FilePickerStateCopyWith<$Res> {
  _$FilePickerStateCopyWithImpl(this._self, this._then);

  final FilePickerState _self;
  final $Res Function(FilePickerState) _then;

  /// Create a copy of FilePickerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? pickedFile = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
      pickedFile: freezed == pickedFile
          ? _self.pickedFile
          : pickedFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }

  /// Create a copy of FilePickerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormStatusCopyWith<$Res> get status {
    return $FormStatusCopyWith<$Res>(_self.status, (value) {
      return _then(_self.copyWith(status: value));
    });
  }
}

/// Adds pattern-matching-related methods to [FilePickerState].
extension FilePickerStatePatterns on FilePickerState {
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
    TResult Function(_FilePickerState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FilePickerState() when $default != null:
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
    TResult Function(_FilePickerState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FilePickerState():
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
    TResult? Function(_FilePickerState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FilePickerState() when $default != null:
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
    TResult Function(FormStatus status, File? pickedFile)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FilePickerState() when $default != null:
        return $default(_that.status, _that.pickedFile);
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
    TResult Function(FormStatus status, File? pickedFile) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FilePickerState():
        return $default(_that.status, _that.pickedFile);
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
    TResult? Function(FormStatus status, File? pickedFile)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FilePickerState() when $default != null:
        return $default(_that.status, _that.pickedFile);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FilePickerState implements FilePickerState {
  const _FilePickerState(
      {this.status = const FormStatus.initial(), this.pickedFile});

  @override
  @JsonKey()
  final FormStatus status;
  @override
  final File? pickedFile;

  /// Create a copy of FilePickerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FilePickerStateCopyWith<_FilePickerState> get copyWith =>
      __$FilePickerStateCopyWithImpl<_FilePickerState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FilePickerState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.pickedFile, pickedFile) ||
                other.pickedFile == pickedFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, pickedFile);

  @override
  String toString() {
    return 'FilePickerState(status: $status, pickedFile: $pickedFile)';
  }
}

/// @nodoc
abstract mixin class _$FilePickerStateCopyWith<$Res>
    implements $FilePickerStateCopyWith<$Res> {
  factory _$FilePickerStateCopyWith(
          _FilePickerState value, $Res Function(_FilePickerState) _then) =
      __$FilePickerStateCopyWithImpl;
  @override
  @useResult
  $Res call({FormStatus status, File? pickedFile});

  @override
  $FormStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$FilePickerStateCopyWithImpl<$Res>
    implements _$FilePickerStateCopyWith<$Res> {
  __$FilePickerStateCopyWithImpl(this._self, this._then);

  final _FilePickerState _self;
  final $Res Function(_FilePickerState) _then;

  /// Create a copy of FilePickerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? pickedFile = freezed,
  }) {
    return _then(_FilePickerState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
      pickedFile: freezed == pickedFile
          ? _self.pickedFile
          : pickedFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }

  /// Create a copy of FilePickerState
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
