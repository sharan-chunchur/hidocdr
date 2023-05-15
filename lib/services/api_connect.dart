import 'dart:convert';

import 'package:http/http.dart' as http;


class ApiConnect{

  Future<Map<String, dynamic>?>? connectToDoc() async{
    const String apiUrl = 'http://devapi.hidoc.co:8080/HidocWebApp/api/getArticlesByUid';
    final headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
    };
    final body = {
      'sId': '500',
      'uuId': '',
      'userId': '423914',
    };

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: headers,
        body: body,
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return {
          "success": 0,
          "message": "Failed to connect. Please try after sometime",
        };
      }
    } catch (e) {
      return null;
    }
  }

}