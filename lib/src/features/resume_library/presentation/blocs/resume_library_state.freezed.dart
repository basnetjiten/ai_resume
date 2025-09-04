// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_library_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ResumeLibraryState {

 List<ResumeSummaryDataDto> get summaries; FormStatus get status;
/// Create a copy of ResumeLibraryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResumeLibraryStateCopyWith<ResumeLibraryState> get copyWith => _$ResumeLibraryStateCopyWithImpl<ResumeLibraryState>(this as ResumeLibraryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResumeLibraryState&&const DeepCollectionEquality().equals(other.summaries, summaries)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(summaries),status);

@override
String toString() {
  return 'ResumeLibraryState(summaries: $summaries, status: $status)';
}


}

/// @nodoc
abstract mixin class $ResumeLibraryStateCopyWith<$Res>  {
  factory $ResumeLibraryStateCopyWith(ResumeLibraryState value, $Res Function(ResumeLibraryState) _then) = _$ResumeLibraryStateCopyWithImpl;
@useResult
$Res call({
 List<ResumeSummaryDataDto> summaries, FormStatus status
});


$FormStatusCopyWith<$Res> get status;

}
/// @nodoc
class _$ResumeLibraryStateCopyWithImpl<$Res>
    implements $ResumeLibraryStateCopyWith<$Res> {
  _$ResumeLibraryStateCopyWithImpl(this._self, this._then);

  final ResumeLibraryState _self;
  final $Res Function(ResumeLibraryState) _then;

/// Create a copy of ResumeLibraryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? summaries = null,Object? status = null,}) {
  return _then(_self.copyWith(
summaries: null == summaries ? _self.summaries : summaries // ignore: cast_nullable_to_non_nullable
as List<ResumeSummaryDataDto>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormStatus,
  ));
}
/// Create a copy of ResumeLibraryState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FormStatusCopyWith<$Res> get status {
  
  return $FormStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [ResumeLibraryState].
extension ResumeLibraryStatePatterns on ResumeLibraryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResumeLibraryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResumeLibraryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResumeLibraryState value)  $default,){
final _that = this;
switch (_that) {
case _ResumeLibraryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResumeLibraryState value)?  $default,){
final _that = this;
switch (_that) {
case _ResumeLibraryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ResumeSummaryDataDto> summaries,  FormStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResumeLibraryState() when $default != null:
return $default(_that.summaries,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ResumeSummaryDataDto> summaries,  FormStatus status)  $default,) {final _that = this;
switch (_that) {
case _ResumeLibraryState():
return $default(_that.summaries,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ResumeSummaryDataDto> summaries,  FormStatus status)?  $default,) {final _that = this;
switch (_that) {
case _ResumeLibraryState() when $default != null:
return $default(_that.summaries,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _ResumeLibraryState implements ResumeLibraryState {
  const _ResumeLibraryState({final  List<ResumeSummaryDataDto> summaries = const <dynamic>[], this.status = const FormStatus.initial()}): _summaries = summaries;
  

 final  List<ResumeSummaryDataDto> _summaries;
@override@JsonKey() List<ResumeSummaryDataDto> get summaries {
  if (_summaries is EqualUnmodifiableListView) return _summaries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_summaries);
}

@override@JsonKey() final  FormStatus status;

/// Create a copy of ResumeLibraryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResumeLibraryStateCopyWith<_ResumeLibraryState> get copyWith => __$ResumeLibraryStateCopyWithImpl<_ResumeLibraryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResumeLibraryState&&const DeepCollectionEquality().equals(other._summaries, _summaries)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_summaries),status);

@override
String toString() {
  return 'ResumeLibraryState(summaries: $summaries, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ResumeLibraryStateCopyWith<$Res> implements $ResumeLibraryStateCopyWith<$Res> {
  factory _$ResumeLibraryStateCopyWith(_ResumeLibraryState value, $Res Function(_ResumeLibraryState) _then) = __$ResumeLibraryStateCopyWithImpl;
@override @useResult
$Res call({
 List<ResumeSummaryDataDto> summaries, FormStatus status
});


@override $FormStatusCopyWith<$Res> get status;

}
/// @nodoc
class __$ResumeLibraryStateCopyWithImpl<$Res>
    implements _$ResumeLibraryStateCopyWith<$Res> {
  __$ResumeLibraryStateCopyWithImpl(this._self, this._then);

  final _ResumeLibraryState _self;
  final $Res Function(_ResumeLibraryState) _then;

/// Create a copy of ResumeLibraryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? summaries = null,Object? status = null,}) {
  return _then(_ResumeLibraryState(
summaries: null == summaries ? _self._summaries : summaries // ignore: cast_nullable_to_non_nullable
as List<ResumeSummaryDataDto>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormStatus,
  ));
}

/// Create a copy of ResumeLibraryState
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
