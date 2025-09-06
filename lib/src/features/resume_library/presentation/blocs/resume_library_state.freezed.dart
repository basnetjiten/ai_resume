// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_library_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResumeLibraryState {
  List<ResumeSummaryDataDto> get summaries =>
      throw _privateConstructorUsedError;
  FormStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResumeLibraryStateCopyWith<ResumeLibraryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeLibraryStateCopyWith<$Res> {
  factory $ResumeLibraryStateCopyWith(
          ResumeLibraryState value, $Res Function(ResumeLibraryState) then) =
      _$ResumeLibraryStateCopyWithImpl<$Res, ResumeLibraryState>;
  @useResult
  $Res call({List<ResumeSummaryDataDto> summaries, FormStatus status});

  $FormStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$ResumeLibraryStateCopyWithImpl<$Res, $Val extends ResumeLibraryState>
    implements $ResumeLibraryStateCopyWith<$Res> {
  _$ResumeLibraryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summaries = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      summaries: null == summaries
          ? _value.summaries
          : summaries // ignore: cast_nullable_to_non_nullable
              as List<ResumeSummaryDataDto>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
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
abstract class _$$ResumeLibraryStateImplCopyWith<$Res>
    implements $ResumeLibraryStateCopyWith<$Res> {
  factory _$$ResumeLibraryStateImplCopyWith(_$ResumeLibraryStateImpl value,
          $Res Function(_$ResumeLibraryStateImpl) then) =
      __$$ResumeLibraryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ResumeSummaryDataDto> summaries, FormStatus status});

  @override
  $FormStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$ResumeLibraryStateImplCopyWithImpl<$Res>
    extends _$ResumeLibraryStateCopyWithImpl<$Res, _$ResumeLibraryStateImpl>
    implements _$$ResumeLibraryStateImplCopyWith<$Res> {
  __$$ResumeLibraryStateImplCopyWithImpl(_$ResumeLibraryStateImpl _value,
      $Res Function(_$ResumeLibraryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summaries = null,
    Object? status = null,
  }) {
    return _then(_$ResumeLibraryStateImpl(
      summaries: null == summaries
          ? _value._summaries
          : summaries // ignore: cast_nullable_to_non_nullable
              as List<ResumeSummaryDataDto>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
    ));
  }
}

/// @nodoc

class _$ResumeLibraryStateImpl implements _ResumeLibraryState {
  const _$ResumeLibraryStateImpl(
      {final List<ResumeSummaryDataDto> summaries =
          const <ResumeSummaryDataDto>[],
      this.status = const FormStatus.initial()})
      : _summaries = summaries;

  final List<ResumeSummaryDataDto> _summaries;
  @override
  @JsonKey()
  List<ResumeSummaryDataDto> get summaries {
    if (_summaries is EqualUnmodifiableListView) return _summaries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_summaries);
  }

  @override
  @JsonKey()
  final FormStatus status;

  @override
  String toString() {
    return 'ResumeLibraryState(summaries: $summaries, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeLibraryStateImpl &&
            const DeepCollectionEquality()
                .equals(other._summaries, _summaries) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_summaries), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeLibraryStateImplCopyWith<_$ResumeLibraryStateImpl> get copyWith =>
      __$$ResumeLibraryStateImplCopyWithImpl<_$ResumeLibraryStateImpl>(
          this, _$identity);
}

abstract class _ResumeLibraryState implements ResumeLibraryState {
  const factory _ResumeLibraryState(
      {final List<ResumeSummaryDataDto> summaries,
      final FormStatus status}) = _$ResumeLibraryStateImpl;

  @override
  List<ResumeSummaryDataDto> get summaries;
  @override
  FormStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$ResumeLibraryStateImplCopyWith<_$ResumeLibraryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
