import 'dart:convert';

import 'package:flutter/services.dart';
/* Require */
/*
flutter pub add http
*/
import 'package:http/http.dart' as http;
import '../Constant.dart';

abstract class RequestHelper
{
    static String _errorMessage = 'Fallo cargando los datos';

    static Future<List<dynamic>> getListFromConfig(String filename) async
    {
        final contents = await rootBundle.loadString('assets/contents/' + filename);
        return json.decode(contents);
    }

    static Future<Map<String, dynamic>> getObjectFromAPI(String url) async
    {
        http.Response response = await http.get(Uri.parse(Constant.apiUrl + url));
        if(response.statusCode == 200) { return json.decode(response.body); }
        else { throw new Exception(_errorMessage); }
    }

    static Future<List<dynamic>> getListFromAPI(String url) async
    {
        http.Response response = await http.get(Uri.parse(Constant.apiUrl + url));
        if(response.statusCode == 200) { return json.decode(response.body); }
        else { throw new Exception(_errorMessage); }
    }
}