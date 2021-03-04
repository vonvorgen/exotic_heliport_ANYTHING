part of 'session_cubit.dart';

@freezed
abstract class SessionState with _$SessionState {
  const factory SessionState.initial() = _Initial;
  const factory SessionState.unAuthorized() = _UnAuthorized;
  const factory SessionState.authorized(String email) = _Authorized;
}
