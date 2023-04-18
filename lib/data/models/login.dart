import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
  Login({
    required this.status,
    required this.data,
    required this.active,
  });

  bool status;
  Data data;
  bool active;

  factory Login.fromJson(Map<String, dynamic> json) => Login(
    status: json["status"],
    data: Data.fromJson(json["data"]),
    active: json["active"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data.toJson(),
    "active": active,
  };
}

class Data {
  Data({
    required this.clientId,
    required this.clientName,
    required this.clientEmail,
    required this.clientPhone,
    required this.clientPoints,
    required this.clientCityId,
    required this.clientCityName,
    required this.clientLocation,
    required this.clientLat,
    required this.clientLon,
    required this.clientApiToken,
    required this.clientPlayerId,
  });

  int clientId;
  String clientName;
  String clientEmail;
  String clientPhone;
  int clientPoints;
  int clientCityId;
  String clientCityName;
  String clientLocation;
  double clientLat;
  double clientLon;
  String clientApiToken;
  String clientPlayerId;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
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
  );

  Map<String, dynamic> toJson() => {
    "client_id": clientId,
    "client_name": clientName,
    "client_email": clientEmail,
    "client_phone": clientPhone,
    "client_points": clientPoints,
    "client_city_id": clientCityId,
    "client_city_name": clientCityName,
    "client_location": clientLocation,
    "client_lat": clientLat,
    "client_lon": clientLon,
    "client_api_token": clientApiToken,
    "client_player_id": clientPlayerId,
  };
}
