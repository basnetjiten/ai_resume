import 'dart:io';
import 'package:ai_resume/src/features/resume_analyzer/domain/repositories/file_repo.dart';
import 'package:ai_resume/src/features/resume_analyzer/presentation/blocs/file_picker/file_picker_state.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_form_field/base_bloc.dart';
import 'package:simple_form_field/form/form_status.dart';

@injectable
class FilePickerCubit extends BaseBloc<void, FilePickerState> {
  FilePickerCubit(this._filePickerRepository) : super(FilePickerState());
  final FilePickerRepository _filePickerRepository;

  void selectedPdfFile() async {
    emit(state.copyWith(status: const FormStatus.submitting()));

    final pickStatus = await _filePickerRepository.pickPdfFile();

    pickStatus.fold((String errorMessage) {
      emit(state.copyWith(status: FormStatus.error(error: errorMessage)));
    }, (File pdfFile) {
      emit(state.copyWith(status: FormStatus.success(), pickedFile: pdfFile));
    });
  }

  void resetFile() {
    emit(FilePickerState());
  }
}
