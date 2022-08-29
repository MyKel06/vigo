import 'package:flutter/material.dart';
import 'package:giftpost/accessories.dart';
import 'package:giftpost/all_gift.dart';
import 'package:giftpost/beauty.dart';
import 'package:giftpost/cars.dart';
import 'package:giftpost/clothes.dart';
import 'package:giftpost/phones.dart';

import 'network/network.dart';

class GiveGift extends StatefulWidget {
  const GiveGift({Key? key}) : super(key: key);

  @override
  State<GiveGift> createState() => _GiveGiftState();
}

class _GiveGiftState extends State<GiveGift> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getCategoryTab(),
        builder:
            (BuildContext context, AsyncSnapshot<List<TabModel>?> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else {
            if (snapshot.data != null) {
              return DefaultTabController(
                  length: snapshot.data!.length,
                  child: Scaffold(
                    appBar: PreferredSize(
                      preferredSize: const Size.fromHeight(130),
                      child: AppBar(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        leading: const Icon(
                          Icons.cancel_outlined,
                          size: 40,
                          color: Colors.grey,
                        ),
                        title: const Text(
                          'Gift Jenna Stynx',
                          style: TextStyle(color: Colors.grey),
                        ),
                        centerTitle: true,
                        actions: const [
                          Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: 40,
                          ),
                        ],
                        bottom: TabBar(
                            isScrollable: true,
                            onTap: (int index){

                            },
                            tabs: snapshot.data!
                                .map((e) => Tab(
                                      icon: Text(
                                        e.categoryName,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 10),
                                      ),
                                    ))
                                .toList()),
                      ),
                    ),
                    body: TabBarView(
                      children: snapshot.data!.map((e) => AllGifts()).toList(),
                    ),
                  ));
            } else {
              return Text('No interbet');
            }
          }
        });
  }
}
