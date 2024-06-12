import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';


class JsonProvider extends ChangeNotifier{

    Map dataList = {};


    JsonProvider(){
      print('----------called--------------');
      parsing();
    }

    Future<void> parsing()
    async {
      print('---------function called----------');

      String? json = await rootBundle.loadString('key');
      dataList = jsonDecode(json);

    // objectList = dataList;


    print("----------done-----------");
    notifyListeners();
    }


}