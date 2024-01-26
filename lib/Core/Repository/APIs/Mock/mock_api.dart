import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../../Models/user_model.dart';
import '../../../constants.dart';

class MockAPI {

  /// Authenticates a user by making a GET request to the mock API.
  /// Returns true if the user exists in the API, false otherwise.
  /// Throws an exception if the request fails.
  Future<bool> authUser(UserModel userModel) async {
    final url = Uri.parse("${Constants.mockAPIUrl}/Users");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body)[0];
      final UserModel userExistent = UserModel.fromJson(data);
      return userExistent == userModel;
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
