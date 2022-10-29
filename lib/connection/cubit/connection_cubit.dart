import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../helpers/helpers.dart';

/// {@template connection_cubit}
/// An [HydratedCubit] which manages and stores the current connection state.
/// {@endtemplate}
class ConnectionCubit extends HydratedCubit<bool> {
  ConnectionCubit(super.state);

  void changeConnectionStatus() => emit(!state);

  @override
  bool? fromJson(Map<String, dynamic> json) {
    return json[kConnectionKey] as bool?;
  }

  @override
  Map<String, dynamic>? toJson(bool state) {
    return {kConnectionKey: state};
  }
}
