import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:simple_form_field/form/form_status.dart';

part 'resume_picker_state.freezed.dart';

@freezed
abstract class ResumePickerState with _$ResumePickerState {
  const factory ResumePickerState({
    @Default(FormStatus.initial()) FormStatus status,
    @Default(0) int uploadProgress,
    String? cvId,
    File? pickedFile,
  }) = _ResumePickerState;
}
