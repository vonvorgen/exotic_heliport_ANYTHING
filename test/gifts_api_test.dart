import 'package:flutter_test/flutter_test.dart';
import 'package:gifter/home/cubit/api.dart';

void main() {

  test("When calling the read cards API can we decode the json", () async {
    final api = GiftsApi();

    final cards = await api.giftCard();

    assert(cards.isNotEmpty);
  });

}