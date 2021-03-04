import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'card_models.freezed.dart';
part 'card_models.g.dart';

@freezed
abstract class Denomination with _$Denomination {
  const factory Denomination({
    required double price,
    required String currency,
    required String stock, // Stock enum?
  }) = _Denomination;

  factory Denomination.fromJson(Map<String, dynamic> json) =>
      _$DenominationFromJson(_normaliseJson(json));

  static Map<String, dynamic> _normaliseJson(Map<String, dynamic> json) {
    // replace any string encoding with a parsed double of its self.
    final price = json['price'];
    if (price is String) {
      json['price'] = double.parse(price);
    }
    return json;
  }
}

@freezed
abstract class CustomDenomination with _$CustomDenomination {
  const factory CustomDenomination({
    required double minPrice,
    required double maxPrice,
  }) = _CustomDenomination;

  factory CustomDenomination.fromJson(Map<String, dynamic> json) =>
      _$CustomDenominationFromJson(json);
}

@freezed
abstract class GiftCard with _$GiftCard {
  const factory GiftCard({
    required String vendor,
    required String brand,
    required String image, // URI
    required int position,
    required double discount,
    required String terms,
    required List<Denomination> denominations,
    @Default([]) List<CustomDenomination> customDenominations,
    required String disclaimer,
  }) = _GiftCard;

  factory GiftCard.fromJson(Map<String, dynamic> json) =>
      _$GiftCardFromJson(json);

  static Map<String, dynamic> _normaliseJson(Map<String, dynamic> json) {
    final price = json['price'];
    if (price is String) {
      json['price'] = int.parse(price);
    }
    return json;
  }
}

// {
//   "vendor": "Prezzee",
//   "id": "DELIVEROO",
//   "brand": "Deliveroo AU",
//   "image": "https://files.prezzee.com.au/media/sku-theme-designs/deliveroo-0729-1b292645-afd6-42a0-b9e6-4ca7f3d1ed51/deliveroo-0729.jpg",
//   "denominations": [
//       {
//           "price": 5,
//           "currency": "AUD",
//           "stock": "IN_STOCK"
//       },
//   ],
//   "position": 5060,
//   "discount": 95.75,
//   "terms": "Deliveroo gift cards (Gift Cards) may only be redeemed towards the purchase of Meals from our Service. To redeem the credit loaded on your Gift Card , enter the unique promo code on the Gift Card at the checkout when you order your next Meal and your Deliveroo account will be credited with the amount loaded on your Gift Card(Credit). You may use your Credit to order multiple Meals from our Service (i.e. your Credit is not limited to one order). If a purchase of any Meal exceeds your Credit, the remaining amount of your order must be paid with another Payment Method. If a purchase of any Meal is less than your Credit, the balance of your Credit will remain loaded to your account for future purchases. To view your Credit balance, visit your Deliveroo account. The full terms and conditions can be found <a href=\"https://deliveroo.com.au/legal\" target=\"_blank\">https://deliveroo.com.au/legal</a> under Corporate Gift Card Terms & Conditions.<br><br><strong>How to use:</strong><br>To enjoy your Deliveroo Gift Card, simply follow the steps below:<br><br>Entering the code using the Deliveroo App:<ol><li>1. Open the Deliveroo App</li><li>2. Tap the account Icon in the top right corner of the home screen</li><li>3. Select 'Account credit'</li><li>4. Tap 'Add code' 5. Enter the unique voucher code</li></ol>Entering the code using a Desktop:<ol><li>1. Open your web browser and enter <a href=\"https://www.deliveroo.com.au\" target=\"_blank\">www.deliveroo.com.au</a></li><li>2. Log in to your account</li><li>3. Select a restaurant, add your desired items to the basket and proceed to checkout</li><li>4. At the bottom of the page, select 'Add promo code'</li></ol>Upon redeeming this gift card the expiry term is 3 years (please note that there is a display issue where the year is not currently present within the Deliveroo App).",
//   "importantContent": "A Deliveroo gift card is the perfect gift for any food lover! Access an enormous selection of the best local restaurants with the convenience of having your food delivered direct to your door, all in just a few simple clicks",
//   "cardTypeStatus": "AVAILABLE",
//   "customDenominations": [],
//   "disclaimer": ""
// }

// @freezed
// abstract class Union with _$Union {
//   const factory Union(int value) = Data;
//   const factory Union.loading() = Loading;
//   const factory Union.error([String message]) = ErrorDetails;
// }
