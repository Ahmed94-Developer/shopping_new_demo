import 'package:dio/dio.dart';
import 'package:shopping_new/constants/strings.dart';
import 'package:shopping_new/data/models/paritions.dart';
import "dart:io";
import "dart:async";


class PartitionsRepository{
  late Dio client;

  PartitionsRepository(){
    BaseOptions options = BaseOptions(
      baseUrl: base_url,
      connectTimeout: Duration(seconds: 20 * 1000),
      sendTimeout: Duration(seconds: 20 *1000),
    );
    client = Dio(options);

  }

   Future<List<Datum>> getAllPartitions() async{
     Response? response;
     response = await client.get("all-categories");

     final partitions = List<Datum>.of(
       response.data['data'].map<Datum>(
             (json) => Datum(
               categoryId: json["category_id"],
               categoryName: json["category_name"],
               categoryImage: json["category_image"]
         ),
       ),
     );

     return partitions;

   }

}