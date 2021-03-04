import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:gifter/onboarding/cubit/login_cubit.dart';
import 'package:gifter/providers.dart';

// ignore: prefer_interpolation_to_compose_strings
final emailRegex = RegExp(
  "^(([\\w-]+\\.)+[\\w-]+|([a-zA-Z]{1}|[\\w-]{2,}))@((([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])){1}|([a-zA-Z]+[\\w-]+\\.)+[a-zA-Z]{2,4})\$",
);

class LoginForm extends StatelessWidget {
  @visibleForTesting
  static const keyPasswordField = "passwordField";
  @visibleForTesting
  static const keyEmailField = "emailField";
  @visibleForTesting
  static const keyLogin = "loginButton";

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      bloc: context.readPod(loginCubitProvider),
      builder: (context, state) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            key: const ValueKey(keyEmailField),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              icon: const Icon(Icons.email_rounded),
              hintText: "example@example.com",
              labelText: 'Email',
              errorText: state.form.emailError,
            ),
            onChanged: (email) {
              context.readPod(loginCubitProvider).updateEmail(email);
            },
          ),
          const SizedBox(height: 12),
          TextFormField(
            key: const ValueKey(keyPasswordField),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              icon: const Icon(Icons.lock_rounded),
              suffixIcon: InkWell(
                  onTap: () {
                    context.readPod(loginCubitProvider).togglePasswordVisible();
                  },
                  child: Icon(
                    state.form.isPasswordObscured
                        ? Icons.visibility_off
                        : Icons.visibility_rounded,
                  )),
              hintText: 'What do people call you?',
              labelText: 'Password',
              errorText: state.form.passwordError,
            ),
            onChanged: (password) {
              context.readPod(loginCubitProvider).updatePassword(password);
            },
            obscureText: state.form.isPasswordObscured,
          ),
          const SizedBox(height: 8),
          PlatformButton(
            key: const ValueKey(keyLogin),
            onPressed: () {
              context.readPod(loginCubitProvider).login();
            },
            child: PlatformText("Login"),
          )
        ],
      ),
    );
  }
}
