import 'package:ai_resume/src/features/resume_analyzer/presentation/blocs/file_picker/resume_picker_cubit.dart';
import 'package:ai_resume/src/features/resume_analyzer/presentation/blocs/file_picker/resume_picker_state.dart';
import 'package:ai_resume/src/features/resume_analyzer/presentation/widgets/pdf_icon_widget.dart';
import 'package:ai_resume/src/features/resume_analyzer/presentation/widgets/show_picked_file_widget.dart';
import 'package:ai_resume/src/features/resume_analyzer/presentation/widgets/upload_file_button_widget.dart';
import 'package:ai_resume/src/features/resume_analyzer/presentation/widgets/upload_progress_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UploadCardWidget extends StatelessWidget {
  const UploadCardWidget({super.key});

  Future<void> _pickFile(BuildContext context) async {
    context.read<ResumePickerCubit>().selectedPdfFile();
  }

  void _removeFile(BuildContext context) {
    context.read<ResumePickerCubit>().resetFile();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      constraints: BoxConstraints(maxWidth: 400),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
          colors: [
            Colors.white.withOpacity(0.2),
            Colors.white.withOpacity(0.1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(color: Colors.white.withOpacity(0.3), width: 1.5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<ResumePickerCubit, ResumePickerState>(
              buildWhen: (prev, curr) =>
                  prev.uploadProgress != curr.uploadProgress,
              builder: (context, state) {
                if (state.pickedFile == null) {
                  return Column(
                    children: [
                      PdfIconWidget(),
                      SizedBox(height: 24),
                      UploadFileButtonWidget(
                        onFilePick: () => _pickFile(context),
                      ),
                    ],
                  );
                } else {
                  return Column(
                    children: [
                      ShowPickedFileWidget(
                        pickedFile: state.pickedFile,
                        removeFile: () => _removeFile(context),
                      ),
                      SizedBox(height: 24),
                      if (state.uploadProgress > 0) UploadProgressWidget(),
                    ],
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
