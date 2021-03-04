import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_cubit.freezed.dart';
part 'session_state.dart';

class SessionCubit extends Cubit<SessionState> {
  static const userKey = "USER_KEY";
  final FlutterSecureStorage _secureStorage;

  SessionCubit(this._secureStorage) : super(const SessionState.initial()) {
    // Simulate app load, while testing.
    // Future.delayed(const Duration(seconds: 2)).then((_) => loadSession());
    loadSession();
  }

  Future<void> loadSession() async {
    final userEmail = await _secureStorage.read(key: userKey);
    if (userEmail != null) {
      emit(SessionState.authorized(userEmail));
    } else {
      emit(const SessionState.unAuthorized());
    }
  }

  Future<void> logout() async {
    await _secureStorage.deleteAll();
    emit(const SessionState.unAuthorized());
  }

  Future<void> login({
    required String email,
    required String password, // Not used here for simplicity
  }) async {
    // Error flows if ignored for time as we assume login and storage update always works.
    // Also, In a real world app this would most likely be a session token,
    // in addition to the user details.
    await _secureStorage.write(key: userKey, value: email);
    emit(SessionState.authorized(email));
  }
}
