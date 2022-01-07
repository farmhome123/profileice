import 'package:flutter/material.dart';

class contentnews extends StatefulWidget {
  const contentnews({Key? key}) : super(key: key);

  @override
  _contentnewsState createState() => _contentnewsState();
}

class _contentnewsState extends State<contentnews> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Page News'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('หัวข้อข่าว: '),
            Text('ไอจังมีเด็กหลายคน'),
          ],
        ),
      ],
    );
  }
}
