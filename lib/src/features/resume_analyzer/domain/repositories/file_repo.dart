import 'dart:io';

import 'package:ai_resume/src/core/typedefs/typedefs.dart';

abstract class FilePickerRepository {
  EitherFileOrError<File> pickPdfFile();
}
