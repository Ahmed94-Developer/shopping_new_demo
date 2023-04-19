import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:shopping_new/constants/strings.dart';

import '../models/login.dart';
part 'auth_client.g.dart';

@RestApi(baseUrl: base_url)
abstract class AuthClient{
  factory AuthClient(Dio dio,{String baseUrl}) = _AuthClient;

  @FormUrlEncoded()
  @POST("login")
  Future<Login>setAuth(
      @Field("name") String name,
      @Field("password") String password,
      @Field("player_id") String player_id
      );

}