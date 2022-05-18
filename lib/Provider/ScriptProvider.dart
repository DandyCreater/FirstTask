// import 'package:flutter/cupertino.dart';
// import 'package:flutter_3des/flutter_3des.dart';
// import 'package:flutter_application_1/Models/ScriptModel.dart';
// import 'package:provider/provider.dart';

// class ScriptProvider with ChangeNotifier {
//   static String _key = "702040801020305070B0D1101020305070B0D1112110D0B0";
//   static const _iv = "070B0D1101020305";
//   String _title = "my name is flutter";

//   Future<ScriptModel> encrypt() async {
//     try {
//       var _encrypt = await Flutter3des.encrypt(_title, _key, iv: _iv);
//       return 
//     } catch (e) {}
//   }

//   int _index = 0;
//   String texts = "Ayo coba Encrypt aku ";
//   int get index => _index;
//   set index(int newValue) {
//     _index = newValue;
//     notifyListeners();
//   }
// }
