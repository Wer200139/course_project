// https://en.wikipedia.org/wiki/List_of_file_signatures hex для файлов
import 'dart:typed_data';

class FileTypeInfo {
  static final FileTypeInfo unknown = FileTypeInfo._(
    extension: 'unknown',
    hex: 'unknown',
    assets: '',
    regExp: RegExp(
      r'\.unknown$',
      caseSensitive: false,
    ),
  );

  static final FileTypeInfo webm = FileTypeInfo._(
    extension: 'webm',
    hex: '',
    assets: '',
    regExp: RegExp(
      r'\.webm',
      caseSensitive: false,
    ),
  );

  static final FileTypeInfo jpeg = FileTypeInfo._(
    extension: 'jpeg',
    hex: 'FFD8FFE0',
    assets: '',
    regExp: RegExp(
      r'\.jpeg$',
      caseSensitive: false,
    ),
  );

  static final FileTypeInfo jpg = FileTypeInfo._(
    extension: 'jpg',
    hex: 'FFD8FFDB',
    assets: '',
    regExp: RegExp(
      r'\.jpg$',
      caseSensitive: false,
    ),
  );

  static final FileTypeInfo jpeg_2 = FileTypeInfo._(
    extension: 'jpeg',
    hex: 'FFD8FFE1',
    assets: '',
    regExp: RegExp(
      r'\.jpeg$',
      caseSensitive: false,
    ),
  );

  static final FileTypeInfo png = FileTypeInfo._(
    extension: 'png',
    hex: '89504E47',
    assets: '',
    regExp: RegExp(
      r'\.png$',
      caseSensitive: false,
    ),
  );


  final String extension;
  final String hex;
  final String assets;
  final RegExp regExp;

  bool get isImage =>
      extension == jpeg.extension ||
      extension == jpg.extension ||
      extension == jpeg_2.extension ||
      extension == png.extension;

  FileTypeInfo._({
    required this.extension,
    required this.hex,
    required this.assets,
    required this.regExp,
  });

  static FileTypeInfo getFileFormat(Uint8List bytes) {
    final type = bytes.sublist(0, 4);
    final bytesName = type.map((e) => e.toRadixString(16));

    return FileTypeInfo.fromHexToType(bytesName.join());
  }

  static FileTypeInfo fromHexToType(String type) {
    if (jpeg.hex == type.toUpperCase()) {
      return jpeg;
    }

    if (jpeg_2.hex == type.toUpperCase()) {
      return jpeg_2;
    }

    if (jpg.hex == type.toUpperCase()) {
      return jpg;
    }

    if (png.hex == type.toUpperCase()) {
      return png;
    }

    return unknown;
  }
}
