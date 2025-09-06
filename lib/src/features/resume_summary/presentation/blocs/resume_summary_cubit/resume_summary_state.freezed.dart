// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_summary_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResumeSummaryState {
  List<ResumeSummaryDataDto> get summaries =>
      throw _privateConstructorUsedError;
  ResumeSummaryDataDto? get resumeSummaryData =>
      throw _privateConstructorUsedError;
  FormStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResumeSummaryStateCopyWith<ResumeSummaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeSummaryStateCopyWith<$Res> {
  factory $ResumeSummaryStateCopyWith(
          ResumeSummaryState value, $Res Function(ResumeSummaryState) then) =
      _$ResumeSummaryStateCopyWithImpl<$Res, ResumeSummaryState>;
  @useResult
  $Res call(
      {List<ResumeSummaryDataDto> summaries,
      ResumeSummaryDataDto? resumeSummaryData,
      FormStatus status});

  $ResumeSummaryDataDtoCopyWith<$Res>? get resumeSummaryData;
  $FormStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$ResumeSummaryStateCopyWithImpl<$Res, $Val extends ResumeSummaryState>
    implements $ResumeSummaryStateCopyWith<$Res> {
  _$ResumeSummaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summaries = null,
    Object? resumeSummaryData = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      summaries: null == summaries
          ? _value.summaries
          : summaries // ignore: cast_nullable_to_non_nullable
              as List<ResumeSummaryDataDto>,
      resumeSummaryData: freezed == resumeSummaryData
          ? _value.resumeSummaryData
          : resumeSummaryData // ignore: cast_nullable_to_non_nullable
              as ResumeSummaryDataDto?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResumeSummaryDataDtoCopyWith<$Res>? get resumeSummaryData {
    if (_value.resumeSummaryData == null) {
      return null;
    }

    return $ResumeSummaryDataDtoCopyWith<$Res>(_value.resumeSummaryData!,
        (value) {
      return _then(_value.copyWith(resumeSummaryData: value) as $Val);
    });
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
abstract class _$$ResumeSummaryStateImplCopyWith<$Res>
    implements $ResumeSummaryStateCopyWith<$Res> {
  factory _$$ResumeSummaryStateImplCopyWith(_$ResumeSummaryStateImpl value,
          $Res Function(_$ResumeSummaryStateImpl) then) =
      __$$ResumeSummaryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ResumeSummaryDataDto> summaries,
      ResumeSummaryDataDto? resumeSummaryData,
      FormStatus status});

  @override
  $ResumeSummaryDataDtoCopyWith<$Res>? get resumeSummaryData;
  @override
  $FormStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$ResumeSummaryStateImplCopyWithImpl<$Res>
    extends _$ResumeSummaryStateCopyWithImpl<$Res, _$ResumeSummaryStateImpl>
    implements _$$ResumeSummaryStateImplCopyWith<$Res> {
  __$$ResumeSummaryStateImplCopyWithImpl(_$ResumeSummaryStateImpl _value,
      $Res Function(_$ResumeSummaryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summaries = null,
    Object? resumeSummaryData = freezed,
    Object? status = null,
  }) {
    return _then(_$ResumeSummaryStateImpl(
      summaries: null == summaries
          ? _value._summaries
          : summaries // ignore: cast_nullable_to_non_nullable
              as List<ResumeSummaryDataDto>,
      resumeSummaryData: freezed == resumeSummaryData
          ? _value.resumeSummaryData
          : resumeSummaryData // ignore: cast_nullable_to_non_nullable
              as ResumeSummaryDataDto?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormStatus,
    ));
  }
}

/// @nodoc

class _$ResumeSummaryStateImpl implements _ResumeSummaryState {
  const _$ResumeSummaryStateImpl(
      {final List<ResumeSummaryDataDto> summaries =
          const <ResumeSummaryDataDto>[],
      this.resumeSummaryData = null,
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
  final ResumeSummaryDataDto? resumeSummaryData;
  @override
  @JsonKey()
  final FormStatus status;

  @override
  String toString() {
    return 'ResumeSummaryState(summaries: $summaries, resumeSummaryData: $resumeSummaryData, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeSummaryStateImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeSummaryStateImplCopyWith<_$ResumeSummaryStateImpl> get copyWith =>
      __$$ResumeSummaryStateImplCopyWithImpl<_$ResumeSummaryStateImpl>(
          this, _$identity);
}

abstract class _ResumeSummaryState implements ResumeSummaryState {
  const factory _ResumeSummaryState(
      {final List<ResumeSummaryDataDto> summaries,
      final ResumeSummaryDataDto? resumeSummaryData,
      final FormStatus status}) = _$ResumeSummaryStateImpl;

  @override
  List<ResumeSummaryDataDto> get summaries;
  @override
  ResumeSummaryDataDto? get resumeSummaryData;
  @override
  FormStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$ResumeSummaryStateImplCopyWith<_$ResumeSummaryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
