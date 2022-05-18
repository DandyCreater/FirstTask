import 'package:flutter/cupertino.dart';
import 'package:flutter_3des/flutter_3des.dart';
import 'dart:typed_data';

import 'package:flutter_application_1/Pages/encrypt.dart';


class EncryptProvider with ChangeNotifier{
  String text = "Testing test";
  int _isPressed = 3;

  int get isPressed => _isPressed;
  
  set isPressed (int newValue){
    _isPressed = newValue;
    notifyListeners();
  }
  // bool _isPressed = true;

  // bool get isPressed => _isPressed;
  // set isPressed (bool NewValue){
  //   _isPressed = NewValue;
  // }

  static String _key = "702040801020305070B0D1101020305070B0D1112110D0B0";
  static const _iv = "070B0D1101020305";
  

  Uint8List? _encrypt;
  String _decrypt = '';
  String _encryptHex = '';
  String _decryptHex = '';
  String _encryptBase64 ='';
  String _decryptBase64 = '';
  String output = "";
  String dekripsioutput = "";

  // String test = text;
  
  
Future<String> enkripsi() async{
  _encrypt = await Flutter3des.encrypt(text, _key, iv: _iv);
  // print(_encrypt);
   output = _encrypt.toString();
    print(output);
  return output;
}


Future<String> dekripsi() async{
  _encrypt = await Flutter3des.encrypt(text, _key, iv: _iv);
  _decrypt = await Flutter3des.decrypt(_encrypt!, _key, iv: _iv);
   dekripsioutput = (_decrypt).toString();
   return dekripsioutput;
}
//   Future<void> getdekripsi() async{
//     String hasil = await dekripsi();
//     print(hasil);
//   }

  // var _encrypt = Flutter3des(text, _key, iv: _iv);

// Object get isi => (_isPressed) ?  enkripsi()  : dekripsi(); 

// Object get isi => (_isPressed) == 0 ? enkripsi() : dekripsi(); 


// Object? get isi => _isPressed == 0 ? _encrypt : text;
Object get isi {
if(_isPressed == 0){
  enkripsi();
  return output;
}
else if(_isPressed == 1){
  dekripsi();
  return dekripsioutput;
}
else{
  return text;
}

}

}