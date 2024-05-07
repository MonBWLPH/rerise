import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:web_rise_consulting/feature/services/models/service.dart';
import 'package:web_rise_consulting/feature/services/models/translate_service.dart';

class JsonHelper {
  static Future<TranslateService> loadServices() async {
    String jsonStringEN =
        await rootBundle.loadString('lib/data/services_en.json');
    List<dynamic> jsonListEN = json.decode(jsonStringEN);

   final en =  jsonListEN.map((json) => OurService.fromMap(json)).toList();

   String jsonStringTH =
        await rootBundle.loadString('lib/data/services_th.json');
    List<dynamic> jsonListTH = json.decode(jsonStringTH);

   final th =  jsonListTH.map((json) => OurService.fromMap(json)).toList();
    
   return TranslateService(en: en, th: th);
  }
}
