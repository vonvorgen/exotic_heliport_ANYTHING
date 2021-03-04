import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gifter/home/cubit/api.dart';
import 'package:gifter/models/card_models.dart';
import 'gift_card_sku.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  final GiftsApi _api;

  HomeCubit({
    required GiftsApi api,
    HomeState? initialState,
  })  : _api = api,
        super(initialState ?? const HomeState.loading(0)) {
    _api
        .giftCard()
        .then(
          (value) => {
            emit(
              HomeState.success(
                state.tabIndex,
                cards: value,
                // For time we are just wiping the cart between session.
                // Ideally the chart would be saved wiht some kind of TTL of each SKU.
                cartSkus: [],
              ),
            )
          },
        )
        .catchError((error, stackTrace) async {
      // ideall we should be using some logging framewor
      // ignore: avoid_print
      print('$error\n $stackTrace');
      emit(HomeState.fail(state.tabIndex));
    });
  }

  void updateTab(int tabIndex) {
    emit(state.copyWith(tabIndex: tabIndex));
  }

  void addToCart(GiftCardSku data) {
    if (state is _Success) {
      final currentState = state as _Success;
      emit(
        currentState.copyWith(
          // Magic number works, tho is not the best way, something like a const or enum would be better.
          tabIndex: 1,
          cartSkus: List.unmodifiable([...currentState.cartSkus, data]),
        ),
      );
    }
    // state.maybeWhen(success: (tabIndex, card, skus) {
    //   emit((state as _Success).copyWith())
    // }, orElse: () {});
  }

  void updateChartItemQty(int index, int quantity) {
    if (state is _Success) {
      final currentState = state as _Success;
      emit(
        currentState.copyWith(
            cartSkus: currentState.cartSkus
                .mapIndexed(
                  (i, x) => i == index ? x.copyWith(quantity: quantity) : x,
                )
                .toList()),
      );
    }
  }

  void removeSku(GiftCardSku giftCardSku) {
    if (state is _Success) {
      final currentState = state as _Success;
      emit(
        currentState.copyWith(
            cartSkus: currentState.cartSkus
                .whereNot((x) => x == giftCardSku)
                .toList()),
      );
    }
  }

  // In the real world this would be an async task.
  void confirmCart() {
    if (state is _Success) {
      final currentState = state as _Success;
      emit(
        currentState.copyWith(cartSkus: []),
      );
    }
  }
}
