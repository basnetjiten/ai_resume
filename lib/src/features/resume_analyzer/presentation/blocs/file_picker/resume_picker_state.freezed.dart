// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resume_picker_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ResumePickerState {

 FormStatus get status; int get uploadProgress; String? get fileName; File? get pickedFile;
/// Create a copy of ResumePickerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResumePickerStateCopyWith<ResumePickerState> get copyWith => _$ResumePickerStateCopyWithImpl<ResumePickerState>(this as ResumePickerState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResumePickerState&&(identical(other.status, status) || other.status == status)&&(identical(other.uploadProgress, uploadProgress) || other.uploadProgress == uploadProgress)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.pickedFile, pickedFile) || other.pickedFile == pickedFile));
}


@override
int get hashCode => Object.hash(runtimeType,status,uploadProgress,fileName,pickedFile);

@override
String toString() {
  return 'ResumePickerState(status: $status, uploadProgress: $uploadProgress, fileName: $fileName, pickedFile: $pickedFile)';
}


}

/// @nodoc
abstract mixin class $ResumePickerStateCopyWith<$Res>  {
  factory $ResumePickerStateCopyWith(ResumePickerState value, $Res Function(ResumePickerState) _then) = _$ResumePickerStateCopyWithImpl;
@useResult
$Res call({
 FormStatus status, int uploadProgress, String? fileName, File? pickedFile
});


$FormStatusCopyWith<$Res> get status;

}
/// @nodoc
class _$ResumePickerStateCopyWithImpl<$Res>
    implements $ResumePickerStateCopyWith<$Res> {
  _$ResumePickerStateCopyWithImpl(this._self, this._then);

  final ResumePickerState _self;
  final $Res Function(ResumePickerState) _then;

/// Create a copy of ResumePickerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? uploadProgress = null,Object? fileName = freezed,Object? pickedFile = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormStatus,uploadProgress: null == uploadProgress ? _self.uploadProgress : uploadProgress // ignore: cast_nullable_to_non_nullable
as int,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,pickedFile: freezed == pickedFile ? _self.pickedFile : pickedFile // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}
/// Create a copy of ResumePickerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FormStatusCopyWith<$Res> get status {
  
  return $FormStatusCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [ResumePickerState].
extension ResumePickerStatePatterns on ResumePickerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResumePickerState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResumePickerState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResumePickerState value)  $default,){
final _that = this;
switch (_that) {
case _ResumePickerState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResumePickerState value)?  $default,){
final _that = this;
switch (_that) {
case _ResumePickerState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FormStatus status,  int uploadProgress,  String? fileName,  File? pickedFile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResumePickerState() when $default != null:
return $default(_that.status,_that.uploadProgress,_that.fileName,_that.pickedFile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FormStatus status,  int uploadProgress,  String? fileName,  File? pickedFile)  $default,) {final _that = this;
switch (_that) {
case _ResumePickerState():
return $default(_that.status,_that.uploadProgress,_that.fileName,_that.pickedFile);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FormStatus status,  int uploadProgress,  String? fileName,  File? pickedFile)?  $default,) {final _that = this;
switch (_that) {
case _ResumePickerState() when $default != null:
return $default(_that.status,_that.uploadProgress,_that.fileName,_that.pickedFile);case _:
  return null;

}
}

}

/// @nodoc


class _ResumePickerState implements ResumePickerState {
  const _ResumePickerState({this.status = const FormStatus.initial(), this.uploadProgress = 0, this.fileName, this.pickedFile});
  

@override@JsonKey() final  FormStatus status;
@override@JsonKey() final  int uploadProgress;
@override final  String? fileName;
@override final  File? pickedFile;

/// Create a copy of ResumePickerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResumePickerStateCopyWith<_ResumePickerState> get copyWith => __$ResumePickerStateCopyWithImpl<_ResumePickerState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResumePickerState&&(identical(other.status, status) || other.status == status)&&(identical(other.uploadProgress, uploadProgress) || other.uploadProgress == uploadProgress)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.pickedFile, pickedFile) || other.pickedFile == pickedFile));
}


@override
int get hashCode => Object.hash(runtimeType,status,uploadProgress,fileName,pickedFile);

@override
String toString() {
  return 'ResumePickerState(status: $status, uploadProgress: $uploadProgress, fileName: $fileName, pickedFile: $pickedFile)';
}


}

/// @nodoc
abstract mixin class _$ResumePickerStateCopyWith<$Res> implements $ResumePickerStateCopyWith<$Res> {
  factory _$ResumePickerStateCopyWith(_ResumePickerState value, $Res Function(_ResumePickerState) _then) = __$ResumePickerStateCopyWithImpl;
@override @useResult
$Res call({
 FormStatus status, int uploadProgress, String? fileName, File? pickedFile
});


@override $FormStatusCopyWith<$Res> get status;

}
/// @nodoc
class __$ResumePickerStateCopyWithImpl<$Res>
    implements _$ResumePickerStateCopyWith<$Res> {
  __$ResumePickerStateCopyWithImpl(this._self, this._then);

  final _ResumePickerState _self;
  final $Res Function(_ResumePickerState) _then;

/// Create a copy of ResumePickerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? uploadProgress = null,Object? fileName = freezed,Object? pickedFile = freezed,}) {
  return _then(_ResumePickerState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormStatus,uploadProgress: null == uploadProgress ? _self.uploadProgress : uploadProgress // ignore: cast_nullable_to_non_nullable
as int,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,pickedFile: freezed == pickedFile ? _self.pickedFile : pickedFile // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}

/// Create a copy of ResumePickerState
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
