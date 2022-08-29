import 'package:flutter/material.dart';
import 'package:giftpost/gifts_custom.dart';

class AllGifts extends StatelessWidget {
  const AllGifts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController moneyTextController = TextEditingController();
    return Column(
      children: [
        Center(
          child: Column(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: GestureDetector(
                  child: TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(31, 112, 99, 99),
                      border: const OutlineInputBorder(),
                      hintText: 'US Dollar (USD)',
                      suffixIcon: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Wrap(
                                  children: [
                                    Center(
                                      child: Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        height: 2,
                                        width: 40,
                                        color: Colors.black38,
                                      ),
                                    ),
                                    ListTile(
                                      onTap: () {
                                        moneyTextController.text =
                                            'US Dollar(USD)';
                                      },
                                      title: const Text('US Dollar(USD)'),
                                    ),
                                    const Divider(),
                                     ListTile(onTap: () {
                                        moneyTextController.text =
                                            'Euros(UEUR)';
                                      },
                                      title: const Text('Euros(EUR)'),
                                    ),
                                    const Divider(),
                                     ListTile(onTap: () {
                                        moneyTextController.text =
                                            'Nigerian Naira(NGN)';
                                      },
                                      title: const Text('Nigerian Naira(NGN)'),
                                    ),
                                  ],
                                );
                              });
                        },
                        icon: const Icon(Icons.keyboard_arrow_down_outlined),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    BuildGifts('Iphone 14', 1000, 'assets/gift.png', context, 'all'),
                    BuildGifts('Iphone 14', 1000, 'assets/gift.png', context, 'all'),
                    BuildGifts('Iphone 14', 1000, 'assets/gift.png', context, 'all'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    BuildGifts('Iphone 14', 1000, 'assets/gift.png', context, 'all'),
                    BuildGifts('Iphone 14', 1000, 'assets/gift.png', context, 'all'),
                    BuildGifts('Iphone 14', 1000, 'assets/gift.png', context, 'all'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    BuildGifts('Iphone 14', 1000, 'assets/gift.png', context, 'all'),
                    BuildGifts('Iphone 14', 1000, 'assets/gift.png', context, 'all'),
                    BuildGifts('Iphone 14', 1000, 'assets/gift.png', context, 'all'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    BuildGifts('Iphone 14', 1000, 'assets/gift.png', context, 'all'),
                    BuildGifts('Iphone 14', 1000, 'assets/gift.png', context, 'all'),
                    BuildGifts('Iphone 14', 1000, 'assets/gift.png', context, 'all'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    BuildGifts('Iphone 14', 1000, 'assets/gift.png', context, 'all'),
                    BuildGifts('Iphone 14', 1000, 'assets/gift.png', context, 'all'),
                    BuildGifts('Iphone 14', 1000, 'assets/gift.png', context, 'all'),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
