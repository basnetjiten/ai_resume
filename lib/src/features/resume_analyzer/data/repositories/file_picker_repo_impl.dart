import 'dart:io';
import 'package:ai_resume/src/core/services/file_picker_service.dart';
import 'package:ai_resume/src/core/typedefs/typedefs.dart';
import 'package:ai_resume/src/features/resume_analyzer/domain/repositories/file_repo.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: FilePickerRepository)
class FilePickerServiceImpl implements FilePickerRepository {
  FilePickerServiceImpl(this._filePickerService);

  late final FilePickerService _filePickerService;

  @override
  EitherFileOrError<File> pickPdfFile() async {
    final (pickedFile, errorMessage) =
        await _filePickerService.pickFileFromPhone();

    if (pickedFile != null) {
      return right(File(pickedFile.path));
    }
    return left(errorMessage ?? 'Unknown error occurred while picking file');
  }
}
