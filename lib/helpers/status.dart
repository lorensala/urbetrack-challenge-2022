import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.freezed.dart';

@freezed
class Status with _$Status {
  const Status._();

  const factory Status.initial() = _Initial;
  const factory Status.loading() = _Loading;
  const factory Status.loaded() = _Loaded;
  const factory Status.error(String message) = _Error;
  const factory Status.reportSuccess() = _Reported;
  const factory Status.loadingCharacter() = _LoadingCharacter;
  const factory Status.characterLoaded() = _CharacterLoaded;
  const factory Status.characterError(String message) = _CharacterError;
  const factory Status.reportFailed(String message) = _ReportFailed;
  const factory Status.reportInProgress() = _ReportInProgress;

  bool get isLoading => this is _Loading;
  bool get isLoadingCharacter => this is _LoadingCharacter;
  bool get isReportInProgress => this is _ReportInProgress;
}
