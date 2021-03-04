import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gifter/models/card_models.dart';

part 'gift_card_sku.freezed.dart';

@freezed
abstract class GiftCardSku with _$GiftCardSku {
  const factory GiftCardSku.data({
    required GiftCard card,
    required Denomination denomination,
    required int quantity,
  }) = _Data;
}
