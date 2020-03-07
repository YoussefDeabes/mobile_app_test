import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mobile_app_test/apis/data_response.dart';

class TestApi with ChangeNotifier {
  Future<void> itinerariesApi(int id) async {
    List<DataResponse> data = [];
    List<DataResponse> _loadedData = [];
    final header = {"accept-language": "ar"};
    try {
      final response =
          await http.get('https://reqres.in/api/users', headers: header);
      // print(json.decode(response.body));
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      print(extractedData);
      if (extractedData == null) {
        return;
      }
      extractedData.forEach((key, data) {
        _loadedData.add(DataResponse(
          page: data['page'],
          perPage: data['per_page'],
          total: data['total'],
          totalPages: data['total_pages'],
          data: data['data'],
        ));
      });
      notifyListeners();
    } catch (error) {
      print(error);
    }
  }
}
