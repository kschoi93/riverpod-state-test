import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.g.dart';

part 'state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({@Default(0) int num}) = _AuthState;

  factory AuthState.fromJson(Map<String, Object?> json) =>
      _$AuthStateFromJson(json);
}