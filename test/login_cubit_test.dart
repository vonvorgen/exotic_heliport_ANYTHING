// @dart=2.10
// import 'package:bloc_test/bloc_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gifter/onboarding/cubit/login_cubit.dart';
import 'package:gifter/session/session_cubit.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:mockito/annotations.dart';
import 'package:test/test.dart';

import 'login_cubit_test.mocks.dart';

@GenerateMocks([SessionCubit])
void main() {
  group('LogicCubit', () {
    final session = MockSessionCubit();
    // This could be a public default. Having this copied here means the test knows a little to much about the UI.
    const initialState = LoginState.initial(
      form: LoginFormState.data(
        password: "",
        email: "",
        isPasswordObscured: true,
        isFormValid: false,
      ),
    );

    blocTest(
      'invlaid emails emit a non-null email error',
      build: () => LoginCubit(sessionCubit: session),
      act: (LoginCubit bloc) => bloc.updateEmail("email"),
      expect: () => [
        initialState.copyWith(
          form: initialState.form.copyWith(
            email: "email",
            emailError: LoginCubit.invalidEmailError,
          ),
        )
      ],
    );

    blocTest(
      'invlaid passwords emit a non-null password error',
      build: () => LoginCubit(sessionCubit: session),
      act: (LoginCubit bloc) => bloc.updatePassword("pwd"),
      expect: () => [
        initialState.copyWith(
          form: initialState.form.copyWith(
            password: "pwd",
            passwordError: LoginCubit.invalidPassword,
          ),
        )
      ],
    );
    const validPassword = "123456789";
    blocTest(
      'valid passwords emit a null password error',
      build: () => LoginCubit(sessionCubit: session),
      act: (LoginCubit bloc) => bloc.updatePassword(validPassword),
      expect: () => [
        initialState.copyWith(
          form: initialState.form.copyWith(
            password: "123456789",
            passwordError: null,
          ),
        )
      ],
    );
    const validEmail = "example@example.com";
    blocTest(
      'validEmail passwords emit a null password error',
      build: () => LoginCubit(sessionCubit: session),
      act: (LoginCubit bloc) => bloc.updateEmail(validEmail),
      expect: () => [
        initialState.copyWith.form(
          email: validEmail,
          emailError: null,
        ),
      ],
    );
    blocTest(
      'A valaid email and passwords emit a valid form',
      build: () => LoginCubit(sessionCubit: session),
      act: (LoginCubit bloc) {
        bloc.updateEmail(validEmail);
        bloc.updatePassword(validPassword);
      },
      expect: () => [
        initialState.copyWith.form(
          email: validEmail,
        ),
        initialState.copyWith.form(
          email: validEmail,
          password: validPassword,
          isFormValid: true,
        ),
      ],
    );

    blocTest(
      'Toggling the password visible flips the current stat value',
      build: () => LoginCubit(sessionCubit: session),
      act: (LoginCubit bloc) {
        bloc.togglePasswordVisible();
      },
      expect: () => [
        initialState.copyWith.form(
          isPasswordObscured: !initialState.form.isPasswordObscured,
        ),
      ],
    );
  });
}
