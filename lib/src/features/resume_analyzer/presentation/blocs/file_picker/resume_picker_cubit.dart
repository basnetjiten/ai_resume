import 'dart:io';
import 'package:ai_resume/src/features/resume_analyzer/domain/repositories/resume_file_repo.dart';
import 'package:ai_resume/src/features/resume_analyzer/presentation/blocs/file_picker/resume_picker_state.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_form_field/base_bloc.dart';
import 'package:simple_form_field/form/form_status.dart';

@injectable
class ResumePickerCubit extends BaseBloc<void, ResumePickerState> {
  ResumePickerCubit(this._resumeFileRepository) : super(ResumePickerState());
  final ResumeFileRepository _resumeFileRepository;

  void selectedPdfFile() async {
    emit(state.copyWith(status: const FormStatus.submitting()));

    final pickStatus = await _resumeFileRepository.pickPdfFile();

    pickStatus.fold((String errorMessage) {
      emit(state.copyWith(status: FormStatus.error(error: errorMessage)));
    }, (File pdfFile) {
      _uploadFile(pickedFile: pdfFile);
    });
  }

  void _uploadFile({required File pickedFile}) {
    final File? pickedFile = state.pickedFile;

    if (state.pickedFile == null) {
      emit(state.copyWith(status: FormStatus.error(error: 'No file selected')));
      return;
    }

    handleAPICall(
      call: _resumeFileRepository.uploadFile(pickedFile: pickedFile!),
      onSuccess: (status) => state.copyWith(status: FormStatus.success()),
      onFailure: (error) =>
          state.copyWith(status: FormStatus.error(error: error)),
    );
  }

  void resetFile() {
    emit(ResumePickerState());
  }
}
