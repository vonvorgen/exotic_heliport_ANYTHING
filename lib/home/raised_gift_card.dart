// ignore: import_of_legacy_library_into_null_safe
import 'package:cached_network_image/cached_network_image.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gifter/home/card_sku_header_details.dart';
import 'package:gifter/models/card_models.dart';
import 'package:gifter/providers.dart';

class RaisedGiftCard extends StatelessWidget {
  final GiftCard _card;
  // This might be better as sometime like (GiftCard) -> Unit
  final List<Widget> _actions;
  final List<Widget>? _footers;
  const RaisedGiftCard({
    Key? key,
    required GiftCard card,
    required List<Widget> actions,
    List<Widget>? footers,
  })  : _card = card,
        _actions = actions,
        _footers = footers,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: CachedNetworkImage(
                    imageUrl: _card.image,
                    height: 180,
                    cacheManager: context.readPod<BaseCacheManager>(
                      imageCacheManagerProvider,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(child: GiftCardSkuHeaderDetails(card: _card)),
                  ..._actions,
                ],
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [..._footers ?? []],
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
