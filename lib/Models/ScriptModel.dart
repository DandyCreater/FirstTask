import 'dart:typed_data';

class ScriptModel {
  String titles;
  String title;
  Uint8List? encrypt;
  String decrypt;
  String encryptHex;
  String decryptHex;
  String encryptBase64;
  String decryptBase64;

  ScriptModel({
    required this.encrypt,
    required this.title,
    required this.titles,
    required this.decrypt,
    required this.encryptHex,
    required this.decryptBase64,
    required this.decryptHex,
    required this.encryptBase64,
  });
}
