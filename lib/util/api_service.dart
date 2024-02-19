import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  final String baseUrl;

  ApiService({required this.baseUrl});

  Future fetchData(String path, {Map<String, dynamic>? queryParams}) async {
    return _handleRequest(() async {
      final response = await http.get(
        _buildUrl(path, queryParams),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return data;
      } else {
        throw Exception('Failed to load data');
      }
    });
  }

  Future postData(String path, dynamic data) async {
    return _handleRequest(() async {
      final response = await http.post(
        _buildUrl(path),
        body: jsonEncode(data),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 201) {
        final responseData = json.decode(response.body);
        return responseData;
      } else {
        throw Exception('Failed to post data');
      }
    });
  }

  Future deleteData(String path) async {
    return _handleRequest(() async {
      final response = await http.delete(_buildUrl(path));

      if (response.statusCode == 204) {
        return true;
      } else {
        throw Exception('Failed to delete data');
      }
    });
  }

  Future patchData(String path, dynamic data) async {
    return _handleRequest(() async {
      final response = await http.patch(
        _buildUrl(path),
        body: jsonEncode(data),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        return responseData;
      } else {
        throw Exception('Failed to patch data');
      }
    });
  }

  Future putData(String path, dynamic data) async {
    return _handleRequest(() async {
      final response = await http.put(
        _buildUrl(path),
        body: jsonEncode(data),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        return responseData;
      } else {
        throw Exception('Failed to put data');
      }
    });
  }

  Uri _buildUrl(String path, [Map<String, dynamic>? queryParams]) {
    Uri uri = Uri.parse('$baseUrl/$path');
    if (queryParams != null) {
      uri = uri.replace(queryParameters: queryParams);
    }
    return uri;
  }

  Future _handleRequest(Future Function() requestFunction) async {
    try {
      return await requestFunction();
    } catch (e) {
      throw Exception('API Request Error: $e');
    }
  }
}
