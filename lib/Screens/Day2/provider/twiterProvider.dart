// import 'dart:convert';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/services.dart';
//
// import '../model/data_model.dart';
//
// class PostProvider with ChangeNotifier {
//   PostResponse? _postResponse;
//
//   PostResponse? get postResponse => _postResponse;
//
//   Future<void> loadPostData() async {
//     String jsonString = await rootBundle.loadString('assets/data.json');
//     Map<String, dynamic> jsonMap = jsonDecode(jsonString);
//     _postResponse = PostResponse.fromJson(jsonMap);
//     notifyListeners();
//   }
// }


import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';



