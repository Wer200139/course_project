import 'dart:typed_data';

import 'package:clokwise/packages/core/file_type_info.dart';

class CustomFile {
  final Uint8List bytes;
  final FileTypeInfo fileTypeInfo;
  final String? fileName;

  CustomFile({required this.bytes, required this.fileTypeInfo, this.fileName});
}
