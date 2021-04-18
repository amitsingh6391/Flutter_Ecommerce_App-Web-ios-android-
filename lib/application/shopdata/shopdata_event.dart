part of 'shopdata_bloc.dart';

@freezed
abstract class ShopdataEvent with _$ShopdataEvent {
  const factory ShopdataEvent.watchAllProducts() = _Started;
}
