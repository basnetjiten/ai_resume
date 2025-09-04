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

 bool get success; ResumeSummaryDataDto get data;
/// Create a copy of ResumeSummaryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResumeSummaryDtoCopyWith<ResumeSummaryDto> get copyWith => _$ResumeSummaryDtoCopyWithImpl<ResumeSummaryDto>(this as ResumeSummaryDto, _$identity);

  /// Serializes this ResumeSummaryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResumeSummaryDto&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'ResumeSummaryDto(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class $ResumeSummaryDtoCopyWith<$Res>  {
  factory $ResumeSummaryDtoCopyWith(ResumeSummaryDto value, $Res Function(ResumeSummaryDto) _then) = _$ResumeSummaryDtoCopyWithImpl;
@useResult
$Res call({
 bool success, ResumeSummaryDataDto data
});


$ResumeSummaryDataDtoCopyWith<$Res> get data;

}
/// @nodoc
class _$ResumeSummaryDtoCopyWithImpl<$Res>
    implements $ResumeSummaryDtoCopyWith<$Res> {
  _$ResumeSummaryDtoCopyWithImpl(this._self, this._then);

  final ResumeSummaryDto _self;
  final $Res Function(ResumeSummaryDto) _then;

/// Create a copy of ResumeSummaryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ResumeSummaryDataDto,
  ));
}
/// Create a copy of ResumeSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResumeSummaryDataDtoCopyWith<$Res> get data {
  
  return $ResumeSummaryDataDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResumeSummaryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResumeSummaryDto() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResumeSummaryDto value)  $default,){
final _that = this;
switch (_that) {
case _ResumeSummaryDto():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResumeSummaryDto value)?  $default,){
final _that = this;
switch (_that) {
case _ResumeSummaryDto() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  ResumeSummaryDataDto data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResumeSummaryDto() when $default != null:
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  ResumeSummaryDataDto data)  $default,) {final _that = this;
switch (_that) {
case _ResumeSummaryDto():
return $default(_that.success,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  ResumeSummaryDataDto data)?  $default,) {final _that = this;
switch (_that) {
case _ResumeSummaryDto() when $default != null:
return $default(_that.success,_that.data);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ResumeSummaryDto implements ResumeSummaryDto {
  const _ResumeSummaryDto({required this.success, required this.data});
  factory _ResumeSummaryDto.fromJson(Map<String, dynamic> json) => _$ResumeSummaryDtoFromJson(json);

@override final  bool success;
@override final  ResumeSummaryDataDto data;

/// Create a copy of ResumeSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResumeSummaryDtoCopyWith<_ResumeSummaryDto> get copyWith => __$ResumeSummaryDtoCopyWithImpl<_ResumeSummaryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResumeSummaryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResumeSummaryDto&&(identical(other.success, success) || other.success == success)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,data);

@override
String toString() {
  return 'ResumeSummaryDto(success: $success, data: $data)';
}


}

/// @nodoc
abstract mixin class _$ResumeSummaryDtoCopyWith<$Res> implements $ResumeSummaryDtoCopyWith<$Res> {
  factory _$ResumeSummaryDtoCopyWith(_ResumeSummaryDto value, $Res Function(_ResumeSummaryDto) _then) = __$ResumeSummaryDtoCopyWithImpl;
@override @useResult
$Res call({
 bool success, ResumeSummaryDataDto data
});


@override $ResumeSummaryDataDtoCopyWith<$Res> get data;

}
/// @nodoc
class __$ResumeSummaryDtoCopyWithImpl<$Res>
    implements _$ResumeSummaryDtoCopyWith<$Res> {
  __$ResumeSummaryDtoCopyWithImpl(this._self, this._then);

  final _ResumeSummaryDto _self;
  final $Res Function(_ResumeSummaryDto) _then;

/// Create a copy of ResumeSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,}) {
  return _then(_ResumeSummaryDto(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ResumeSummaryDataDto,
  ));
}

/// Create a copy of ResumeSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ResumeSummaryDataDtoCopyWith<$Res> get data {
  
  return $ResumeSummaryDataDtoCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ResumeSummaryDataDto {

@JsonKey(name: '_id') String get id; String get candidateName; String get role; String get seniority; List<String> get skills; String get summary; AnalysisDto get analysis; String? get experience; String? get uploadedDate;
/// Create a copy of ResumeSummaryDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResumeSummaryDataDtoCopyWith<ResumeSummaryDataDto> get copyWith => _$ResumeSummaryDataDtoCopyWithImpl<ResumeSummaryDataDto>(this as ResumeSummaryDataDto, _$identity);

  /// Serializes this ResumeSummaryDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResumeSummaryDataDto&&(identical(other.id, id) || other.id == id)&&(identical(other.candidateName, candidateName) || other.candidateName == candidateName)&&(identical(other.role, role) || other.role == role)&&(identical(other.seniority, seniority) || other.seniority == seniority)&&const DeepCollectionEquality().equals(other.skills, skills)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.analysis, analysis) || other.analysis == analysis)&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.uploadedDate, uploadedDate) || other.uploadedDate == uploadedDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,candidateName,role,seniority,const DeepCollectionEquality().hash(skills),summary,analysis,experience,uploadedDate);

@override
String toString() {
  return 'ResumeSummaryDataDto(id: $id, candidateName: $candidateName, role: $role, seniority: $seniority, skills: $skills, summary: $summary, analysis: $analysis, experience: $experience, uploadedDate: $uploadedDate)';
}


}

/// @nodoc
abstract mixin class $ResumeSummaryDataDtoCopyWith<$Res>  {
  factory $ResumeSummaryDataDtoCopyWith(ResumeSummaryDataDto value, $Res Function(ResumeSummaryDataDto) _then) = _$ResumeSummaryDataDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String candidateName, String role, String seniority, List<String> skills, String summary, AnalysisDto analysis, String? experience, String? uploadedDate
});


$AnalysisDtoCopyWith<$Res> get analysis;

}
/// @nodoc
class _$ResumeSummaryDataDtoCopyWithImpl<$Res>
    implements $ResumeSummaryDataDtoCopyWith<$Res> {
  _$ResumeSummaryDataDtoCopyWithImpl(this._self, this._then);

  final ResumeSummaryDataDto _self;
  final $Res Function(ResumeSummaryDataDto) _then;

/// Create a copy of ResumeSummaryDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? candidateName = null,Object? role = null,Object? seniority = null,Object? skills = null,Object? summary = null,Object? analysis = null,Object? experience = freezed,Object? uploadedDate = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,candidateName: null == candidateName ? _self.candidateName : candidateName // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,seniority: null == seniority ? _self.seniority : seniority // ignore: cast_nullable_to_non_nullable
as String,skills: null == skills ? _self.skills : skills // ignore: cast_nullable_to_non_nullable
as List<String>,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,analysis: null == analysis ? _self.analysis : analysis // ignore: cast_nullable_to_non_nullable
as AnalysisDto,experience: freezed == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as String?,uploadedDate: freezed == uploadedDate ? _self.uploadedDate : uploadedDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ResumeSummaryDataDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalysisDtoCopyWith<$Res> get analysis {
  
  return $AnalysisDtoCopyWith<$Res>(_self.analysis, (value) {
    return _then(_self.copyWith(analysis: value));
  });
}
}


/// Adds pattern-matching-related methods to [ResumeSummaryDataDto].
extension ResumeSummaryDataDtoPatterns on ResumeSummaryDataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResumeSummaryDataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResumeSummaryDataDto() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResumeSummaryDataDto value)  $default,){
final _that = this;
switch (_that) {
case _ResumeSummaryDataDto():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResumeSummaryDataDto value)?  $default,){
final _that = this;
switch (_that) {
case _ResumeSummaryDataDto() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String candidateName,  String role,  String seniority,  List<String> skills,  String summary,  AnalysisDto analysis,  String? experience,  String? uploadedDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResumeSummaryDataDto() when $default != null:
return $default(_that.id,_that.candidateName,_that.role,_that.seniority,_that.skills,_that.summary,_that.analysis,_that.experience,_that.uploadedDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String candidateName,  String role,  String seniority,  List<String> skills,  String summary,  AnalysisDto analysis,  String? experience,  String? uploadedDate)  $default,) {final _that = this;
switch (_that) {
case _ResumeSummaryDataDto():
return $default(_that.id,_that.candidateName,_that.role,_that.seniority,_that.skills,_that.summary,_that.analysis,_that.experience,_that.uploadedDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String candidateName,  String role,  String seniority,  List<String> skills,  String summary,  AnalysisDto analysis,  String? experience,  String? uploadedDate)?  $default,) {final _that = this;
switch (_that) {
case _ResumeSummaryDataDto() when $default != null:
return $default(_that.id,_that.candidateName,_that.role,_that.seniority,_that.skills,_that.summary,_that.analysis,_that.experience,_that.uploadedDate);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ResumeSummaryDataDto implements ResumeSummaryDataDto {
  const _ResumeSummaryDataDto({@JsonKey(name: '_id') required this.id, required this.candidateName, required this.role, required this.seniority, required final  List<String> skills, required this.summary, required this.analysis, this.experience = '-', this.uploadedDate}): _skills = skills;
  factory _ResumeSummaryDataDto.fromJson(Map<String, dynamic> json) => _$ResumeSummaryDataDtoFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String candidateName;
@override final  String role;
@override final  String seniority;
 final  List<String> _skills;
@override List<String> get skills {
  if (_skills is EqualUnmodifiableListView) return _skills;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_skills);
}

@override final  String summary;
@override final  AnalysisDto analysis;
@override@JsonKey() final  String? experience;
@override final  String? uploadedDate;

/// Create a copy of ResumeSummaryDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResumeSummaryDataDtoCopyWith<_ResumeSummaryDataDto> get copyWith => __$ResumeSummaryDataDtoCopyWithImpl<_ResumeSummaryDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResumeSummaryDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResumeSummaryDataDto&&(identical(other.id, id) || other.id == id)&&(identical(other.candidateName, candidateName) || other.candidateName == candidateName)&&(identical(other.role, role) || other.role == role)&&(identical(other.seniority, seniority) || other.seniority == seniority)&&const DeepCollectionEquality().equals(other._skills, _skills)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.analysis, analysis) || other.analysis == analysis)&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.uploadedDate, uploadedDate) || other.uploadedDate == uploadedDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,candidateName,role,seniority,const DeepCollectionEquality().hash(_skills),summary,analysis,experience,uploadedDate);

@override
String toString() {
  return 'ResumeSummaryDataDto(id: $id, candidateName: $candidateName, role: $role, seniority: $seniority, skills: $skills, summary: $summary, analysis: $analysis, experience: $experience, uploadedDate: $uploadedDate)';
}


}

/// @nodoc
abstract mixin class _$ResumeSummaryDataDtoCopyWith<$Res> implements $ResumeSummaryDataDtoCopyWith<$Res> {
  factory _$ResumeSummaryDataDtoCopyWith(_ResumeSummaryDataDto value, $Res Function(_ResumeSummaryDataDto) _then) = __$ResumeSummaryDataDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String candidateName, String role, String seniority, List<String> skills, String summary, AnalysisDto analysis, String? experience, String? uploadedDate
});


@override $AnalysisDtoCopyWith<$Res> get analysis;

}
/// @nodoc
class __$ResumeSummaryDataDtoCopyWithImpl<$Res>
    implements _$ResumeSummaryDataDtoCopyWith<$Res> {
  __$ResumeSummaryDataDtoCopyWithImpl(this._self, this._then);

  final _ResumeSummaryDataDto _self;
  final $Res Function(_ResumeSummaryDataDto) _then;

/// Create a copy of ResumeSummaryDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? candidateName = null,Object? role = null,Object? seniority = null,Object? skills = null,Object? summary = null,Object? analysis = null,Object? experience = freezed,Object? uploadedDate = freezed,}) {
  return _then(_ResumeSummaryDataDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,candidateName: null == candidateName ? _self.candidateName : candidateName // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,seniority: null == seniority ? _self.seniority : seniority // ignore: cast_nullable_to_non_nullable
as String,skills: null == skills ? _self._skills : skills // ignore: cast_nullable_to_non_nullable
as List<String>,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as String,analysis: null == analysis ? _self.analysis : analysis // ignore: cast_nullable_to_non_nullable
as AnalysisDto,experience: freezed == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as String?,uploadedDate: freezed == uploadedDate ? _self.uploadedDate : uploadedDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ResumeSummaryDataDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalysisDtoCopyWith<$Res> get analysis {
  
  return $AnalysisDtoCopyWith<$Res>(_self.analysis, (value) {
    return _then(_self.copyWith(analysis: value));
  });
}
}


/// @nodoc
mixin _$AnalysisDto {

 List<String> get candidateStrengths; List<String> get candidateWeaknesses; RiskFactorDto get riskFactor; RewardFactorDto get rewardFactor; String get overallFitRating; String get justification;
/// Create a copy of AnalysisDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalysisDtoCopyWith<AnalysisDto> get copyWith => _$AnalysisDtoCopyWithImpl<AnalysisDto>(this as AnalysisDto, _$identity);

  /// Serializes this AnalysisDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalysisDto&&const DeepCollectionEquality().equals(other.candidateStrengths, candidateStrengths)&&const DeepCollectionEquality().equals(other.candidateWeaknesses, candidateWeaknesses)&&(identical(other.riskFactor, riskFactor) || other.riskFactor == riskFactor)&&(identical(other.rewardFactor, rewardFactor) || other.rewardFactor == rewardFactor)&&(identical(other.overallFitRating, overallFitRating) || other.overallFitRating == overallFitRating)&&(identical(other.justification, justification) || other.justification == justification));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(candidateStrengths),const DeepCollectionEquality().hash(candidateWeaknesses),riskFactor,rewardFactor,overallFitRating,justification);

@override
String toString() {
  return 'AnalysisDto(candidateStrengths: $candidateStrengths, candidateWeaknesses: $candidateWeaknesses, riskFactor: $riskFactor, rewardFactor: $rewardFactor, overallFitRating: $overallFitRating, justification: $justification)';
}


}

/// @nodoc
abstract mixin class $AnalysisDtoCopyWith<$Res>  {
  factory $AnalysisDtoCopyWith(AnalysisDto value, $Res Function(AnalysisDto) _then) = _$AnalysisDtoCopyWithImpl;
@useResult
$Res call({
 List<String> candidateStrengths, List<String> candidateWeaknesses, RiskFactorDto riskFactor, RewardFactorDto rewardFactor, String overallFitRating, String justification
});


$RiskFactorDtoCopyWith<$Res> get riskFactor;$RewardFactorDtoCopyWith<$Res> get rewardFactor;

}
/// @nodoc
class _$AnalysisDtoCopyWithImpl<$Res>
    implements $AnalysisDtoCopyWith<$Res> {
  _$AnalysisDtoCopyWithImpl(this._self, this._then);

  final AnalysisDto _self;
  final $Res Function(AnalysisDto) _then;

/// Create a copy of AnalysisDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? candidateStrengths = null,Object? candidateWeaknesses = null,Object? riskFactor = null,Object? rewardFactor = null,Object? overallFitRating = null,Object? justification = null,}) {
  return _then(_self.copyWith(
candidateStrengths: null == candidateStrengths ? _self.candidateStrengths : candidateStrengths // ignore: cast_nullable_to_non_nullable
as List<String>,candidateWeaknesses: null == candidateWeaknesses ? _self.candidateWeaknesses : candidateWeaknesses // ignore: cast_nullable_to_non_nullable
as List<String>,riskFactor: null == riskFactor ? _self.riskFactor : riskFactor // ignore: cast_nullable_to_non_nullable
as RiskFactorDto,rewardFactor: null == rewardFactor ? _self.rewardFactor : rewardFactor // ignore: cast_nullable_to_non_nullable
as RewardFactorDto,overallFitRating: null == overallFitRating ? _self.overallFitRating : overallFitRating // ignore: cast_nullable_to_non_nullable
as String,justification: null == justification ? _self.justification : justification // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of AnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RiskFactorDtoCopyWith<$Res> get riskFactor {
  
  return $RiskFactorDtoCopyWith<$Res>(_self.riskFactor, (value) {
    return _then(_self.copyWith(riskFactor: value));
  });
}/// Create a copy of AnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RewardFactorDtoCopyWith<$Res> get rewardFactor {
  
  return $RewardFactorDtoCopyWith<$Res>(_self.rewardFactor, (value) {
    return _then(_self.copyWith(rewardFactor: value));
  });
}
}


/// Adds pattern-matching-related methods to [AnalysisDto].
extension AnalysisDtoPatterns on AnalysisDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalysisDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalysisDto() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalysisDto value)  $default,){
final _that = this;
switch (_that) {
case _AnalysisDto():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalysisDto value)?  $default,){
final _that = this;
switch (_that) {
case _AnalysisDto() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> candidateStrengths,  List<String> candidateWeaknesses,  RiskFactorDto riskFactor,  RewardFactorDto rewardFactor,  String overallFitRating,  String justification)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalysisDto() when $default != null:
return $default(_that.candidateStrengths,_that.candidateWeaknesses,_that.riskFactor,_that.rewardFactor,_that.overallFitRating,_that.justification);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> candidateStrengths,  List<String> candidateWeaknesses,  RiskFactorDto riskFactor,  RewardFactorDto rewardFactor,  String overallFitRating,  String justification)  $default,) {final _that = this;
switch (_that) {
case _AnalysisDto():
return $default(_that.candidateStrengths,_that.candidateWeaknesses,_that.riskFactor,_that.rewardFactor,_that.overallFitRating,_that.justification);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> candidateStrengths,  List<String> candidateWeaknesses,  RiskFactorDto riskFactor,  RewardFactorDto rewardFactor,  String overallFitRating,  String justification)?  $default,) {final _that = this;
switch (_that) {
case _AnalysisDto() when $default != null:
return $default(_that.candidateStrengths,_that.candidateWeaknesses,_that.riskFactor,_that.rewardFactor,_that.overallFitRating,_that.justification);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _AnalysisDto implements AnalysisDto {
  const _AnalysisDto({required final  List<String> candidateStrengths, required final  List<String> candidateWeaknesses, required this.riskFactor, required this.rewardFactor, required this.overallFitRating, required this.justification}): _candidateStrengths = candidateStrengths,_candidateWeaknesses = candidateWeaknesses;
  factory _AnalysisDto.fromJson(Map<String, dynamic> json) => _$AnalysisDtoFromJson(json);

 final  List<String> _candidateStrengths;
@override List<String> get candidateStrengths {
  if (_candidateStrengths is EqualUnmodifiableListView) return _candidateStrengths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_candidateStrengths);
}

 final  List<String> _candidateWeaknesses;
@override List<String> get candidateWeaknesses {
  if (_candidateWeaknesses is EqualUnmodifiableListView) return _candidateWeaknesses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_candidateWeaknesses);
}

@override final  RiskFactorDto riskFactor;
@override final  RewardFactorDto rewardFactor;
@override final  String overallFitRating;
@override final  String justification;

/// Create a copy of AnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalysisDtoCopyWith<_AnalysisDto> get copyWith => __$AnalysisDtoCopyWithImpl<_AnalysisDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalysisDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalysisDto&&const DeepCollectionEquality().equals(other._candidateStrengths, _candidateStrengths)&&const DeepCollectionEquality().equals(other._candidateWeaknesses, _candidateWeaknesses)&&(identical(other.riskFactor, riskFactor) || other.riskFactor == riskFactor)&&(identical(other.rewardFactor, rewardFactor) || other.rewardFactor == rewardFactor)&&(identical(other.overallFitRating, overallFitRating) || other.overallFitRating == overallFitRating)&&(identical(other.justification, justification) || other.justification == justification));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_candidateStrengths),const DeepCollectionEquality().hash(_candidateWeaknesses),riskFactor,rewardFactor,overallFitRating,justification);

@override
String toString() {
  return 'AnalysisDto(candidateStrengths: $candidateStrengths, candidateWeaknesses: $candidateWeaknesses, riskFactor: $riskFactor, rewardFactor: $rewardFactor, overallFitRating: $overallFitRating, justification: $justification)';
}


}

/// @nodoc
abstract mixin class _$AnalysisDtoCopyWith<$Res> implements $AnalysisDtoCopyWith<$Res> {
  factory _$AnalysisDtoCopyWith(_AnalysisDto value, $Res Function(_AnalysisDto) _then) = __$AnalysisDtoCopyWithImpl;
@override @useResult
$Res call({
 List<String> candidateStrengths, List<String> candidateWeaknesses, RiskFactorDto riskFactor, RewardFactorDto rewardFactor, String overallFitRating, String justification
});


@override $RiskFactorDtoCopyWith<$Res> get riskFactor;@override $RewardFactorDtoCopyWith<$Res> get rewardFactor;

}
/// @nodoc
class __$AnalysisDtoCopyWithImpl<$Res>
    implements _$AnalysisDtoCopyWith<$Res> {
  __$AnalysisDtoCopyWithImpl(this._self, this._then);

  final _AnalysisDto _self;
  final $Res Function(_AnalysisDto) _then;

/// Create a copy of AnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? candidateStrengths = null,Object? candidateWeaknesses = null,Object? riskFactor = null,Object? rewardFactor = null,Object? overallFitRating = null,Object? justification = null,}) {
  return _then(_AnalysisDto(
candidateStrengths: null == candidateStrengths ? _self._candidateStrengths : candidateStrengths // ignore: cast_nullable_to_non_nullable
as List<String>,candidateWeaknesses: null == candidateWeaknesses ? _self._candidateWeaknesses : candidateWeaknesses // ignore: cast_nullable_to_non_nullable
as List<String>,riskFactor: null == riskFactor ? _self.riskFactor : riskFactor // ignore: cast_nullable_to_non_nullable
as RiskFactorDto,rewardFactor: null == rewardFactor ? _self.rewardFactor : rewardFactor // ignore: cast_nullable_to_non_nullable
as RewardFactorDto,overallFitRating: null == overallFitRating ? _self.overallFitRating : overallFitRating // ignore: cast_nullable_to_non_nullable
as String,justification: null == justification ? _self.justification : justification // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RiskFactorDtoCopyWith<$Res> get riskFactor {
  
  return $RiskFactorDtoCopyWith<$Res>(_self.riskFactor, (value) {
    return _then(_self.copyWith(riskFactor: value));
  });
}/// Create a copy of AnalysisDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RewardFactorDtoCopyWith<$Res> get rewardFactor {
  
  return $RewardFactorDtoCopyWith<$Res>(_self.rewardFactor, (value) {
    return _then(_self.copyWith(rewardFactor: value));
  });
}
}


/// @nodoc
mixin _$RiskFactorDto {

 String get score; String get explanation;
/// Create a copy of RiskFactorDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RiskFactorDtoCopyWith<RiskFactorDto> get copyWith => _$RiskFactorDtoCopyWithImpl<RiskFactorDto>(this as RiskFactorDto, _$identity);

  /// Serializes this RiskFactorDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RiskFactorDto&&(identical(other.score, score) || other.score == score)&&(identical(other.explanation, explanation) || other.explanation == explanation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,explanation);

@override
String toString() {
  return 'RiskFactorDto(score: $score, explanation: $explanation)';
}


}

/// @nodoc
abstract mixin class $RiskFactorDtoCopyWith<$Res>  {
  factory $RiskFactorDtoCopyWith(RiskFactorDto value, $Res Function(RiskFactorDto) _then) = _$RiskFactorDtoCopyWithImpl;
@useResult
$Res call({
 String score, String explanation
});




}
/// @nodoc
class _$RiskFactorDtoCopyWithImpl<$Res>
    implements $RiskFactorDtoCopyWith<$Res> {
  _$RiskFactorDtoCopyWithImpl(this._self, this._then);

  final RiskFactorDto _self;
  final $Res Function(RiskFactorDto) _then;

/// Create a copy of RiskFactorDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? score = null,Object? explanation = null,}) {
  return _then(_self.copyWith(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as String,explanation: null == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RiskFactorDto].
extension RiskFactorDtoPatterns on RiskFactorDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RiskFactorDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RiskFactorDto() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RiskFactorDto value)  $default,){
final _that = this;
switch (_that) {
case _RiskFactorDto():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RiskFactorDto value)?  $default,){
final _that = this;
switch (_that) {
case _RiskFactorDto() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String score,  String explanation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RiskFactorDto() when $default != null:
return $default(_that.score,_that.explanation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String score,  String explanation)  $default,) {final _that = this;
switch (_that) {
case _RiskFactorDto():
return $default(_that.score,_that.explanation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String score,  String explanation)?  $default,) {final _that = this;
switch (_that) {
case _RiskFactorDto() when $default != null:
return $default(_that.score,_that.explanation);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _RiskFactorDto implements RiskFactorDto {
  const _RiskFactorDto({required this.score, required this.explanation});
  factory _RiskFactorDto.fromJson(Map<String, dynamic> json) => _$RiskFactorDtoFromJson(json);

@override final  String score;
@override final  String explanation;

/// Create a copy of RiskFactorDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RiskFactorDtoCopyWith<_RiskFactorDto> get copyWith => __$RiskFactorDtoCopyWithImpl<_RiskFactorDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RiskFactorDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RiskFactorDto&&(identical(other.score, score) || other.score == score)&&(identical(other.explanation, explanation) || other.explanation == explanation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,explanation);

@override
String toString() {
  return 'RiskFactorDto(score: $score, explanation: $explanation)';
}


}

/// @nodoc
abstract mixin class _$RiskFactorDtoCopyWith<$Res> implements $RiskFactorDtoCopyWith<$Res> {
  factory _$RiskFactorDtoCopyWith(_RiskFactorDto value, $Res Function(_RiskFactorDto) _then) = __$RiskFactorDtoCopyWithImpl;
@override @useResult
$Res call({
 String score, String explanation
});




}
/// @nodoc
class __$RiskFactorDtoCopyWithImpl<$Res>
    implements _$RiskFactorDtoCopyWith<$Res> {
  __$RiskFactorDtoCopyWithImpl(this._self, this._then);

  final _RiskFactorDto _self;
  final $Res Function(_RiskFactorDto) _then;

/// Create a copy of RiskFactorDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? score = null,Object? explanation = null,}) {
  return _then(_RiskFactorDto(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as String,explanation: null == explanation ? _self.explanation : explanation // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RewardFactorDto {

 String get score; String get value; String get fit;
/// Create a copy of RewardFactorDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RewardFactorDtoCopyWith<RewardFactorDto> get copyWith => _$RewardFactorDtoCopyWithImpl<RewardFactorDto>(this as RewardFactorDto, _$identity);

  /// Serializes this RewardFactorDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RewardFactorDto&&(identical(other.score, score) || other.score == score)&&(identical(other.value, value) || other.value == value)&&(identical(other.fit, fit) || other.fit == fit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,value,fit);

@override
String toString() {
  return 'RewardFactorDto(score: $score, value: $value, fit: $fit)';
}


}

/// @nodoc
abstract mixin class $RewardFactorDtoCopyWith<$Res>  {
  factory $RewardFactorDtoCopyWith(RewardFactorDto value, $Res Function(RewardFactorDto) _then) = _$RewardFactorDtoCopyWithImpl;
@useResult
$Res call({
 String score, String value, String fit
});




}
/// @nodoc
class _$RewardFactorDtoCopyWithImpl<$Res>
    implements $RewardFactorDtoCopyWith<$Res> {
  _$RewardFactorDtoCopyWithImpl(this._self, this._then);

  final RewardFactorDto _self;
  final $Res Function(RewardFactorDto) _then;

/// Create a copy of RewardFactorDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? score = null,Object? value = null,Object? fit = null,}) {
  return _then(_self.copyWith(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,fit: null == fit ? _self.fit : fit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RewardFactorDto].
extension RewardFactorDtoPatterns on RewardFactorDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RewardFactorDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RewardFactorDto() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RewardFactorDto value)  $default,){
final _that = this;
switch (_that) {
case _RewardFactorDto():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RewardFactorDto value)?  $default,){
final _that = this;
switch (_that) {
case _RewardFactorDto() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String score,  String value,  String fit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RewardFactorDto() when $default != null:
return $default(_that.score,_that.value,_that.fit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String score,  String value,  String fit)  $default,) {final _that = this;
switch (_that) {
case _RewardFactorDto():
return $default(_that.score,_that.value,_that.fit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String score,  String value,  String fit)?  $default,) {final _that = this;
switch (_that) {
case _RewardFactorDto() when $default != null:
return $default(_that.score,_that.value,_that.fit);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _RewardFactorDto implements RewardFactorDto {
  const _RewardFactorDto({required this.score, required this.value, required this.fit});
  factory _RewardFactorDto.fromJson(Map<String, dynamic> json) => _$RewardFactorDtoFromJson(json);

@override final  String score;
@override final  String value;
@override final  String fit;

/// Create a copy of RewardFactorDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RewardFactorDtoCopyWith<_RewardFactorDto> get copyWith => __$RewardFactorDtoCopyWithImpl<_RewardFactorDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RewardFactorDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RewardFactorDto&&(identical(other.score, score) || other.score == score)&&(identical(other.value, value) || other.value == value)&&(identical(other.fit, fit) || other.fit == fit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,score,value,fit);

@override
String toString() {
  return 'RewardFactorDto(score: $score, value: $value, fit: $fit)';
}


}

/// @nodoc
abstract mixin class _$RewardFactorDtoCopyWith<$Res> implements $RewardFactorDtoCopyWith<$Res> {
  factory _$RewardFactorDtoCopyWith(_RewardFactorDto value, $Res Function(_RewardFactorDto) _then) = __$RewardFactorDtoCopyWithImpl;
@override @useResult
$Res call({
 String score, String value, String fit
});




}
/// @nodoc
class __$RewardFactorDtoCopyWithImpl<$Res>
    implements _$RewardFactorDtoCopyWith<$Res> {
  __$RewardFactorDtoCopyWithImpl(this._self, this._then);

  final _RewardFactorDto _self;
  final $Res Function(_RewardFactorDto) _then;

/// Create a copy of RewardFactorDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? score = null,Object? value = null,Object? fit = null,}) {
  return _then(_RewardFactorDto(
score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,fit: null == fit ? _self.fit : fit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
