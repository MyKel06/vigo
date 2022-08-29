import 'dart:convert';

import 'package:http/http.dart' as http;

class TabModel {
  final int categoryId;
  final String categoryName;

  TabModel({
    required this.categoryId,
    required this.categoryName,
  });

  static TabModel fromJson(Map<String, dynamic> data) {
    return TabModel(
        categoryId: data['categoryId'], categoryName: data['categoryName']);
  }
}

Future<List<TabModel>?> getCategoryTab() async {
  final String authToken =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NTMsInRva2VuIjoiODk0ZTM0NDNiNjNjOTI5MyIsImlhdCI6MTY2MTc5NzAyOH0.eKHEcFuxrlpUqzGB2fDCqFFeinGIqzLXGRWAxuP3bnE';

  Uri url = Uri.parse('https://vigoplace.com/server/api/categories/gift');
  try {
    final requets = await http.get(url, headers: {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': authToken
    });

    final jsonData = jsonDecode(requets.body);

    if (requets.statusCode == 200) {
      print(jsonData);
      final response = jsonData['data'];
      List<TabModel> result = [];
      for (var data in response) {
        final res = TabModel.fromJson(data);
        result.add(res);
      }

      return result;
    } else {
      return null;
    }
  } catch (e) {
    return null;
  }
}
