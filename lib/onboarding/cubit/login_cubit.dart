import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gifter/onboarding/login_form.dart';
import 'package:gifter/session/session_cubit.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final SessionCubit _sessionCubit;

  @visibleForTesting
  static const invalidEmailError = "Invalid Email Address";
  @visibleForTesting
  static const invalidPassword = "Passwords must contain at least 8 characters";
  @visibleForTesting
  static const defaultInitialState = LoginState.initial(
    form: LoginFormState.data(
      password: "",
      email: "",
      isPasswordObscured: true,
      isFormValid: false,
    ),
  );

  LoginCubit({
    required SessionCubit sessionCubit,
    LoginState? initialState,
  })  : _sessionCubit = sessionCubit,
        super(initialState ?? defaultInitialState);

  void updateEmail(String email) {
    final nextState = state.copyWith.form(
      email: email.trim(),
      // Ideally this would be an Enum to signal the error type and message copy would be
      // defered to to view. This would make using a String copy database easier as we need context to
      // load from a String copy database.
      emailError: emailRegex.hasMatch(email) ? null : invalidEmailError,
    );
    // Since the form is simple enought this seems ok-ish to replicate. A larger more complex form would need somethings more.
    _validateForm(nextState);
  }

  void updatePassword(String password) {
    final nextState = state.copyWith.form(
      password: password,
      passwordError: password.length < 8 ? invalidPassword : null,
    );
    _validateForm(nextState);
  }

  void togglePasswordVisible() {
    emit(
      state.copyWith.form(isPasswordObscured: !state.form.isPasswordObscured),
    );
  }

  void _validateForm(LoginState state) {
    emit(
      state.copyWith.form(
        isFormValid: state.form.passwordError == null &&
            state.form.emailError == null &&
            state.form.password.isNotEmpty &&
            state.form.email.isNotEmpty,
      ),
    );
  }

  Future<void> login() async {
    if (!state.form.isFormValid) return;
    if (state is _Loading) return;
    emit(LoginState.loading(form: state.form));
    await _sessionCubit.login(
      email: state.form.email,
      password: state.form.password,
    );
    emit(LoginState.initial(form: defaultInitialState.form));
  }
}
