import 'package:flutter/material.dart';

class contentstock extends StatefulWidget {
  const contentstock({Key? key}) : super(key: key);

  @override
  _contentstockState createState() => _contentstockState();
}

class _contentstockState extends State<contentstock> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Page Stock'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ชื่อสินค้า: '),
            Text('ถุงยางอนามัย'),
          ],
        ),
      ],
    );
  }
}
