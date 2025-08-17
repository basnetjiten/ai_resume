import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:simple_form_field/form/form_status.dart';

part 'file_picker_state.freezed.dart';

@freezed
abstract class FilePickerState with _$FilePickerState {
  const factory FilePickerState({
    @Default(FormStatus.initial()) FormStatus status,
    File? pickedFile,
  }) = _FilePickerState;
}
