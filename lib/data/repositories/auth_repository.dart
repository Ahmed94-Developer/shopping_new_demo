import 'package:dio/dio.dart';
import 'package:shopping_new/data/models/login.dart';

import '../../constants/strings.dart';

class AuthRepository{
  late Dio client;
  late AuthRepository authRepository;

  AuthRepository(){
    BaseOptions options = BaseOptions(
      baseUrl: base_url,
      connectTimeout: Duration(seconds: 20 * 1000),
      sendTimeout: Duration(seconds: 20 *1000),
    );
    client = Dio(options);

  }

  Future<Login> setAuth(String name,String password) async{
    Response? response;
    var formData = FormData.fromMap({
      'name': name,
      'password': password,
      'player_id':"123456"
    });
    response = await client.post("login",data: formData);

    var status = response.data["status"];
    if(status == true){
      return response.data["data"].map<Data>(
            (json) => Data(
              clientId: json["client_id"],
              clientName: json["client_name"],
              clientEmail: json["client_email"],
              clientPhone: json["client_phone"],
              clientPoints: json["client_points"],
              clientCityId: json["client_city_id"],
              clientCityName: json["client_city_name"],
              clientLocation: json["client_location"],
              clientLat: json["client_lat"]?.toDouble(),
              clientLon: json["client_lon"]?.toDouble(),
              clientApiToken: json["client_api_token"],
              clientPlayerId: json["client_player_id"],
        ));

    }else{
      return response.data["message"];
    }

  }

}