import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mobile_app_test/apis/data_response.dart';

class TestApi with ChangeNotifier {
    List<DataResponse> data = [];
    Map<String, dynamic> extractedData;
    int pageNum =0;
  Future<void> testApi(int pageNum) async {
    List<DataResponse> _loadedData = [];
    final header = {"accept-language": "ar"};
    try {
      final response =
          await http.get('https://reqres.in/api/users?page=$pageNum', headers: header);
      // print(json.decode(response.body));
      extractedData = json.decode(response.body) as Map<String, dynamic>;
      print(extractedData);
      if (extractedData == null) {
        return;
      }
      extractedData.forEach((key, data) {
        _loadedData.add(DataResponse(
          page: extractedData['page'],
          perPage: extractedData['per_page'],
          total: extractedData['total'],
          totalPages: extractedData['total_pages'],
          data: extractedData['data'],
        ));
      });
      data = _loadedData;
      notifyListeners();
    } catch (error) {
      print(error);
    }
    _loadedData = [];
  }
}
