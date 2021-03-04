part of 'login_cubit.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const factory LoginFormState.data({
    required String password,
    @Default(null) String? passwordError,
    required String email,
    @Default(null) String? emailError,
    required bool isPasswordObscured,
    required bool isFormValid,
  }) = _LoginFormState;
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial({required LoginFormState form}) = _Initial;
  const factory LoginState.loading({required LoginFormState form}) = _Loading;
  // Form data might not be needed here. Tho, It means we don't need to update the UI when animating away
  const factory LoginState.finished({required LoginFormState form}) = _Finished;
}
