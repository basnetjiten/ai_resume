// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_picker_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResumePickerState {
  FormStatus get status => throw _privateConstructorUsedError;
  int get uploadProgress => throw _privateConstructorUsedError;
  String? get fileName => throw _privateConstructorUsedError;
  File? get pickedFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResumePickerStateCopyWith<ResumePickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumePickerStateCopyWith<$Res> {
  factory $ResumePickerStateCopyWith(
          ResumePickerState value, $Res Function(ResumePickerState) then) =
      _$ResumePickerStateCopyWithImpl<$Res, ResumePickerState>;
  @useResult
  $Res call(
      {FormStatus status,
      int uploadProgress,
      String? fileName,
      File? pickedFile});

  $FormStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$ResumePickerStateCopyWithImpl<$Res, $Val extends ResumePickerState>
    implements $ResumePickerStateCopyWith<$Res> {
  _$ResumePickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? uploadProgress = null,
    Object? fileName = freezed,
    Object? pickedFile = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
      uploadProgress: null == uploadProgress
          ? _value.uploadProgress
          : uploadProgress // ignore: cast_nullable_to_non_nullable
              as int,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      pickedFile: freezed == pickedFile
          ? _value.pickedFile
          : pickedFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FormStatusCopyWith<$Res> get status {
    return $FormStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResumePickerStateImplCopyWith<$Res>
    implements $ResumePickerStateCopyWith<$Res> {
  factory _$$ResumePickerStateImplCopyWith(_$ResumePickerStateImpl value,
          $Res Function(_$ResumePickerStateImpl) then) =
      __$$ResumePickerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormStatus status,
      int uploadProgress,
      String? fileName,
      File? pickedFile});

  @override
  $FormStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$ResumePickerStateImplCopyWithImpl<$Res>
    extends _$ResumePickerStateCopyWithImpl<$Res, _$ResumePickerStateImpl>
    implements _$$ResumePickerStateImplCopyWith<$Res> {
  __$$ResumePickerStateImplCopyWithImpl(_$ResumePickerStateImpl _value,
      $Res Function(_$ResumePickerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? uploadProgress = null,
    Object? fileName = freezed,
    Object? pickedFile = freezed,
  }) {
    return _then(_$ResumePickerStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
      uploadProgress: null == uploadProgress
          ? _value.uploadProgress
          : uploadProgress // ignore: cast_nullable_to_non_nullable
              as int,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      pickedFile: freezed == pickedFile
          ? _value.pickedFile
          : pickedFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$ResumePickerStateImpl implements _ResumePickerState {
  const _$ResumePickerStateImpl(
      {this.status = const FormStatus.initial(),
      this.uploadProgress = 0,
      this.fileName,
      this.pickedFile});

  @override
  @JsonKey()
  final FormStatus status;
  @override
  @JsonKey()
  final int uploadProgress;
  @override
  final String? fileName;
  @override
  final File? pickedFile;

  @override
  String toString() {
    return 'ResumePickerState(status: $status, uploadProgress: $uploadProgress, fileName: $fileName, pickedFile: $pickedFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumePickerStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.uploadProgress, uploadProgress) ||
                other.uploadProgress == uploadProgress) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.pickedFile, pickedFile) ||
                other.pickedFile == pickedFile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, uploadProgress, fileName, pickedFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumePickerStateImplCopyWith<_$ResumePickerStateImpl> get copyWith =>
      __$$ResumePickerStateImplCopyWithImpl<_$ResumePickerStateImpl>(
          this, _$identity);
}

abstract class _ResumePickerState implements ResumePickerState {
  const factory _ResumePickerState(
      {final FormStatus status,
      final int uploadProgress,
      final String? fileName,
      final File? pickedFile}) = _$ResumePickerStateImpl;

  @override
  FormStatus get status;
  @override
  int get uploadProgress;
  @override
  String? get fileName;
  @override
  File? get pickedFile;
  @override
  @JsonKey(ignore: true)
  _$$ResumePickerStateImplCopyWith<_$ResumePickerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
