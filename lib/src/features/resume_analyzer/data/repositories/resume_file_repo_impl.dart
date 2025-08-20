import 'dart:io';
import 'package:ai_resume/src/core/base/base_repository.dart';
import 'package:ai_resume/src/core/services/file_picker_service.dart';
import 'package:ai_resume/src/core/typedefs/typedefs.dart';
import 'package:ai_resume/src/features/resume_analyzer/domain/repositories/resume_file_repo.dart';
import 'package:dio_filex_uploader/filex_utilities/filex_utils.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:dio_filex_uploader/diox_file_uploader.dart';

@Singleton(as: ResumeFileRepository)
class ResumeFileRepoImpl extends BaseRepository
    implements ResumeFileRepository {
  ResumeFileRepoImpl(this._filePickerService);

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

  @override
  EitherResponse<bool> uploadFile({required File pickedFile,
    required void Function(int sentBytes, int totalBytes) downloadProgress})  async {
    final filePath = pickedFile.path;
    return processApiCall(
        call: DioFileXUploader.uploadMultiPartFileFromURL(
          signedUrl: "https://journey-ai-webservice.onrender.com/api/v1/resume/upload",
          filePath: filePath,
          metaData: {"userId": "FUELED-777"},
          errorMessage: 'FILE UPLOAD FAILED',
          onProgress: downloadProgress,
        ),
        onSuccess: (status) => status,
    );
  }
}
