import 'dart:convert';
import 'dart:io';

import 'package:gifter/models/card_models.dart';
import 'package:test/test.dart';

Future<void> main() async {
  final file = File('test_resources/card_data.json');
  final cardsList = jsonDecode(await file.readAsString()) as List<dynamic>;

  test('Can deserilalise JSON string encoded Price', () {
    final json = jsonDecode("""
    {
      "price": "25",
      "currency": "AUD",
      "stock": "IN_STOCK"
    }
    """) as Map<String, dynamic>;

    final denomination = Denomination.fromJson(json);

    assert(denomination.price == 25);
  });

  test('Can deserilalise JSON file', () {
    final cards = cardsList
        .map(
          (e) => GiftCard.fromJson(e as Map<String, dynamic>),
        )
        .toList();

    // Not an idea test. I did this just to validate the sample set was parseable.
    assert(cards.length == 118);
  });
}
