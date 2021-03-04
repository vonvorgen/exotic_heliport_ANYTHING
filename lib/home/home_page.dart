import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gifter/home/card_details_page.dart';
import 'package:gifter/home/cubit/home_cubit.dart';
import 'package:gifter/home/raised_gift_card.dart';
import 'package:gifter/main.dart';
import 'package:gifter/providers.dart';

// Each tab loses is scroll state and this is ignored for the sake of time.
class HomePage extends StatelessWidget {
  static const keyAppTitle = "home:appTitle";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.readPod(homeCubitProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, key: ValueKey(keyAppTitle)),
        actions: [
          InkWell(
            onTap: () {
              context.readPod(sessionCubitProvider).logout();
            },
            child: const Icon(Icons.exit_to_app),
          ),
          const SizedBox(width: 8)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocBuilder<HomeCubit, HomeState>(
          bloc: bloc,
          builder: (context, state) {
            if (state.tabIndex == 0) {
              return state.when(
                loading: (_) => const Center(child: Text("loading…")),
                success: (_, cards, skus) => ListView.builder(
                  key: ValueKey(cards.length),
                  itemCount: cards.length,
                  itemBuilder: (BuildContext context, int index) {
                    final data = cards[index];
                    return RaisedGiftCard(
                      key: ValueKey(data.image),
                      card: data,
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CardDetailsPage(card: data),
                            ));
                          },
                          child: const Text("Learn more"),
                        )
                      ],
                    );
                  },
                ),
                fail: (_) => const Center(child: Text("Encounded an error")),
              );
            } else {
              return state.when(
                success: (_, __, skus) => Column(
                  children: [
                    Expanded(
                      child: skus.isEmpty
                          ? Padding(
                              padding: const EdgeInsets.all(32),
                              child: Text(
                                "Your cart is empty",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    ?.copyWith(fontWeight: FontWeight.bold),
                              ),
                            )
                          : ListView.builder(
                              key: ValueKey("skus: ${skus.length}"),
                              itemCount: skus.length,
                              itemBuilder: (BuildContext context, int index) {
                                final data = skus[index];
                                return RaisedGiftCard(
                                  // This works, tho I really don't like it.
                                  // Using the index works, but, it feels brittle.
                                  // A better approach would be to assign a UUI
                                  // when a SKU is entered into the cart, or merge
                                  // SKU with matching details like you would see in the Amazon app.
                                  key: ValueKey(skus.hashCode + index),
                                  card: data.card,
                                  actions: [
                                    DropdownButton<int>(
                                      onChanged: (value) {
                                        if (value == null) return;
                                        context
                                            .readPod(homeCubitProvider)
                                            .updateChartItemQty(index, value);
                                      },
                                      value: data.quantity,
                                      items: List<int>.generate(
                                              5, (index) => index + 1)
                                          .map<DropdownMenuItem<int>>(
                                            (e) => DropdownMenuItem(
                                              value: e,
                                              child: Text("QTY: $e"),
                                            ),
                                          )
                                          .toList(),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        context
                                            .readPod(homeCubitProvider)
                                            .removeSku(data);
                                      },
                                      child: const Text("Delete"),
                                    ),
                                  ],
                                  footers: [
                                    Text(
                                      "Denomination of: \$${data.denomination.price}",
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    )
                                  ],
                                );
                              },
                            ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: Size.infinite.width,
                      child: ElevatedButton(
                          onPressed: () {
                            final cubit = context.readPod(homeCubitProvider);
                            cubit.state.maybeWhen(
                                success: (_, __, skus) {
                                  if (skus.isEmpty) return;
                                  cubit.confirmCart();
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: const Text("Success"),
                                      content: const Text(
                                        "All your cards are on the way",
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text("OK"),
                                        )
                                      ],
                                    ),
                                    barrierDismissible: false,
                                  );
                                },
                                orElse: () {});
                          },
                          child: const Text("Checkout")),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
                fail: (_) => const Center(child: Text("Expounded an error")),
                loading: (_) => const Center(child: Text("loading…")),
              );
            }
          },
        ),
      ),
      bottomNavigationBar: BlocBuilder<HomeCubit, HomeState>(
        bloc: bloc,
        builder: (context, state) {
          return BottomNavigationBar(
            currentIndex: state.tabIndex,
            onTap: (tabIndex) {
              if (tabIndex < 2) {
                context.readPod(homeCubitProvider).updateTab(tabIndex);
              } else {
                context.readPod(sessionCubitProvider).logout();
              }
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard),
                label: "Gift Cards",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: "Shopping Cart",
              ),
            ],
          );
        },
      ),
    );
  }
}
