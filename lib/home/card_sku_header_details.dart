import 'package:flutter/material.dart';
import 'package:gifter/models/card_models.dart';

class GiftCardSkuHeaderDetails extends StatelessWidget {
  // Passing the full card here is probably overkill.
  // For the sake of time this will have to do.
  final GiftCard _card;

  const GiftCardSkuHeaderDetails({
    Key? key,
    required GiftCard card,
  })   : _card = card,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final amountOff = (100.0 - _card.discount).toStringAsFixed(2);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _card.brand,
          style: theme.textTheme.subtitle1,
        ),
        Text(
          "$amountOff% OFF",
          style: theme.textTheme.bodyText1,
        ),
        Text(
          _card.vendor,
          style: theme.textTheme.caption,
        ),
      ],
    );
  }
}
