import 'dart:convert';
import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gifter/home/cubit/api.dart';
import 'package:gifter/home/cubit/home_cubit.dart';
import 'package:gifter/models/card_models.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:mockito/annotations.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:mockito/mockito.dart';

import 'home_cubit_test.mocks.dart';

@GenerateMocks([GiftsApi])
Future<void> main() async {
  group("when api returns an error", () {
    final api = MockGiftsApi();
    when(api.giftCard()).thenAnswer((_) => Future.error("error"));

    blocTest<HomeCubit, HomeState>(
      "Cubic init will emit a failure when started",
      build: () =>
          HomeCubit(api: api, initialState: const HomeState.loading(0)),
      expect: () => [
        const HomeState.fail(0),
      ],
    );
    blocTest<HomeCubit, HomeState>(
      "tab index can be updated between state",
      build: () =>
          HomeCubit(api: api, initialState: const HomeState.loading(0)),
      act: (bloc) => bloc.updateTab(2),
      expect: () => [
        const HomeState.loading(2),
        const HomeState.fail(2),
      ],
    );
  });

  final file = File('test_resources/card_data.json');
  final cardsList = (jsonDecode(await file.readAsString()) as List<dynamic>)
      .take(2)
      .map(
        (e) => GiftCard.fromJson(e as Map<String, dynamic>),
      )
      .toList();
  group("when api returns an cards", () {
    final api = MockGiftsApi();
    when(api.giftCard()).thenAnswer((_) => Future.value(cardsList));

    blocTest<HomeCubit, HomeState>(
      "Cubic will transition from loading to success",
      build: () =>
          HomeCubit(api: api, initialState: const HomeState.loading(0)),
      expect: () => [
        HomeState.success(0, cards: cardsList, cartSkus: []),
      ],
    );
    blocTest<HomeCubit, HomeState>(
      "tab index can be updated between state",
      build: () =>
          HomeCubit(api: api, initialState: const HomeState.loading(0)),
      act: (bloc) => bloc.updateTab(2),
      expect: () => [
        const HomeState.loading(2),
        HomeState.success(2, cards: cardsList, cartSkus: []),
      ],
    );
  });
}
