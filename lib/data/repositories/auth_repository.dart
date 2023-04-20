import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:shopping_new/data/models/login.dart';

import '../../constants/strings.dart';

class AuthRepository{
  late Dio client;

  AuthRepository(){
    client = Dio(
      BaseOptions(baseUrl: base_url,
          connectTimeout: Duration(seconds: 20 *1000),
          sendTimeout: Duration(seconds: 20 * 1000)

      )
    );
  }

  Future<dynamic?> LoginService(String name,String password) async{
    var formData = FormData.fromMap({
      "name":name,
      "password":password,
      "player_id":"123456"
    });

    Response response = await client.post(
      'login',
      data: formData,
    );
    var status = response.data["status"];

    return status;

  }

}