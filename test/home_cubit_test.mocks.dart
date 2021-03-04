import 'package:mockito/mockito.dart' as _i1;
import 'package:gifter/home/cubit/api.dart' as _i2;
import 'dart:async' as _i3;
import 'package:gifter/models/card_models.dart' as _i4;

/// A class which mocks [GiftsApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockGiftsApi extends _i1.Mock implements _i2.GiftsApi {
  MockGiftsApi() {
    _i1.throwOnMissingStub(this);
  }

  _i3.Future<List<_i4.GiftCard>> giftCard() => super.noSuchMethod(
      Invocation.method(#giftCard, []), Future.value(<_i4.GiftCard>[]));
}
