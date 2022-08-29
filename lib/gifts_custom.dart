import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget BuildGifts(String giftname, int giftprice, String imagepath,
        BuildContext context, String categories) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
      child: GestureDetector(
        onTap: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Wrap(
                  children: [
                    CheckOut(
                        giftname: giftname,
                        giftprice: giftprice,
                        imagepath: imagepath, categories: categories,),
                  ],
                );
              });
        },
        child: Container(
          height: 150,
          width: 115,
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0),
                  blurRadius: 2.0),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  color: Colors.white,
                  height: 90,
                  width: 90,
                  margin: const EdgeInsets.all(6.0),
                  child: Center(
                    child: Image.asset(imagepath),
                  ),
                ),
              ),
              Text(giftname),
              Text(
                giftprice.toString(),
                style: const TextStyle(fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );

class CheckOut extends StatefulWidget {
  final String giftname;
  final int giftprice;
  final String imagepath;
  final String categories;

  const CheckOut(
      {Key? key,
      required this.giftname,
      required this.giftprice,
      required this.imagepath,
      required this.categories})
      : super(key: key);

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 10),
            height: 2,
            width: 40,
            color: Colors.black38,
          ),
        ),
        Container(
            height: 152,
            width: 388,
            color: const Color.fromARGB(1, 243, 244, 248)),
         Text( widget.giftname,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 19,
          ),
        ),
         Text(
          widget.categories,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Text(
              widget.giftprice.toString(),
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 28),
            ),
            Container(
                height: 40,
                width: 101,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [Text('-'), Text('1'), Text('+')]))
          ],
        ),
        const Divider(
          indent: 5,
          endIndent: 5,
        ),
        CheckboxListTile(
          title: const Text('Send anonymously'),
          autofocus: false,
          activeColor: Colors.green,
          checkColor: Colors.white,
          selected: _value,
          value: _value,
          onChanged: (bool? _value) {
            setState(() {
              _value = _value;
            });
          },
        ),
        Center(
          child: Container(
            height: 48,
            width: 388,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: const Center(
              child: Text('Gift 400'),
            ),
          ),
        )
      ],
    );
  }
}
