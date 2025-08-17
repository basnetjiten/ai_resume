import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class FilePickerService {
  /// File Picker from phone
   Future<(File?, String? message)> pickFileFromPhone(
      {List<String>? allowedExtensions}) async {

    File? pickedFiles;
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      type: FileType.custom,
      allowedExtensions: allowedExtensions ?? <String>['pdf'],
    );
    if (result != null) {
      pickedFiles = File(result.paths.first!);

      if (isSize1MB(pickedFiles.lengthSync())) {
        return (pickedFiles, null);
      }

      return (pickedFiles, "localization.imageSizeError");
    }
    return (pickedFiles, "localization.filePickError");
  }

  static bool isSize1MB(int sizeInBytes) => sizeInBytes <= 1 * 1024 * 1024;
}
