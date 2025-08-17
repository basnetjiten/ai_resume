import 'dart:io';

import 'package:ai_resume/src/core/typedefs/typedefs.dart';

abstract class ResumeFileRepository {
  EitherFileOrError<File> pickPdfFile();

  EitherResponse<bool> uploadFile({required File pickedFile});
}
