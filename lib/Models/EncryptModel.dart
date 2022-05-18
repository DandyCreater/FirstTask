import 'dart:typed_data';

class EncryptModel {
  Uint8List? _encrypt;
  String title;
  String _decrypt;
  String _encryptHex;
  String _decryptHex;
  String _encryptBase64;
  String _decryptBase64;
  String _text;

  EncryptModel(
    this.title,
    this._encrypt,
    this._decrypt,
    this._decryptBase64,
    this._decryptHex,
    this._encryptBase64,
    this._encryptHex,
    this._text,
  );
}
