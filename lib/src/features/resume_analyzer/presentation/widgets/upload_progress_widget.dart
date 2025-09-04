import 'package:ai_resume/src/features/resume_analyzer/presentation/blocs/file_picker/resume_picker_cubit.dart';
import 'package:ai_resume/src/features/resume_analyzer/presentation/blocs/file_picker/resume_picker_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadProgressWidget extends StatelessWidget {
  const UploadProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ResumePickerCubit, ResumePickerState, int>(
      selector: (ResumePickerState state) => state.uploadProgress,
      builder: (_, int progress) {
        double uploadProgress = progress / 100;
        return Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                if (uploadProgress < 1.0) {
                  context.read<ResumePickerCubit>().resetFile();
                }
              },
              child: LinearProgressIndicator(
                value: uploadProgress,
                backgroundColor: Colors.white.withOpacity(0.3),
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),

            const SizedBox(height: 16),
            Text(
              '${(uploadProgress * 100).toInt()}%',
              style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ],
        );
      },
    );
  }
}
