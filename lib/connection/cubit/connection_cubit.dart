import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../helpers/helpers.dart';

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
