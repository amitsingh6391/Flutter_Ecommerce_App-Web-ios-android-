part of 'shopdata_bloc.dart';

@freezed
abstract class ShopdataState with _$ShopdataState {
  const factory ShopdataState.initial() = _Initial;
  const factory ShopdataState.loadInProgress() = _LoadInProgress;
  const factory ShopdataState.loadSuccess(List<Datum> shopdata) = _LoadSuccess;
  const factory ShopdataState.loadFailure() = _LoadFailure;
  const factory ShopdataState.empty() = _Empty;
}
