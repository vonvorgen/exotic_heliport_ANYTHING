import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gifter/home/home_page.dart';
import 'package:gifter/onboarding/login_page.dart';
import 'package:gifter/providers.dart';
import 'package:gifter/session/session_cubit.dart';

const appTitle = "Gifter";

void main() {
  runApp(MyApp());
}

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionCubit, SessionState>(
      bloc: context.readPod<SessionCubit>(sessionCubitProvider),
      builder: (context, state) {
        return state.when(
          initial: () => const Scaffold(
            body: Center(child: Text("Loading…")),
          ),
          unAuthorized: () => const LoginPage(),
          authorized: (email) => const HomePage(),
        );
      },
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = ThemeData(
      primarySwatch: Colors.blue,
    );

    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            inputDecorationTheme: theme.inputDecorationTheme.copyWith(
              border: const OutlineInputBorder(),
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
            buttonTheme: theme.buttonTheme.copyWith(
              buttonColor: theme.primaryColor,
              textTheme: ButtonTextTheme.primary,
            )),
        home: RootPage(),
      ),
    );
  }
}
