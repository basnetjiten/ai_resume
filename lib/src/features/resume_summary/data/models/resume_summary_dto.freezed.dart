// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_summary_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResumeSummaryDto _$ResumeSummaryDtoFromJson(Map<String, dynamic> json) {
  return _ResumeSummaryDto.fromJson(json);
}

/// @nodoc
mixin _$ResumeSummaryDto {
  bool get success => throw _privateConstructorUsedError;
  ResumeSummaryDataDto get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResumeSummaryDtoCopyWith<ResumeSummaryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeSummaryDtoCopyWith<$Res> {
  factory $ResumeSummaryDtoCopyWith(
          ResumeSummaryDto value, $Res Function(ResumeSummaryDto) then) =
      _$ResumeSummaryDtoCopyWithImpl<$Res, ResumeSummaryDto>;
  @useResult
  $Res call({bool success, ResumeSummaryDataDto data});

  $ResumeSummaryDataDtoCopyWith<$Res> get data;
}

/// @nodoc
class _$ResumeSummaryDtoCopyWithImpl<$Res, $Val extends ResumeSummaryDto>
    implements $ResumeSummaryDtoCopyWith<$Res> {
  _$ResumeSummaryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ResumeSummaryDataDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResumeSummaryDataDtoCopyWith<$Res> get data {
    return $ResumeSummaryDataDtoCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResumeSummaryDtoImplCopyWith<$Res>
    implements $ResumeSummaryDtoCopyWith<$Res> {
  factory _$$ResumeSummaryDtoImplCopyWith(_$ResumeSummaryDtoImpl value,
          $Res Function(_$ResumeSummaryDtoImpl) then) =
      __$$ResumeSummaryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, ResumeSummaryDataDto data});

  @override
  $ResumeSummaryDataDtoCopyWith<$Res> get data;
}

/// @nodoc
class __$$ResumeSummaryDtoImplCopyWithImpl<$Res>
    extends _$ResumeSummaryDtoCopyWithImpl<$Res, _$ResumeSummaryDtoImpl>
    implements _$$ResumeSummaryDtoImplCopyWith<$Res> {
  __$$ResumeSummaryDtoImplCopyWithImpl(_$ResumeSummaryDtoImpl _value,
      $Res Function(_$ResumeSummaryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$ResumeSummaryDtoImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ResumeSummaryDataDto,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ResumeSummaryDtoImpl implements _ResumeSummaryDto {
  const _$ResumeSummaryDtoImpl({required this.success, required this.data});

  factory _$ResumeSummaryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResumeSummaryDtoImplFromJson(json);

  @override
  final bool success;
  @override
  final ResumeSummaryDataDto data;

  @override
  String toString() {
    return 'ResumeSummaryDto(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeSummaryDtoImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeSummaryDtoImplCopyWith<_$ResumeSummaryDtoImpl> get copyWith =>
      __$$ResumeSummaryDtoImplCopyWithImpl<_$ResumeSummaryDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResumeSummaryDtoImplToJson(
      this,
    );
  }
}

abstract class _ResumeSummaryDto implements ResumeSummaryDto {
  const factory _ResumeSummaryDto(
      {required final bool success,
      required final ResumeSummaryDataDto data}) = _$ResumeSummaryDtoImpl;

  factory _ResumeSummaryDto.fromJson(Map<String, dynamic> json) =
      _$ResumeSummaryDtoImpl.fromJson;

  @override
  bool get success;
  @override
  ResumeSummaryDataDto get data;
  @override
  @JsonKey(ignore: true)
  _$$ResumeSummaryDtoImplCopyWith<_$ResumeSummaryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResumeSummaryDataDto _$ResumeSummaryDataDtoFromJson(Map<String, dynamic> json) {
  return _ResumeSummaryDataDto.fromJson(json);
}

/// @nodoc
mixin _$ResumeSummaryDataDto {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get candidateName => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get seniority => throw _privateConstructorUsedError;
  List<String> get skills => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  AnalysisDto get analysis => throw _privateConstructorUsedError;
  String? get experience => throw _privateConstructorUsedError;
  String? get uploadedDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResumeSummaryDataDtoCopyWith<ResumeSummaryDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeSummaryDataDtoCopyWith<$Res> {
  factory $ResumeSummaryDataDtoCopyWith(ResumeSummaryDataDto value,
          $Res Function(ResumeSummaryDataDto) then) =
      _$ResumeSummaryDataDtoCopyWithImpl<$Res, ResumeSummaryDataDto>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String candidateName,
      String role,
      String seniority,
      List<String> skills,
      String summary,
      AnalysisDto analysis,
      String? experience,
      String? uploadedDate});

  $AnalysisDtoCopyWith<$Res> get analysis;
}

/// @nodoc
class _$ResumeSummaryDataDtoCopyWithImpl<$Res,
        $Val extends ResumeSummaryDataDto>
    implements $ResumeSummaryDataDtoCopyWith<$Res> {
  _$ResumeSummaryDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? candidateName = null,
    Object? role = null,
    Object? seniority = null,
    Object? skills = null,
    Object? summary = null,
    Object? analysis = null,
    Object? experience = freezed,
    Object? uploadedDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      candidateName: null == candidateName
          ? _value.candidateName
          : candidateName // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      seniority: null == seniority
          ? _value.seniority
          : seniority // ignore: cast_nullable_to_non_nullable
              as String,
      skills: null == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      analysis: null == analysis
          ? _value.analysis
          : analysis // ignore: cast_nullable_to_non_nullable
              as AnalysisDto,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedDate: freezed == uploadedDate
          ? _value.uploadedDate
          : uploadedDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnalysisDtoCopyWith<$Res> get analysis {
    return $AnalysisDtoCopyWith<$Res>(_value.analysis, (value) {
      return _then(_value.copyWith(analysis: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResumeSummaryDataDtoImplCopyWith<$Res>
    implements $ResumeSummaryDataDtoCopyWith<$Res> {
  factory _$$ResumeSummaryDataDtoImplCopyWith(_$ResumeSummaryDataDtoImpl value,
          $Res Function(_$ResumeSummaryDataDtoImpl) then) =
      __$$ResumeSummaryDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      String candidateName,
      String role,
      String seniority,
      List<String> skills,
      String summary,
      AnalysisDto analysis,
      String? experience,
      String? uploadedDate});

  @override
  $AnalysisDtoCopyWith<$Res> get analysis;
}

/// @nodoc
class __$$ResumeSummaryDataDtoImplCopyWithImpl<$Res>
    extends _$ResumeSummaryDataDtoCopyWithImpl<$Res, _$ResumeSummaryDataDtoImpl>
    implements _$$ResumeSummaryDataDtoImplCopyWith<$Res> {
  __$$ResumeSummaryDataDtoImplCopyWithImpl(_$ResumeSummaryDataDtoImpl _value,
      $Res Function(_$ResumeSummaryDataDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? candidateName = null,
    Object? role = null,
    Object? seniority = null,
    Object? skills = null,
    Object? summary = null,
    Object? analysis = null,
    Object? experience = freezed,
    Object? uploadedDate = freezed,
  }) {
    return _then(_$ResumeSummaryDataDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      candidateName: null == candidateName
          ? _value.candidateName
          : candidateName // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      seniority: null == seniority
          ? _value.seniority
          : seniority // ignore: cast_nullable_to_non_nullable
              as String,
      skills: null == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      analysis: null == analysis
          ? _value.analysis
          : analysis // ignore: cast_nullable_to_non_nullable
              as AnalysisDto,
      experience: freezed == experience
          ? _value.experience
          : experience // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedDate: freezed == uploadedDate
          ? _value.uploadedDate
          : uploadedDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ResumeSummaryDataDtoImpl implements _ResumeSummaryDataDto {
  const _$ResumeSummaryDataDtoImpl(
      {@JsonKey(name: '_id') required this.id,
      required this.candidateName,
      required this.role,
      required this.seniority,
      required final List<String> skills,
      required this.summary,
      required this.analysis,
      this.experience = '-',
      this.uploadedDate})
      : _skills = skills;

  factory _$ResumeSummaryDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResumeSummaryDataDtoImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String candidateName;
  @override
  final String role;
  @override
  final String seniority;
  final List<String> _skills;
  @override
  List<String> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  @override
  final String summary;
  @override
  final AnalysisDto analysis;
  @override
  @JsonKey()
  final String? experience;
  @override
  final String? uploadedDate;

  @override
  String toString() {
    return 'ResumeSummaryDataDto(id: $id, candidateName: $candidateName, role: $role, seniority: $seniority, skills: $skills, summary: $summary, analysis: $analysis, experience: $experience, uploadedDate: $uploadedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeSummaryDataDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.candidateName, candidateName) ||
                other.candidateName == candidateName) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.seniority, seniority) ||
                other.seniority == seniority) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.analysis, analysis) ||
                other.analysis == analysis) &&
            (identical(other.experience, experience) ||
                other.experience == experience) &&
            (identical(other.uploadedDate, uploadedDate) ||
                other.uploadedDate == uploadedDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      candidateName,
      role,
      seniority,
      const DeepCollectionEquality().hash(_skills),
      summary,
      analysis,
      experience,
      uploadedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResumeSummaryDataDtoImplCopyWith<_$ResumeSummaryDataDtoImpl>
      get copyWith =>
          __$$ResumeSummaryDataDtoImplCopyWithImpl<_$ResumeSummaryDataDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResumeSummaryDataDtoImplToJson(
      this,
    );
  }
}

abstract class _ResumeSummaryDataDto implements ResumeSummaryDataDto {
  const factory _ResumeSummaryDataDto(
      {@JsonKey(name: '_id') required final String id,
      required final String candidateName,
      required final String role,
      required final String seniority,
      required final List<String> skills,
      required final String summary,
      required final AnalysisDto analysis,
      final String? experience,
      final String? uploadedDate}) = _$ResumeSummaryDataDtoImpl;

  factory _ResumeSummaryDataDto.fromJson(Map<String, dynamic> json) =
      _$ResumeSummaryDataDtoImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get candidateName;
  @override
  String get role;
  @override
  String get seniority;
  @override
  List<String> get skills;
  @override
  String get summary;
  @override
  AnalysisDto get analysis;
  @override
  String? get experience;
  @override
  String? get uploadedDate;
  @override
  @JsonKey(ignore: true)
  _$$ResumeSummaryDataDtoImplCopyWith<_$ResumeSummaryDataDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AnalysisDto _$AnalysisDtoFromJson(Map<String, dynamic> json) {
  return _AnalysisDto.fromJson(json);
}

/// @nodoc
mixin _$AnalysisDto {
  List<String> get candidateStrengths => throw _privateConstructorUsedError;
  List<String> get candidateWeaknesses => throw _privateConstructorUsedError;
  RiskFactorDto get riskFactor => throw _privateConstructorUsedError;
  RewardFactorDto get rewardFactor => throw _privateConstructorUsedError;
  String get overallFitRating => throw _privateConstructorUsedError;
  String get justification => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnalysisDtoCopyWith<AnalysisDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalysisDtoCopyWith<$Res> {
  factory $AnalysisDtoCopyWith(
          AnalysisDto value, $Res Function(AnalysisDto) then) =
      _$AnalysisDtoCopyWithImpl<$Res, AnalysisDto>;
  @useResult
  $Res call(
      {List<String> candidateStrengths,
      List<String> candidateWeaknesses,
      RiskFactorDto riskFactor,
      RewardFactorDto rewardFactor,
      String overallFitRating,
      String justification});

  $RiskFactorDtoCopyWith<$Res> get riskFactor;
  $RewardFactorDtoCopyWith<$Res> get rewardFactor;
}

/// @nodoc
class _$AnalysisDtoCopyWithImpl<$Res, $Val extends AnalysisDto>
    implements $AnalysisDtoCopyWith<$Res> {
  _$AnalysisDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? candidateStrengths = null,
    Object? candidateWeaknesses = null,
    Object? riskFactor = null,
    Object? rewardFactor = null,
    Object? overallFitRating = null,
    Object? justification = null,
  }) {
    return _then(_value.copyWith(
      candidateStrengths: null == candidateStrengths
          ? _value.candidateStrengths
          : candidateStrengths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      candidateWeaknesses: null == candidateWeaknesses
          ? _value.candidateWeaknesses
          : candidateWeaknesses // ignore: cast_nullable_to_non_nullable
              as List<String>,
      riskFactor: null == riskFactor
          ? _value.riskFactor
          : riskFactor // ignore: cast_nullable_to_non_nullable
              as RiskFactorDto,
      rewardFactor: null == rewardFactor
          ? _value.rewardFactor
          : rewardFactor // ignore: cast_nullable_to_non_nullable
              as RewardFactorDto,
      overallFitRating: null == overallFitRating
          ? _value.overallFitRating
          : overallFitRating // ignore: cast_nullable_to_non_nullable
              as String,
      justification: null == justification
          ? _value.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RiskFactorDtoCopyWith<$Res> get riskFactor {
    return $RiskFactorDtoCopyWith<$Res>(_value.riskFactor, (value) {
      return _then(_value.copyWith(riskFactor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RewardFactorDtoCopyWith<$Res> get rewardFactor {
    return $RewardFactorDtoCopyWith<$Res>(_value.rewardFactor, (value) {
      return _then(_value.copyWith(rewardFactor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnalysisDtoImplCopyWith<$Res>
    implements $AnalysisDtoCopyWith<$Res> {
  factory _$$AnalysisDtoImplCopyWith(
          _$AnalysisDtoImpl value, $Res Function(_$AnalysisDtoImpl) then) =
      __$$AnalysisDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> candidateStrengths,
      List<String> candidateWeaknesses,
      RiskFactorDto riskFactor,
      RewardFactorDto rewardFactor,
      String overallFitRating,
      String justification});

  @override
  $RiskFactorDtoCopyWith<$Res> get riskFactor;
  @override
  $RewardFactorDtoCopyWith<$Res> get rewardFactor;
}

/// @nodoc
class __$$AnalysisDtoImplCopyWithImpl<$Res>
    extends _$AnalysisDtoCopyWithImpl<$Res, _$AnalysisDtoImpl>
    implements _$$AnalysisDtoImplCopyWith<$Res> {
  __$$AnalysisDtoImplCopyWithImpl(
      _$AnalysisDtoImpl _value, $Res Function(_$AnalysisDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? candidateStrengths = null,
    Object? candidateWeaknesses = null,
    Object? riskFactor = null,
    Object? rewardFactor = null,
    Object? overallFitRating = null,
    Object? justification = null,
  }) {
    return _then(_$AnalysisDtoImpl(
      candidateStrengths: null == candidateStrengths
          ? _value._candidateStrengths
          : candidateStrengths // ignore: cast_nullable_to_non_nullable
              as List<String>,
      candidateWeaknesses: null == candidateWeaknesses
          ? _value._candidateWeaknesses
          : candidateWeaknesses // ignore: cast_nullable_to_non_nullable
              as List<String>,
      riskFactor: null == riskFactor
          ? _value.riskFactor
          : riskFactor // ignore: cast_nullable_to_non_nullable
              as RiskFactorDto,
      rewardFactor: null == rewardFactor
          ? _value.rewardFactor
          : rewardFactor // ignore: cast_nullable_to_non_nullable
              as RewardFactorDto,
      overallFitRating: null == overallFitRating
          ? _value.overallFitRating
          : overallFitRating // ignore: cast_nullable_to_non_nullable
              as String,
      justification: null == justification
          ? _value.justification
          : justification // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AnalysisDtoImpl implements _AnalysisDto {
  const _$AnalysisDtoImpl(
      {required final List<String> candidateStrengths,
      required final List<String> candidateWeaknesses,
      required this.riskFactor,
      required this.rewardFactor,
      required this.overallFitRating,
      required this.justification})
      : _candidateStrengths = candidateStrengths,
        _candidateWeaknesses = candidateWeaknesses;

  factory _$AnalysisDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalysisDtoImplFromJson(json);

  final List<String> _candidateStrengths;
  @override
  List<String> get candidateStrengths {
    if (_candidateStrengths is EqualUnmodifiableListView)
      return _candidateStrengths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_candidateStrengths);
  }

  final List<String> _candidateWeaknesses;
  @override
  List<String> get candidateWeaknesses {
    if (_candidateWeaknesses is EqualUnmodifiableListView)
      return _candidateWeaknesses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_candidateWeaknesses);
  }

  @override
  final RiskFactorDto riskFactor;
  @override
  final RewardFactorDto rewardFactor;
  @override
  final String overallFitRating;
  @override
  final String justification;

  @override
  String toString() {
    return 'AnalysisDto(candidateStrengths: $candidateStrengths, candidateWeaknesses: $candidateWeaknesses, riskFactor: $riskFactor, rewardFactor: $rewardFactor, overallFitRating: $overallFitRating, justification: $justification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalysisDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._candidateStrengths, _candidateStrengths) &&
            const DeepCollectionEquality()
                .equals(other._candidateWeaknesses, _candidateWeaknesses) &&
            (identical(other.riskFactor, riskFactor) ||
                other.riskFactor == riskFactor) &&
            (identical(other.rewardFactor, rewardFactor) ||
                other.rewardFactor == rewardFactor) &&
            (identical(other.overallFitRating, overallFitRating) ||
                other.overallFitRating == overallFitRating) &&
            (identical(other.justification, justification) ||
                other.justification == justification));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_candidateStrengths),
      const DeepCollectionEquality().hash(_candidateWeaknesses),
      riskFactor,
      rewardFactor,
      overallFitRating,
      justification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalysisDtoImplCopyWith<_$AnalysisDtoImpl> get copyWith =>
      __$$AnalysisDtoImplCopyWithImpl<_$AnalysisDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalysisDtoImplToJson(
      this,
    );
  }
}

abstract class _AnalysisDto implements AnalysisDto {
  const factory _AnalysisDto(
      {required final List<String> candidateStrengths,
      required final List<String> candidateWeaknesses,
      required final RiskFactorDto riskFactor,
      required final RewardFactorDto rewardFactor,
      required final String overallFitRating,
      required final String justification}) = _$AnalysisDtoImpl;

  factory _AnalysisDto.fromJson(Map<String, dynamic> json) =
      _$AnalysisDtoImpl.fromJson;

  @override
  List<String> get candidateStrengths;
  @override
  List<String> get candidateWeaknesses;
  @override
  RiskFactorDto get riskFactor;
  @override
  RewardFactorDto get rewardFactor;
  @override
  String get overallFitRating;
  @override
  String get justification;
  @override
  @JsonKey(ignore: true)
  _$$AnalysisDtoImplCopyWith<_$AnalysisDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RiskFactorDto _$RiskFactorDtoFromJson(Map<String, dynamic> json) {
  return _RiskFactorDto.fromJson(json);
}

/// @nodoc
mixin _$RiskFactorDto {
  String get score => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RiskFactorDtoCopyWith<RiskFactorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiskFactorDtoCopyWith<$Res> {
  factory $RiskFactorDtoCopyWith(
          RiskFactorDto value, $Res Function(RiskFactorDto) then) =
      _$RiskFactorDtoCopyWithImpl<$Res, RiskFactorDto>;
  @useResult
  $Res call({String score, String explanation});
}

/// @nodoc
class _$RiskFactorDtoCopyWithImpl<$Res, $Val extends RiskFactorDto>
    implements $RiskFactorDtoCopyWith<$Res> {
  _$RiskFactorDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? explanation = null,
  }) {
    return _then(_value.copyWith(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RiskFactorDtoImplCopyWith<$Res>
    implements $RiskFactorDtoCopyWith<$Res> {
  factory _$$RiskFactorDtoImplCopyWith(
          _$RiskFactorDtoImpl value, $Res Function(_$RiskFactorDtoImpl) then) =
      __$$RiskFactorDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String score, String explanation});
}

/// @nodoc
class __$$RiskFactorDtoImplCopyWithImpl<$Res>
    extends _$RiskFactorDtoCopyWithImpl<$Res, _$RiskFactorDtoImpl>
    implements _$$RiskFactorDtoImplCopyWith<$Res> {
  __$$RiskFactorDtoImplCopyWithImpl(
      _$RiskFactorDtoImpl _value, $Res Function(_$RiskFactorDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? explanation = null,
  }) {
    return _then(_$RiskFactorDtoImpl(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$RiskFactorDtoImpl implements _RiskFactorDto {
  const _$RiskFactorDtoImpl({required this.score, required this.explanation});

  factory _$RiskFactorDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RiskFactorDtoImplFromJson(json);

  @override
  final String score;
  @override
  final String explanation;

  @override
  String toString() {
    return 'RiskFactorDto(score: $score, explanation: $explanation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RiskFactorDtoImpl &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, score, explanation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RiskFactorDtoImplCopyWith<_$RiskFactorDtoImpl> get copyWith =>
      __$$RiskFactorDtoImplCopyWithImpl<_$RiskFactorDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RiskFactorDtoImplToJson(
      this,
    );
  }
}

abstract class _RiskFactorDto implements RiskFactorDto {
  const factory _RiskFactorDto(
      {required final String score,
      required final String explanation}) = _$RiskFactorDtoImpl;

  factory _RiskFactorDto.fromJson(Map<String, dynamic> json) =
      _$RiskFactorDtoImpl.fromJson;

  @override
  String get score;
  @override
  String get explanation;
  @override
  @JsonKey(ignore: true)
  _$$RiskFactorDtoImplCopyWith<_$RiskFactorDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RewardFactorDto _$RewardFactorDtoFromJson(Map<String, dynamic> json) {
  return _RewardFactorDto.fromJson(json);
}

/// @nodoc
mixin _$RewardFactorDto {
  String get score => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  String get fit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RewardFactorDtoCopyWith<RewardFactorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RewardFactorDtoCopyWith<$Res> {
  factory $RewardFactorDtoCopyWith(
          RewardFactorDto value, $Res Function(RewardFactorDto) then) =
      _$RewardFactorDtoCopyWithImpl<$Res, RewardFactorDto>;
  @useResult
  $Res call({String score, String value, String fit});
}

/// @nodoc
class _$RewardFactorDtoCopyWithImpl<$Res, $Val extends RewardFactorDto>
    implements $RewardFactorDtoCopyWith<$Res> {
  _$RewardFactorDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? value = null,
    Object? fit = null,
  }) {
    return _then(_value.copyWith(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      fit: null == fit
          ? _value.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RewardFactorDtoImplCopyWith<$Res>
    implements $RewardFactorDtoCopyWith<$Res> {
  factory _$$RewardFactorDtoImplCopyWith(_$RewardFactorDtoImpl value,
          $Res Function(_$RewardFactorDtoImpl) then) =
      __$$RewardFactorDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String score, String value, String fit});
}

/// @nodoc
class __$$RewardFactorDtoImplCopyWithImpl<$Res>
    extends _$RewardFactorDtoCopyWithImpl<$Res, _$RewardFactorDtoImpl>
    implements _$$RewardFactorDtoImplCopyWith<$Res> {
  __$$RewardFactorDtoImplCopyWithImpl(
      _$RewardFactorDtoImpl _value, $Res Function(_$RewardFactorDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? score = null,
    Object? value = null,
    Object? fit = null,
  }) {
    return _then(_$RewardFactorDtoImpl(
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      fit: null == fit
          ? _value.fit
          : fit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$RewardFactorDtoImpl implements _RewardFactorDto {
  const _$RewardFactorDtoImpl(
      {required this.score, required this.value, required this.fit});

  factory _$RewardFactorDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RewardFactorDtoImplFromJson(json);

  @override
  final String score;
  @override
  final String value;
  @override
  final String fit;

  @override
  String toString() {
    return 'RewardFactorDto(score: $score, value: $value, fit: $fit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RewardFactorDtoImpl &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.fit, fit) || other.fit == fit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, score, value, fit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RewardFactorDtoImplCopyWith<_$RewardFactorDtoImpl> get copyWith =>
      __$$RewardFactorDtoImplCopyWithImpl<_$RewardFactorDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RewardFactorDtoImplToJson(
      this,
    );
  }
}

abstract class _RewardFactorDto implements RewardFactorDto {
  const factory _RewardFactorDto(
      {required final String score,
      required final String value,
      required final String fit}) = _$RewardFactorDtoImpl;

  factory _RewardFactorDto.fromJson(Map<String, dynamic> json) =
      _$RewardFactorDtoImpl.fromJson;

  @override
  String get score;
  @override
  String get value;
  @override
  String get fit;
  @override
  @JsonKey(ignore: true)
  _$$RewardFactorDtoImplCopyWith<_$RewardFactorDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
