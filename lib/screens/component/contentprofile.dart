import 'package:flutter/material.dart';

class contentprofile extends StatefulWidget {
  const contentprofile({Key? key}) : super(key: key);

  @override
  _contentprofileState createState() => _contentprofileState();
}

class _contentprofileState extends State<contentprofile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Page Profile'),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: '),
            Text('Jirawat'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Lastname: '),
            Text('Jommanee'),
          ],
        )
      ],
    );
  }
}
