// not the best location. It's the only place that need it so… meh.

// ignore: import_of_legacy_library_into_null_safe
import 'dart:convert';

import 'package:gifter/models/card_models.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;

class GiftsApi {
  static const cardUri = 'https://zip.co/giftcards/api/giftcards';
  Future<List<GiftCard>> giftCard() async {
    // This is ok for a small API. I would probaly use Chopper https://github.com/lejard-h/chopper/blob/master/getting-started.md
    // Chopper wraps the http functions and adds interceptor. gRPC would also be nice if possible.
    final response = await http.get(
      cardUri,
      headers: {
        "Accept": "application/json",
      },
    );

    final json = jsonDecode(response.body) as List<dynamic>;
    final cards = json.map((e) => GiftCard.fromJson(e as Map<String, dynamic>));
    // If we did not trust the server to return an ordered list we could also sort here.
    // cards.sort((a, b) => a.position.compareTo(b.position));

    return cards.toList();
  }
}
