// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Denomination _$_$_DenominationFromJson(Map<String, dynamic> json) {
  return _$_Denomination(
    price: (json['price'] as num).toDouble(),
    currency: json['currency'] as String,
    stock: json['stock'] as String,
  );
}

Map<String, dynamic> _$_$_DenominationToJson(_$_Denomination instance) =>
    <String, dynamic>{
      'price': instance.price,
      'currency': instance.currency,
      'stock': instance.stock,
    };

_$_CustomDenomination _$_$_CustomDenominationFromJson(
    Map<String, dynamic> json) {
  return _$_CustomDenomination(
    minPrice: (json['minPrice'] as num).toDouble(),
    maxPrice: (json['maxPrice'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_CustomDenominationToJson(
        _$_CustomDenomination instance) =>
    <String, dynamic>{
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
    };

_$_GiftCard _$_$_GiftCardFromJson(Map<String, dynamic> json) {
  return _$_GiftCard(
    vendor: json['vendor'] as String,
    brand: json['brand'] as String,
    image: json['image'] as String,
    position: json['position'] as int,
    discount: (json['discount'] as num).toDouble(),
    terms: json['terms'] as String,
    denominations: (json['denominations'] as List<dynamic>)
        .map((e) => Denomination.fromJson(e as Map<String, dynamic>))
        .toList(),
    customDenominations: (json['customDenominations'] as List<dynamic>?)
            ?.map((e) => CustomDenomination.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    disclaimer: json['disclaimer'] as String,
  );
}

Map<String, dynamic> _$_$_GiftCardToJson(_$_GiftCard instance) =>
    <String, dynamic>{
      'vendor': instance.vendor,
      'brand': instance.brand,
      'image': instance.image,
      'position': instance.position,
      'discount': instance.discount,
      'terms': instance.terms,
      'denominations': instance.denominations,
      'customDenominations': instance.customDenominations,
      'disclaimer': instance.disclaimer,
    };
