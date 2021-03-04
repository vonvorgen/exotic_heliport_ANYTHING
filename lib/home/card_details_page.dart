// ignore: import_of_legacy_library_into_null_safe
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:gifter/home/card_sku_header_details.dart';
import 'package:gifter/home/cubit/gift_card_sku.dart';
import 'package:gifter/models/card_models.dart';
import 'package:gifter/providers.dart';

// In a real app this would have a cubit or bloc
// Since there is no IO to bound here we will just use a StatefulWidget widget.
class CardDetailsPage extends StatefulWidget {
  final GiftCard _card;

  const CardDetailsPage({
    Key? key,
    required GiftCard card,
  })   : _card = card,
        super(key: key);

  @override
  _CardDetailsState createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetailsPage> {
  late int _quantity;
  late Denomination _denomination;

  @override
  void initState() {
    super.initState();
    _denomination = widget._card.denominations.first;
    _quantity = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: Size.infinite.width,
              child: CachedNetworkImage(
                imageUrl: widget._card.image,
                cacheManager: context.readPod<BaseCacheManager>(
                  imageCacheManagerProvider,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GiftCardSkuHeaderDetails(card: widget._card),
                  const SizedBox(height: 8),
                  DropdownButton<int>(
                    onChanged: (value) {
                      if (value == null) return;
                      setState(() {
                        _quantity = value;
                      });
                    },
                    value: _quantity,
                    items: List<int>.generate(5, (index) => index + 1)
                        .map<DropdownMenuItem<int>>(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: Text("QTY: $e"),
                          ),
                        )
                        .toList(),
                  ),
                  const SizedBox(height: 8),
                  DropdownButton<Denomination>(
                    onChanged: (value) {
                      if (value == null) return;
                      setState(() {
                        _denomination = value;
                      });
                    },
                    value: _denomination,
                    items: widget._card.denominations
                        .map<DropdownMenuItem<Denomination>>(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: Text("\$${e.price} ${e.currency}"),
                          ),
                        )
                        .toList(),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Terms:",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    widget._card.terms,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) =>
                                  PurchaseSuccessDialog(card: widget._card),
                              barrierDismissible: false,
                            );
                          },
                          child: const Text("Buy now"),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            context.readPod(homeCubitProvider).addToCart(
                                  GiftCardSku.data(
                                    card: widget._card,
                                    denomination: _denomination,
                                    quantity: _quantity,
                                  ),
                                );
                          },
                          child: const Text("Add to cart"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PurchaseSuccessDialog extends StatelessWidget {
  final GiftCard _card;

  const PurchaseSuccessDialog({
    Key? key,
    required GiftCard card,
  })   : _card = card,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Success Buy"),
      content: Text(
        "Your ${_card.brand} card is on its way",
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).popUntil(
              (route) => route.isFirst,
            );
          },
          child: const Text("OK"),
        )
      ],
    );
  }
}
