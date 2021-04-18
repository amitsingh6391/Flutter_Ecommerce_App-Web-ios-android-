import 'package:assignment/domain/i_shopdata_repository.dart';

import 'package:assignment/infrastructure/shopdata/data_entity.dart';
import 'package:injectable/injectable.dart';
import "package:http/http.dart" as http;
import 'dart:convert';

@LazySingleton(as: IshopDataRepository)
class ShopDataRepository implements IshopDataRepository {
  var baseUrl = "https://api.jsonbin.io/b/60141159ef99c57c734b89aa";

  @override
  Future<List<Datum>> watchAllProducts() async {
    var response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      print(".............body  ${response.body}");

      List<Datum> shopdata = Welcome.fromJson(data).data;
      return shopdata;
    } else {
      print(".........somethin wrong ....  ${response.statusCode}");
      throw Exception();
    }
  }
}
