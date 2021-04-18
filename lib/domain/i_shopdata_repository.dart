import 'package:assignment/infrastructure/shopdata/data_entity.dart';

abstract class IshopDataRepository {
  Future<List<Datum>> watchAllProducts();
}
