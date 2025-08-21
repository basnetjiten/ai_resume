import 'dart:io';

import 'package:ai_resume/src/core/typedefs/typedefs.dart';

abstract class ResumeFileRepository {
  EitherFileOrError<File> pickPdfFile();
  EitherResponse<String> uploadFile({required File pickedFile,
    required void Function(int sentBytes, int totalBytes) downloadProgress});
}
