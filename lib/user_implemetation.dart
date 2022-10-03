import 'package:dio/dio.dart';
import 'package:flutter_dio_request_provider/user_model.dart';

class UserImplementation {
  Future<User?> getById(int id) async {
    try {
      final response = await Dio().get('https://reqres.in/api/users/$id');
      final body = response.data['data'];
      print(body);

      return User.fromJson(body);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
