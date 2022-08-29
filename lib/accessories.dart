import 'package:flutter/material.dart';
import 'package:giftpost/gifts_custom.dart';

class AccessoriesGifts extends StatelessWidget {
  const AccessoriesGifts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: TextField(
                  readOnly: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color.fromARGB(31, 112, 99, 99),
                    border: const OutlineInputBorder(),
                    hintText: 'US Dollar (USD)',
                    suffixIcon: IconButton(
                      onPressed: () {showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Wrap(
                                  children:  [Center(
                                    child: Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      height: 2,
                                      width: 40,
                                      color: Colors.black38,
                                    ),
                                  ),
                                    const ListTile(
                                      title: Text('US Dollar(USD)'),
                                    ),
                                    const Divider(),
                                    const ListTile(
                                      title: Text('Euros(EUR)'),
                                    ),
                                    const Divider(),
                                    const ListTile(
                                      title:  Text('Nigerian Naira(NGN)'),
                                    ),
                                  ],
                                );
                              }
                      );},
                      icon: const Icon(Icons.keyboard_arrow_down_outlined),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 0,
        ),
        Row(
          children: [
            BuildGifts('Iphone 14', 1000, 'assets/gift.png', context, 'accessories'),
            BuildGifts('Iphone 14', 1000, 'assets/gift.png', context, 'accessories'),
            BuildGifts('Iphone 14', 1000, 'assets/gift.png', context, 'accessories'),
          ],
        ), const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            BuildGifts('Iphone 14', 1000, 'assets/gift.png', context, 'accessories'),
            BuildGifts('Iphone 14', 1000, 'assets/gift.png', context, 'accessories'),
            BuildGifts('Iphone 14', 1000, 'assets/gift.png', context, 'accessories'),
          ],
        ), const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            BuildGifts('Iphone 14', 1000, 'assets/gift.png', context, 'accessories'),
            BuildGifts('Iphone 14', 1000, 'assets/gift.png', context, 'accessories'),
            BuildGifts('Iphone 14', 1000, 'assets/gift.png', context, 'accessories'),
          ],
        ), 

      ],
    );
  }
}
