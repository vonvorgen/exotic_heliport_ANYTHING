part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading(int tabIndex) = _Loading;
  const factory HomeState.success(
    int tabIndex, {
    required List<GiftCard> cards,
    required List<GiftCardSku> cartSkus,
  }) = _Success;
  const factory HomeState.fail(int tabIndex) = _Fail;
}
